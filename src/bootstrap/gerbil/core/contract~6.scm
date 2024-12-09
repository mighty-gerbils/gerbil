(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g84064_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84065_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84066_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84069_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84070_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84073_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84074_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84075_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84076_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84080_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84081_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84082_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84083_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84087_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46365%_)
        (let* ((_%__stx7849078491%_ _%stx46365%_)
               (_%g4637446583%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7849078491%_))))
          (let ((_%__kont7849378494%_
                 (lambda (_%L47489%_
                          _%L47491%_
                          _%L47492%_
                          _%L47493%_
                          _%L47494%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47494%_ (cons _%L47493%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47494%_
                                                       (cons _%L47492%_
                                                             (cons _%L47491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4753747540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4753847543%_)
                  (cons _%g4753747540%_ _%g4753847543%_))
                '()
                _%L47489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7849778498%_
                 (lambda (_%L47333%_
                          _%L47335%_
                          _%L47336%_
                          _%L47337%_
                          _%L47338%_
                          _%L47339%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47339%_ (cons _%L47338%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47339%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47336%_ (cons _%L47335%_ '())))
                           (foldr (lambda (_%g4738347386%_ _%g4738447389%_)
                                    (cons _%g4738347386%_ _%g4738447389%_))
                                  '()
                                  _%L47333%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7850178502%_
                 (lambda (_%L47150%_ _%L47152%_ _%L47153%_ _%L47154%_)
                   (let ((_%meta47191%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46365%_
                             _%L47152%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47191%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47154%_
                                           (cons _%L47153%_
                                                 (cons _%L47152%_ '())))
                                     (foldr (lambda (_%g4719547198%_
                                                     _%g4719647201%_)
                                              (cons _%g4719547198%_
                                                    _%g4719647201%_))
                                            '()
                                            _%L47150%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47191%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47154%_
                                               (cons _%L47153%_
                                                     (cons _%L47152%_ '())))
                                         (foldr (lambda (_%g4720547208%_
                                                         _%g4720647211%_)
                                                  (cons _%g4720547208%_
                                                        _%g4720647211%_))
                                                '()
                                                _%L47150%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46365%_
                              _%L47152%_
                              _%meta47191%_))))))
                (_%__kont7850578506%_
                 (lambda (_%L47028%_ _%L47030%_ _%L47031%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47031%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47030%_ '())))
                               (foldr (lambda (_%g4705447057%_ _%g4705547060%_)
                                        (cons _%g4705447057%_ _%g4705547060%_))
                                      '()
                                      _%L47028%_)))))
                (_%__kont7850978510%_
                 (lambda (_%L46886%_
                          _%L46888%_
                          _%L46889%_
                          _%L46890%_
                          _%L46891%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46891%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46890%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46891%_
                                                       (cons _%L46889%_
                                                             (cons _%L46888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4693246935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4693346938%_)
                  (cons _%g4693246935%_ _%g4693346938%_))
                '()
                _%L46886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7851378514%_
                 (lambda (_%L46744%_ _%L46746%_ _%L46747%_ _%L46748%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46748%_ _%L46747%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46746%_
                                                 (foldr (lambda (_%g4677046773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4677146776%_)
                  (cons _%g4677046773%_ _%g4677146776%_))
                '()
                _%L46744%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7851778518%_
                 (lambda (_%L46640%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4665846661%_ _%g4665946664%_)
                                        (cons _%g4665846661%_ _%g4665946664%_))
                                      '()
                                      _%L46640%_))))))
            (let* ((_%__match7882378824%_
                    (lambda (_%e4656346590%_
                             _%hd4656446594%_
                             _%tl4656546597%_
                             _%e4656646600%_
                             _%hd4656746604%_
                             _%tl4656846607%_
                             _%__splice7851978520%_
                             _%target4656946610%_
                             _%tl4657146613%_)
                      (letrec ((_%loop4657246616%_
                                (lambda (_%hd4657046620%_ _%body4657646623%_)
                                  (if (gx#stx-pair? _%hd4657046620%_)
                                      (let ((_%e4657346626%_
                                             (gx#syntax-e _%hd4657046620%_)))
                                        (let ((_%lp-tl4657546633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657346626%_)))
                                              (_%lp-hd4657446630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657346626%_))))
                                          (_%loop4657246616%_
                                           _%lp-tl4657546633%_
                                           (cons _%lp-hd4657446630%_
                                                 _%body4657646623%_))))
                                      (let ((_%body4657746636%_
                                             (reverse _%body4657646623%_)))
                                        (_%__kont7851778518%_
                                         _%body4657746636%_))))))
                        (_%loop4657246616%_ _%target4656946610%_ '()))))
                   (_%__match7880178802%_
                    (lambda (_%e4654146674%_
                             _%hd4654246678%_
                             _%tl4654346681%_
                             _%e4654446684%_
                             _%hd4654546688%_
                             _%tl4654646691%_
                             _%e4654746694%_
                             _%hd4654846698%_
                             _%tl4654946701%_
                             _%e4655046704%_
                             _%hd4655146708%_
                             _%tl4655246711%_
                             _%__splice7851578516%_
                             _%target4655346714%_
                             _%tl4655546717%_)
                      (letrec ((_%loop4655646720%_
                                (lambda (_%hd4655446724%_ _%body4656046727%_)
                                  (if (gx#stx-pair? _%hd4655446724%_)
                                      (let ((_%e4655746730%_
                                             (gx#syntax-e _%hd4655446724%_)))
                                        (let ((_%lp-tl4655946737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655746730%_)))
                                              (_%lp-hd4655846734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655746730%_))))
                                          (_%loop4655646720%_
                                           _%lp-tl4655946737%_
                                           (cons _%lp-hd4655846734%_
                                                 _%body4656046727%_))))
                                      (let ((_%body4656146740%_
                                             (reverse _%body4656046727%_)))
                                        (let ((_%L46744%_ _%body4656146740%_)
                                              (_%L46746%_ _%tl4654946701%_)
                                              (_%L46747%_ _%tl4655246711%_)
                                              (_%L46748%_ _%hd4655146708%_))
                                          (if (gx#identifier? _%L46748%_)
                                              (_%__kont7851378514%_
                                               _%L46744%_
                                               _%L46746%_
                                               _%L46747%_
                                               _%L46748%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_)))))))))
                        (_%loop4655646720%_ _%target4655346714%_ '()))))
                   (_%__match7878778788%_
                    (lambda (_%e4654146674%_
                             _%hd4654246678%_
                             _%tl4654346681%_
                             _%e4654446684%_
                             _%hd4654546688%_
                             _%tl4654646691%_
                             _%e4654746694%_
                             _%hd4654846698%_
                             _%tl4654946701%_)
                      (if (gx#stx-pair? _%hd4654846698%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4654846698%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (if (gx#stx-pair/null? _%tl4654646691%_)
                                  (let ((_%__splice7851578516%_
                                         (gx#syntax-split-splice
                                          _%tl4654646691%_
                                          '0)))
                                    (let ((_%tl4655546717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '1)))
                                          (_%target4655346714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4655546717%_)
                                          (_%__match7880178802%_
                                           _%e4654146674%_
                                           _%hd4654246678%_
                                           _%tl4654346681%_
                                           _%e4654446684%_
                                           _%hd4654546688%_
                                           _%tl4654646691%_
                                           _%e4654746694%_
                                           _%hd4654846698%_
                                           _%tl4654946701%_
                                           _%e4655046704%_
                                           _%hd4655146708%_
                                           _%tl4655246711%_
                                           _%__splice7851578516%_
                                           _%target4655346714%_
                                           _%tl4655546717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                   (_%__match7876978770%_
                    (lambda (_%e4650746786%_
                             _%hd4650846790%_
                             _%tl4650946793%_
                             _%e4651046796%_
                             _%hd4651146800%_
                             _%tl4651246803%_
                             _%e4651346806%_
                             _%hd4651446810%_
                             _%tl4651546813%_
                             _%e4651646816%_
                             _%hd4651746820%_
                             _%tl4651846823%_
                             _%e4651946826%_
                             _%hd4652046830%_
                             _%tl4652146833%_
                             _%e4652246836%_
                             _%hd4652346840%_
                             _%tl4652446843%_
                             _%e4652546846%_
                             _%hd4652646850%_
                             _%tl4652746853%_
                             _%__splice7851178512%_
                             _%target4652846856%_
                             _%tl4653046859%_)
                      (letrec ((_%loop4653146862%_
                                (lambda (_%hd4652946866%_ _%body4653546869%_)
                                  (if (gx#stx-pair? _%hd4652946866%_)
                                      (let ((_%e4653246872%_
                                             (gx#syntax-e _%hd4652946866%_)))
                                        (let ((_%lp-tl4653446879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4653246872%_)))
                                              (_%lp-hd4653346876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4653246872%_))))
                                          (_%loop4653146862%_
                                           _%lp-tl4653446879%_
                                           (cons _%lp-hd4653346876%_
                                                 _%body4653546869%_))))
                                      (let ((_%body4653646882%_
                                             (reverse _%body4653546869%_)))
                                        (let ((_%L46886%_ _%body4653646882%_)
                                              (_%L46888%_ _%hd4652646850%_)
                                              (_%L46889%_ _%hd4652346840%_)
                                              (_%L46890%_ _%hd4652046830%_)
                                              (_%L46891%_ _%hd4651446810%_))
                                          (if (and (gx#identifier? _%L46891%_)
                                                   (gx#identifier? _%L46888%_)
                                                   (gx#identifier? _%L46889%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46889%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46889%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46889%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46889%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7850978510%_
                                               _%L46886%_
                                               _%L46888%_
                                               _%L46889%_
                                               _%L46890%_
                                               _%L46891%_)
                                              (_%__match7878778788%_
                                               _%e4650746786%_
                                               _%hd4650846790%_
                                               _%tl4650946793%_
                                               _%e4651046796%_
                                               _%hd4651146800%_
                                               _%tl4651246803%_
                                               _%e4651346806%_
                                               _%hd4651446810%_
                                               _%tl4651546813%_))))))))
                        (_%loop4653146862%_ _%target4652846856%_ '()))))
                   (_%__match7871378714%_
                    (lambda (_%e4647846948%_
                             _%hd4647946952%_
                             _%tl4648046955%_
                             _%e4648146958%_
                             _%hd4648246962%_
                             _%tl4648346965%_
                             _%e4648446968%_
                             _%hd4648546972%_
                             _%tl4648646975%_
                             _%e4648746978%_
                             _%hd4648846982%_
                             _%tl4648946985%_
                             _%e4649046988%_
                             _%hd4649146992%_
                             _%tl4649246995%_
                             _%__splice7850778508%_
                             _%target4649346998%_
                             _%tl4649547001%_)
                      (letrec ((_%loop4649647004%_
                                (lambda (_%hd4649447008%_ _%body4650047011%_)
                                  (if (gx#stx-pair? _%hd4649447008%_)
                                      (let ((_%e4649747014%_
                                             (gx#syntax-e _%hd4649447008%_)))
                                        (let ((_%lp-tl4649947021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649747014%_)))
                                              (_%lp-hd4649847018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649747014%_))))
                                          (_%loop4649647004%_
                                           _%lp-tl4649947021%_
                                           (cons _%lp-hd4649847018%_
                                                 _%body4650047011%_))))
                                      (let ((_%body4650147024%_
                                             (reverse _%body4650047011%_)))
                                        (let ((_%L47028%_ _%body4650147024%_)
                                              (_%L47030%_ _%hd4649146992%_)
                                              (_%L47031%_ _%hd4648546972%_))
                                          (if (gx#identifier? _%L47031%_)
                                              (_%__kont7850578506%_
                                               _%L47028%_
                                               _%L47030%_
                                               _%L47031%_)
                                              (_%__match7878778788%_
                                               _%e4647846948%_
                                               _%hd4647946952%_
                                               _%tl4648046955%_
                                               _%e4648146958%_
                                               _%hd4648246962%_
                                               _%tl4648346965%_
                                               _%e4648446968%_
                                               _%hd4648546972%_
                                               _%tl4648646975%_))))))))
                        (_%loop4649647004%_ _%target4649346998%_ '()))))
                   (_%__match7869378694%_
                    (lambda (_%e4647846948%_
                             _%hd4647946952%_
                             _%tl4648046955%_
                             _%e4648146958%_
                             _%hd4648246962%_
                             _%tl4648346965%_
                             _%e4648446968%_
                             _%hd4648546972%_
                             _%tl4648646975%_
                             _%e4648746978%_
                             _%hd4648846982%_
                             _%tl4648946985%_)
                      (if (gx#identifier? _%hd4648846982%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84064_|
                               _%hd4648846982%_)
                              (if (gx#stx-pair? _%tl4648946985%_)
                                  (let ((_%e4649046988%_
                                         (gx#syntax-e _%tl4648946985%_)))
                                    (let ((_%tl4649246995%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4649046988%_)))
                                          (_%hd4649146992%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4649046988%_))))
                                      (if (gx#stx-null? _%tl4649246995%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4648346965%_)
                                              (let ((_%__splice7850778508%_
                                                     (gx#syntax-split-splice
                                                      _%tl4648346965%_
                                                      '0)))
                                                (let ((_%tl4649547001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7850778508%_
                                                          '1)))
                                                      (_%target4649346998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7850778508%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4649547001%_)
                                                      (_%__match7871378714%_
                                                       _%e4647846948%_
                                                       _%hd4647946952%_
                                                       _%tl4648046955%_
                                                       _%e4648146958%_
                                                       _%hd4648246962%_
                                                       _%tl4648346965%_
                                                       _%e4648446968%_
                                                       _%hd4648546972%_
                                                       _%tl4648646975%_
                                                       _%e4648746978%_
                                                       _%hd4648846982%_
                                                       _%tl4648946985%_
                                                       _%e4649046988%_
                                                       _%hd4649146992%_
                                                       _%tl4649246995%_
                                                       _%__splice7850778508%_
                                                       _%target4649346998%_
                                                       _%tl4649547001%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4648546972%_)
                                                          (let ((_%e4655046704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4648546972%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4648546972%_)
                                                  (let ((_%e4655046704%_
                                                         (gx#syntax-e
                                                          _%hd4648546972%_)))
                                                    (let ((_%tl4655246711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655046704%_)))
                                                          (_%hd4655146708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655046704%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4637446583%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))
                                          (if (gx#stx-pair? _%tl4649246995%_)
                                              (let ((_%e4652246836%_
                                                     (gx#syntax-e
                                                      _%tl4649246995%_)))
                                                (let ((_%tl4652446843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4652246836%_)))
                                                      (_%hd4652346840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4652246836%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4652446843%_)
                                                      (let ((_%e4652546846%_
                                                             (gx#syntax-e
                                                              _%tl4652446843%_)))
                                                        (let ((_%tl4652746853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4652546846%_)))
                      (_%hd4652646850%_
                       (let () (declare (not safe)) (##car _%e4652546846%_))))
                  (if (gx#stx-null? _%tl4652746853%_)
                      (if (gx#stx-pair/null? _%tl4648346965%_)
                          (let ((_%__splice7851178512%_
                                 (gx#syntax-split-splice _%tl4648346965%_ '0)))
                            (let ((_%tl4653046859%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851178512%_ '1)))
                                  (_%target4652846856%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851178512%_
                                      '0))))
                              (if (gx#stx-null? _%tl4653046859%_)
                                  (_%__match7876978770%_
                                   _%e4647846948%_
                                   _%hd4647946952%_
                                   _%tl4648046955%_
                                   _%e4648146958%_
                                   _%hd4648246962%_
                                   _%tl4648346965%_
                                   _%e4648446968%_
                                   _%hd4648546972%_
                                   _%tl4648646975%_
                                   _%e4648746978%_
                                   _%hd4648846982%_
                                   _%tl4648946985%_
                                   _%e4649046988%_
                                   _%hd4649146992%_
                                   _%tl4649246995%_
                                   _%e4652246836%_
                                   _%hd4652346840%_
                                   _%tl4652446843%_
                                   _%e4652546846%_
                                   _%hd4652646850%_
                                   _%tl4652746853%_
                                   _%__splice7851178512%_
                                   _%target4652846856%_
                                   _%tl4653046859%_)
                                  (if (gx#stx-pair? _%hd4648546972%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4648546972%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))
                          (if (gx#stx-pair? _%hd4648546972%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4648546972%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                      (if (gx#stx-pair? _%hd4648546972%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4648546972%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (if (gx#stx-pair/null? _%tl4648346965%_)
                                  (let ((_%__splice7851578516%_
                                         (gx#syntax-split-splice
                                          _%tl4648346965%_
                                          '0)))
                                    (let ((_%tl4655546717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '1)))
                                          (_%target4655346714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4655546717%_)
                                          (_%__match7880178802%_
                                           _%e4647846948%_
                                           _%hd4647946952%_
                                           _%tl4648046955%_
                                           _%e4648146958%_
                                           _%hd4648246962%_
                                           _%tl4648346965%_
                                           _%e4648446968%_
                                           _%hd4648546972%_
                                           _%tl4648646975%_
                                           _%e4655046704%_
                                           _%hd4655146708%_
                                           _%tl4655246711%_
                                           _%__splice7851578516%_
                                           _%target4655346714%_
                                           _%tl4655546717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_))))))
              (if (gx#stx-pair? _%hd4648546972%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4648546972%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4648346965%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4648346965%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4647846948%_
                                   _%hd4647946952%_
                                   _%tl4648046955%_
                                   _%e4648146958%_
                                   _%hd4648246962%_
                                   _%tl4648346965%_
                                   _%e4648446968%_
                                   _%hd4648546972%_
                                   _%tl4648646975%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4648546972%_)
                                                  (let ((_%e4655046704%_
                                                         (gx#syntax-e
                                                          _%hd4648546972%_)))
                                                    (let ((_%tl4655246711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655046704%_)))
                                                          (_%hd4655146708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655046704%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4648346965%_)
                                                          (let ((_%__splice7851578516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4648346965%_ '0)))
                    (let ((_%tl4655546717%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '1)))
                          (_%target4655346714%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '0))))
                      (if (gx#stx-null? _%tl4655546717%_)
                          (_%__match7880178802%_
                           _%e4647846948%_
                           _%hd4647946952%_
                           _%tl4648046955%_
                           _%e4648146958%_
                           _%hd4648246962%_
                           _%tl4648346965%_
                           _%e4648446968%_
                           _%hd4648546972%_
                           _%tl4648646975%_
                           _%e4655046704%_
                           _%hd4655146708%_
                           _%tl4655246711%_
                           _%__splice7851578516%_
                           _%target4655346714%_
                           _%tl4655546717%_)
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))))
                                  (if (gx#stx-pair? _%hd4648546972%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4648546972%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4648346965%_)
                                              (let ((_%__splice7851578516%_
                                                     (gx#syntax-split-splice
                                                      _%tl4648346965%_
                                                      '0)))
                                                (let ((_%tl4655546717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '1)))
                                                      (_%target4655346714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4655546717%_)
                                                      (_%__match7880178802%_
                                                       _%e4647846948%_
                                                       _%hd4647946952%_
                                                       _%tl4648046955%_
                                                       _%e4648146958%_
                                                       _%hd4648246962%_
                                                       _%tl4648346965%_
                                                       _%e4648446968%_
                                                       _%hd4648546972%_
                                                       _%tl4648646975%_
                                                       _%e4655046704%_
                                                       _%hd4655146708%_
                                                       _%tl4655246711%_
                                                       _%__splice7851578516%_
                                                       _%target4655346714%_
                                                       _%tl4655546717%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4637446583%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                              (if (gx#stx-pair? _%hd4648546972%_)
                                  (let ((_%e4655046704%_
                                         (gx#syntax-e _%hd4648546972%_)))
                                    (let ((_%tl4655246711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655046704%_)))
                                          (_%hd4655146708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655046704%_))))
                                      (if (gx#stx-pair/null? _%tl4648346965%_)
                                          (let ((_%__splice7851578516%_
                                                 (gx#syntax-split-splice
                                                  _%tl4648346965%_
                                                  '0)))
                                            (let ((_%tl4655546717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7851578516%_
                                                      '1)))
                                                  (_%target4655346714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7851578516%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4655546717%_)
                                                  (_%__match7880178802%_
                                                   _%e4647846948%_
                                                   _%hd4647946952%_
                                                   _%tl4648046955%_
                                                   _%e4648146958%_
                                                   _%hd4648246962%_
                                                   _%tl4648346965%_
                                                   _%e4648446968%_
                                                   _%hd4648546972%_
                                                   _%tl4648646975%_
                                                   _%e4655046704%_
                                                   _%hd4655146708%_
                                                   _%tl4655246711%_
                                                   _%__splice7851578516%_
                                                   _%target4655346714%_
                                                   _%tl4655546717%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                          (if (gx#stx-pair? _%hd4648546972%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4648546972%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (if (gx#stx-pair/null? _%tl4648346965%_)
                                      (let ((_%__splice7851578516%_
                                             (gx#syntax-split-splice
                                              _%tl4648346965%_
                                              '0)))
                                        (let ((_%tl4655546717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7851578516%_
                                                  '1)))
                                              (_%target4655346714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7851578516%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4655546717%_)
                                              (_%__match7880178802%_
                                               _%e4647846948%_
                                               _%hd4647946952%_
                                               _%tl4648046955%_
                                               _%e4648146958%_
                                               _%hd4648246962%_
                                               _%tl4648346965%_
                                               _%e4648446968%_
                                               _%hd4648546972%_
                                               _%tl4648646975%_
                                               _%e4655046704%_
                                               _%hd4655146708%_
                                               _%tl4655246711%_
                                               _%__splice7851578516%_
                                               _%target4655346714%_
                                               _%tl4655546717%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_))))))
                   (_%__match7866978670%_
                    (lambda (_%e4645147070%_
                             _%hd4645247074%_
                             _%tl4645347077%_
                             _%e4645447080%_
                             _%hd4645547084%_
                             _%tl4645647087%_
                             _%e4645747090%_
                             _%hd4645847094%_
                             _%tl4645947097%_
                             _%e4646047100%_
                             _%hd4646147104%_
                             _%tl4646247107%_
                             _%e4646347110%_
                             _%hd4646447114%_
                             _%tl4646547117%_
                             _%__splice7850378504%_
                             _%target4646647120%_
                             _%tl4646847123%_)
                      (letrec ((_%loop4646947126%_
                                (lambda (_%hd4646747130%_ _%body4647347133%_)
                                  (if (gx#stx-pair? _%hd4646747130%_)
                                      (let ((_%e4647047136%_
                                             (gx#syntax-e _%hd4646747130%_)))
                                        (let ((_%lp-tl4647247143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4647047136%_)))
                                              (_%lp-hd4647147140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4647047136%_))))
                                          (_%loop4646947126%_
                                           _%lp-tl4647247143%_
                                           (cons _%lp-hd4647147140%_
                                                 _%body4647347133%_))))
                                      (let ((_%body4647447146%_
                                             (reverse _%body4647347133%_)))
                                        (let ((_%L47150%_ _%body4647447146%_)
                                              (_%L47152%_ _%hd4646447114%_)
                                              (_%L47153%_ _%hd4646147104%_)
                                              (_%L47154%_ _%hd4645847094%_))
                                          (if (and (gx#identifier? _%L47154%_)
                                                   (gx#identifier? _%L47152%_)
                                                   (gx#identifier? _%L47153%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47153%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47153%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47153%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47153%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7850178502%_
                                               _%L47150%_
                                               _%L47152%_
                                               _%L47153%_
                                               _%L47154%_)
                                              (_%__match7869378694%_
                                               _%e4645147070%_
                                               _%hd4645247074%_
                                               _%tl4645347077%_
                                               _%e4645447080%_
                                               _%hd4645547084%_
                                               _%tl4645647087%_
                                               _%e4645747090%_
                                               _%hd4645847094%_
                                               _%tl4645947097%_
                                               _%e4646047100%_
                                               _%hd4646147104%_
                                               _%tl4646247107%_))))))))
                        (_%loop4646947126%_ _%target4646647120%_ '()))))
                   (_%__match7862978630%_
                    (lambda (_%e4641447223%_
                             _%hd4641547227%_
                             _%tl4641647230%_
                             _%e4641747233%_
                             _%hd4641847237%_
                             _%tl4641947240%_
                             _%e4642047243%_
                             _%hd4642147247%_
                             _%tl4642247250%_
                             _%e4642347253%_
                             _%hd4642447257%_
                             _%tl4642547260%_
                             _%e4642647263%_
                             _%hd4642747267%_
                             _%tl4642847270%_
                             _%e4642947273%_
                             _%hd4643047277%_
                             _%tl4643147280%_
                             _%e4643247283%_
                             _%hd4643347287%_
                             _%tl4643447290%_
                             _%e4643547293%_
                             _%hd4643647297%_
                             _%tl4643747300%_
                             _%__splice7849978500%_
                             _%target4643847303%_
                             _%tl4644047306%_)
                      (letrec ((_%loop4644147309%_
                                (lambda (_%hd4643947313%_ _%body4644547316%_)
                                  (if (gx#stx-pair? _%hd4643947313%_)
                                      (let ((_%e4644247319%_
                                             (gx#syntax-e _%hd4643947313%_)))
                                        (let ((_%lp-tl4644447326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4644247319%_)))
                                              (_%lp-hd4644347323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4644247319%_))))
                                          (_%loop4644147309%_
                                           _%lp-tl4644447326%_
                                           (cons _%lp-hd4644347323%_
                                                 _%body4644547316%_))))
                                      (let ((_%body4644647329%_
                                             (reverse _%body4644547316%_)))
                                        (let ((_%L47333%_ _%body4644647329%_)
                                              (_%L47335%_ _%hd4643647297%_)
                                              (_%L47336%_ _%hd4643347287%_)
                                              (_%L47337%_ _%hd4643047277%_)
                                              (_%L47338%_ _%hd4642447257%_)
                                              (_%L47339%_ _%hd4642147247%_))
                                          (if (and (gx#identifier? _%L47339%_)
                                                   (gx#identifier? _%L47335%_)
                                                   (gx#identifier? _%L47336%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47336%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47336%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47336%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47336%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7849778498%_
                                               _%L47333%_
                                               _%L47335%_
                                               _%L47336%_
                                               _%L47337%_
                                               _%L47338%_
                                               _%L47339%_)
                                              (_%__match7869378694%_
                                               _%e4641447223%_
                                               _%hd4641547227%_
                                               _%tl4641647230%_
                                               _%e4641747233%_
                                               _%hd4641847237%_
                                               _%tl4641947240%_
                                               _%e4642047243%_
                                               _%hd4642147247%_
                                               _%tl4642247250%_
                                               _%e4642347253%_
                                               _%hd4642447257%_
                                               _%tl4642547260%_))))))))
                        (_%loop4644147309%_ _%target4643847303%_ '()))))
                   (_%__match7859778598%_
                    (lambda (_%e4641447223%_
                             _%hd4641547227%_
                             _%tl4641647230%_
                             _%e4641747233%_
                             _%hd4641847237%_
                             _%tl4641947240%_
                             _%e4642047243%_
                             _%hd4642147247%_
                             _%tl4642247250%_
                             _%e4642347253%_
                             _%hd4642447257%_
                             _%tl4642547260%_
                             _%e4642647263%_
                             _%hd4642747267%_
                             _%tl4642847270%_)
                      (if (gx#identifier? _%hd4642747267%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84065_|
                               _%hd4642747267%_)
                              (if (gx#stx-pair? _%tl4642847270%_)
                                  (let ((_%e4642947273%_
                                         (gx#syntax-e _%tl4642847270%_)))
                                    (let ((_%tl4643147280%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4642947273%_)))
                                          (_%hd4643047277%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4642947273%_))))
                                      (if (gx#stx-pair? _%tl4643147280%_)
                                          (let ((_%e4643247283%_
                                                 (gx#syntax-e
                                                  _%tl4643147280%_)))
                                            (let ((_%tl4643447290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4643247283%_)))
                                                  (_%hd4643347287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4643247283%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4643447290%_)
                                                  (let ((_%e4643547293%_
                                                         (gx#syntax-e
                                                          _%tl4643447290%_)))
                                                    (let ((_%tl4643747300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4643547293%_)))
                                                          (_%hd4643647297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4643547293%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4643747300%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4641947240%_)
                                                              (let ((_%__splice7849978500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4641947240%_ '0)))
                        (let ((_%tl4644047306%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7849978500%_ '1)))
                              (_%target4643847303%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7849978500%_ '0))))
                          (if (gx#stx-null? _%tl4644047306%_)
                              (_%__match7862978630%_
                               _%e4641447223%_
                               _%hd4641547227%_
                               _%tl4641647230%_
                               _%e4641747233%_
                               _%hd4641847237%_
                               _%tl4641947240%_
                               _%e4642047243%_
                               _%hd4642147247%_
                               _%tl4642247250%_
                               _%e4642347253%_
                               _%hd4642447257%_
                               _%tl4642547260%_
                               _%e4642647263%_
                               _%hd4642747267%_
                               _%tl4642847270%_
                               _%e4642947273%_
                               _%hd4643047277%_
                               _%tl4643147280%_
                               _%e4643247283%_
                               _%hd4643347287%_
                               _%tl4643447290%_
                               _%e4643547293%_
                               _%hd4643647297%_
                               _%tl4643747300%_
                               _%__splice7849978500%_
                               _%target4643847303%_
                               _%tl4644047306%_)
                              (if (gx#stx-pair? _%hd4642147247%_)
                                  (let ((_%e4655046704%_
                                         (gx#syntax-e _%hd4642147247%_)))
                                    (let ((_%tl4655246711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655046704%_)))
                                          (_%hd4655146708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655046704%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))))
                      (if (gx#stx-pair? _%hd4642147247%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4642147247%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                  (if (gx#stx-pair? _%hd4642147247%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4642147247%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (if (gx#stx-pair/null? _%tl4641947240%_)
                              (let ((_%__splice7851578516%_
                                     (gx#syntax-split-splice
                                      _%tl4641947240%_
                                      '0)))
                                (let ((_%tl4655546717%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '1)))
                                      (_%target4655346714%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4655546717%_)
                                      (_%__match7880178802%_
                                       _%e4641447223%_
                                       _%hd4641547227%_
                                       _%tl4641647230%_
                                       _%e4641747233%_
                                       _%hd4641847237%_
                                       _%tl4641947240%_
                                       _%e4642047243%_
                                       _%hd4642147247%_
                                       _%tl4642247250%_
                                       _%e4655046704%_
                                       _%hd4655146708%_
                                       _%tl4655246711%_
                                       _%__splice7851578516%_
                                       _%target4655346714%_
                                       _%tl4655546717%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4642447257%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84064_|
                                                           _%hd4642447257%_)
                                                          (if (gx#stx-null?
                                                               _%tl4643447290%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4641947240%_)
                          (let ((_%__splice7851178512%_
                                 (gx#syntax-split-splice _%tl4641947240%_ '0)))
                            (let ((_%tl4653046859%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851178512%_ '1)))
                                  (_%target4652846856%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851178512%_
                                      '0))))
                              (if (gx#stx-null? _%tl4653046859%_)
                                  (_%__match7876978770%_
                                   _%e4641447223%_
                                   _%hd4641547227%_
                                   _%tl4641647230%_
                                   _%e4641747233%_
                                   _%hd4641847237%_
                                   _%tl4641947240%_
                                   _%e4642047243%_
                                   _%hd4642147247%_
                                   _%tl4642247250%_
                                   _%e4642347253%_
                                   _%hd4642447257%_
                                   _%tl4642547260%_
                                   _%e4642647263%_
                                   _%hd4642747267%_
                                   _%tl4642847270%_
                                   _%e4642947273%_
                                   _%hd4643047277%_
                                   _%tl4643147280%_
                                   _%e4643247283%_
                                   _%hd4643347287%_
                                   _%tl4643447290%_
                                   _%__splice7851178512%_
                                   _%target4652846856%_
                                   _%tl4653046859%_)
                                  (if (gx#stx-pair? _%hd4642147247%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4642147247%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))
                          (if (gx#stx-pair? _%hd4642147247%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4642147247%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                      (if (gx#stx-pair? _%hd4642147247%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4642147247%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (if (gx#stx-pair/null? _%tl4641947240%_)
                                  (let ((_%__splice7851578516%_
                                         (gx#syntax-split-splice
                                          _%tl4641947240%_
                                          '0)))
                                    (let ((_%tl4655546717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '1)))
                                          (_%target4655346714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4655546717%_)
                                          (_%__match7880178802%_
                                           _%e4641447223%_
                                           _%hd4641547227%_
                                           _%tl4641647230%_
                                           _%e4641747233%_
                                           _%hd4641847237%_
                                           _%tl4641947240%_
                                           _%e4642047243%_
                                           _%hd4642147247%_
                                           _%tl4642247250%_
                                           _%e4655046704%_
                                           _%hd4655146708%_
                                           _%tl4655246711%_
                                           _%__splice7851578516%_
                                           _%target4655346714%_
                                           _%tl4655546717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                  (if (gx#stx-pair? _%hd4642147247%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4642147247%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (if (gx#stx-pair/null? _%tl4641947240%_)
                              (let ((_%__splice7851578516%_
                                     (gx#syntax-split-splice
                                      _%tl4641947240%_
                                      '0)))
                                (let ((_%tl4655546717%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '1)))
                                      (_%target4655346714%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4655546717%_)
                                      (_%__match7880178802%_
                                       _%e4641447223%_
                                       _%hd4641547227%_
                                       _%tl4641647230%_
                                       _%e4641747233%_
                                       _%hd4641847237%_
                                       _%tl4641947240%_
                                       _%e4642047243%_
                                       _%hd4642147247%_
                                       _%tl4642247250%_
                                       _%e4655046704%_
                                       _%hd4655146708%_
                                       _%tl4655246711%_
                                       _%__splice7851578516%_
                                       _%target4655346714%_
                                       _%tl4655546717%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
              (if (gx#stx-pair? _%hd4642147247%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4642147247%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4641947240%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4641947240%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4641447223%_
                                   _%hd4641547227%_
                                   _%tl4641647230%_
                                   _%e4641747233%_
                                   _%hd4641847237%_
                                   _%tl4641947240%_
                                   _%e4642047243%_
                                   _%hd4642147247%_
                                   _%tl4642247250%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4642147247%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4642147247%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947240%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947240%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4641447223%_
                       _%hd4641547227%_
                       _%tl4641647230%_
                       _%e4641747233%_
                       _%hd4641847237%_
                       _%tl4641947240%_
                       _%e4642047243%_
                       _%hd4642147247%_
                       _%tl4642247250%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))))
                                  (if (gx#stx-null? _%tl4642847270%_)
                                      (if (gx#stx-pair/null? _%tl4641947240%_)
                                          (let ((_%__splice7850378504%_
                                                 (gx#syntax-split-splice
                                                  _%tl4641947240%_
                                                  '0)))
                                            (let ((_%tl4646847123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7850378504%_
                                                      '1)))
                                                  (_%target4646647120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7850378504%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4646847123%_)
                                                  (_%__match7866978670%_
                                                   _%e4641447223%_
                                                   _%hd4641547227%_
                                                   _%tl4641647230%_
                                                   _%e4641747233%_
                                                   _%hd4641847237%_
                                                   _%tl4641947240%_
                                                   _%e4642047243%_
                                                   _%hd4642147247%_
                                                   _%tl4642247250%_
                                                   _%e4642347253%_
                                                   _%hd4642447257%_
                                                   _%tl4642547260%_
                                                   _%e4642647263%_
                                                   _%hd4642747267%_
                                                   _%tl4642847270%_
                                                   _%__splice7850378504%_
                                                   _%target4646647120%_
                                                   _%tl4646847123%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4642147247%_)
                                                      (let ((_%e4655046704%_
                                                             (gx#syntax-e
                                                              _%hd4642147247%_)))
                                                        (let ((_%tl4655246711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655046704%_)))
                      (_%hd4655146708%_
                       (let () (declare (not safe)) (##car _%e4655046704%_))))
                  (let () (declare (not safe)) (_%g4637446583%_))))
              (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4642147247%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4642147247%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                      (if (gx#stx-pair? _%hd4642147247%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4642147247%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947240%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947240%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4641447223%_
                                                           _%hd4641547227%_
                                                           _%tl4641647230%_
                                                           _%e4641747233%_
                                                           _%hd4641847237%_
                                                           _%tl4641947240%_
                                                           _%e4642047243%_
                                                           _%hd4642147247%_
                                                           _%tl4642247250%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                              (if (gx#stx-null? _%tl4642847270%_)
                                  (if (gx#stx-pair/null? _%tl4641947240%_)
                                      (let ((_%__splice7850378504%_
                                             (gx#syntax-split-splice
                                              _%tl4641947240%_
                                              '0)))
                                        (let ((_%tl4646847123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7850378504%_
                                                  '1)))
                                              (_%target4646647120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7850378504%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4646847123%_)
                                              (_%__match7866978670%_
                                               _%e4641447223%_
                                               _%hd4641547227%_
                                               _%tl4641647230%_
                                               _%e4641747233%_
                                               _%hd4641847237%_
                                               _%tl4641947240%_
                                               _%e4642047243%_
                                               _%hd4642147247%_
                                               _%tl4642247250%_
                                               _%e4642347253%_
                                               _%hd4642447257%_
                                               _%tl4642547260%_
                                               _%e4642647263%_
                                               _%hd4642747267%_
                                               _%tl4642847270%_
                                               _%__splice7850378504%_
                                               _%target4646647120%_
                                               _%tl4646847123%_)
                                              (if (gx#stx-pair?
                                                   _%hd4642147247%_)
                                                  (let ((_%e4655046704%_
                                                         (gx#syntax-e
                                                          _%hd4642147247%_)))
                                                    (let ((_%tl4655246711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655046704%_)))
                                                          (_%hd4655146708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655046704%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4637446583%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))))
                                      (if (gx#stx-pair? _%hd4642147247%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4642147247%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                  (if (gx#identifier? _%hd4642447257%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84064_|
                                           _%hd4642447257%_)
                                          (if (gx#stx-pair? _%tl4642847270%_)
                                              (let ((_%e4652246836%_
                                                     (gx#syntax-e
                                                      _%tl4642847270%_)))
                                                (let ((_%tl4652446843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4652246836%_)))
                                                      (_%hd4652346840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4652246836%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4652446843%_)
                                                      (let ((_%e4652546846%_
                                                             (gx#syntax-e
                                                              _%tl4652446843%_)))
                                                        (let ((_%tl4652746853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4652546846%_)))
                      (_%hd4652646850%_
                       (let () (declare (not safe)) (##car _%e4652546846%_))))
                  (if (gx#stx-null? _%tl4652746853%_)
                      (if (gx#stx-pair/null? _%tl4641947240%_)
                          (let ((_%__splice7851178512%_
                                 (gx#syntax-split-splice _%tl4641947240%_ '0)))
                            (let ((_%tl4653046859%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851178512%_ '1)))
                                  (_%target4652846856%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851178512%_
                                      '0))))
                              (if (gx#stx-null? _%tl4653046859%_)
                                  (_%__match7876978770%_
                                   _%e4641447223%_
                                   _%hd4641547227%_
                                   _%tl4641647230%_
                                   _%e4641747233%_
                                   _%hd4641847237%_
                                   _%tl4641947240%_
                                   _%e4642047243%_
                                   _%hd4642147247%_
                                   _%tl4642247250%_
                                   _%e4642347253%_
                                   _%hd4642447257%_
                                   _%tl4642547260%_
                                   _%e4642647263%_
                                   _%hd4642747267%_
                                   _%tl4642847270%_
                                   _%e4652246836%_
                                   _%hd4652346840%_
                                   _%tl4652446843%_
                                   _%e4652546846%_
                                   _%hd4652646850%_
                                   _%tl4652746853%_
                                   _%__splice7851178512%_
                                   _%target4652846856%_
                                   _%tl4653046859%_)
                                  (if (gx#stx-pair? _%hd4642147247%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4642147247%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))
                          (if (gx#stx-pair? _%hd4642147247%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4642147247%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                      (if (gx#stx-pair? _%hd4642147247%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4642147247%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (if (gx#stx-pair/null? _%tl4641947240%_)
                                  (let ((_%__splice7851578516%_
                                         (gx#syntax-split-splice
                                          _%tl4641947240%_
                                          '0)))
                                    (let ((_%tl4655546717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '1)))
                                          (_%target4655346714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4655546717%_)
                                          (_%__match7880178802%_
                                           _%e4641447223%_
                                           _%hd4641547227%_
                                           _%tl4641647230%_
                                           _%e4641747233%_
                                           _%hd4641847237%_
                                           _%tl4641947240%_
                                           _%e4642047243%_
                                           _%hd4642147247%_
                                           _%tl4642247250%_
                                           _%e4655046704%_
                                           _%hd4655146708%_
                                           _%tl4655246711%_
                                           _%__splice7851578516%_
                                           _%target4655346714%_
                                           _%tl4655546717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_))))))
              (if (gx#stx-pair? _%hd4642147247%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4642147247%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4641947240%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4641947240%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4641447223%_
                                   _%hd4641547227%_
                                   _%tl4641647230%_
                                   _%e4641747233%_
                                   _%hd4641847237%_
                                   _%tl4641947240%_
                                   _%e4642047243%_
                                   _%hd4642147247%_
                                   _%tl4642247250%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4642147247%_)
                                                  (let ((_%e4655046704%_
                                                         (gx#syntax-e
                                                          _%hd4642147247%_)))
                                                    (let ((_%tl4655246711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655046704%_)))
                                                          (_%hd4655146708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655046704%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641947240%_)
                                                          (let ((_%__splice7851578516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641947240%_ '0)))
                    (let ((_%tl4655546717%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '1)))
                          (_%target4655346714%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '0))))
                      (if (gx#stx-null? _%tl4655546717%_)
                          (_%__match7880178802%_
                           _%e4641447223%_
                           _%hd4641547227%_
                           _%tl4641647230%_
                           _%e4641747233%_
                           _%hd4641847237%_
                           _%tl4641947240%_
                           _%e4642047243%_
                           _%hd4642147247%_
                           _%tl4642247250%_
                           _%e4655046704%_
                           _%hd4655146708%_
                           _%tl4655246711%_
                           _%__splice7851578516%_
                           _%target4655346714%_
                           _%tl4655546717%_)
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))
                                          (if (gx#stx-pair? _%hd4642147247%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4642147247%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947240%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947240%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4641447223%_
                       _%hd4641547227%_
                       _%tl4641647230%_
                       _%e4641747233%_
                       _%hd4641847237%_
                       _%tl4641947240%_
                       _%e4642047243%_
                       _%hd4642147247%_
                       _%tl4642247250%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                      (if (gx#stx-pair? _%hd4642147247%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4642147247%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947240%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947240%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4641447223%_
                                                           _%hd4641547227%_
                                                           _%tl4641647230%_
                                                           _%e4641747233%_
                                                           _%hd4641847237%_
                                                           _%tl4641947240%_
                                                           _%e4642047243%_
                                                           _%hd4642147247%_
                                                           _%tl4642247250%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))))
                          (if (gx#stx-null? _%tl4642847270%_)
                              (if (gx#stx-pair/null? _%tl4641947240%_)
                                  (let ((_%__splice7850378504%_
                                         (gx#syntax-split-splice
                                          _%tl4641947240%_
                                          '0)))
                                    (let ((_%tl4646847123%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7850378504%_
                                              '1)))
                                          (_%target4646647120%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7850378504%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4646847123%_)
                                          (_%__match7866978670%_
                                           _%e4641447223%_
                                           _%hd4641547227%_
                                           _%tl4641647230%_
                                           _%e4641747233%_
                                           _%hd4641847237%_
                                           _%tl4641947240%_
                                           _%e4642047243%_
                                           _%hd4642147247%_
                                           _%tl4642247250%_
                                           _%e4642347253%_
                                           _%hd4642447257%_
                                           _%tl4642547260%_
                                           _%e4642647263%_
                                           _%hd4642747267%_
                                           _%tl4642847270%_
                                           _%__splice7850378504%_
                                           _%target4646647120%_
                                           _%tl4646847123%_)
                                          (if (gx#stx-pair? _%hd4642147247%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4642147247%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))))
                                  (if (gx#stx-pair? _%hd4642147247%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4642147247%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                              (if (gx#identifier? _%hd4642447257%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84064_|
                                       _%hd4642447257%_)
                                      (if (gx#stx-pair? _%tl4642847270%_)
                                          (let ((_%e4652246836%_
                                                 (gx#syntax-e
                                                  _%tl4642847270%_)))
                                            (let ((_%tl4652446843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4652246836%_)))
                                                  (_%hd4652346840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4652246836%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4652446843%_)
                                                  (let ((_%e4652546846%_
                                                         (gx#syntax-e
                                                          _%tl4652446843%_)))
                                                    (let ((_%tl4652746853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4652546846%_)))
                                                          (_%hd4652646850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4652546846%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4652746853%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4641947240%_)
                                                              (let ((_%__splice7851178512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4641947240%_ '0)))
                        (let ((_%tl4653046859%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851178512%_ '1)))
                              (_%target4652846856%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851178512%_ '0))))
                          (if (gx#stx-null? _%tl4653046859%_)
                              (_%__match7876978770%_
                               _%e4641447223%_
                               _%hd4641547227%_
                               _%tl4641647230%_
                               _%e4641747233%_
                               _%hd4641847237%_
                               _%tl4641947240%_
                               _%e4642047243%_
                               _%hd4642147247%_
                               _%tl4642247250%_
                               _%e4642347253%_
                               _%hd4642447257%_
                               _%tl4642547260%_
                               _%e4642647263%_
                               _%hd4642747267%_
                               _%tl4642847270%_
                               _%e4652246836%_
                               _%hd4652346840%_
                               _%tl4652446843%_
                               _%e4652546846%_
                               _%hd4652646850%_
                               _%tl4652746853%_
                               _%__splice7851178512%_
                               _%target4652846856%_
                               _%tl4653046859%_)
                              (if (gx#stx-pair? _%hd4642147247%_)
                                  (let ((_%e4655046704%_
                                         (gx#syntax-e _%hd4642147247%_)))
                                    (let ((_%tl4655246711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655046704%_)))
                                          (_%hd4655146708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655046704%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))))
                      (if (gx#stx-pair? _%hd4642147247%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4642147247%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                  (if (gx#stx-pair? _%hd4642147247%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4642147247%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (if (gx#stx-pair/null? _%tl4641947240%_)
                              (let ((_%__splice7851578516%_
                                     (gx#syntax-split-splice
                                      _%tl4641947240%_
                                      '0)))
                                (let ((_%tl4655546717%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '1)))
                                      (_%target4655346714%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4655546717%_)
                                      (_%__match7880178802%_
                                       _%e4641447223%_
                                       _%hd4641547227%_
                                       _%tl4641647230%_
                                       _%e4641747233%_
                                       _%hd4641847237%_
                                       _%tl4641947240%_
                                       _%e4642047243%_
                                       _%hd4642147247%_
                                       _%tl4642247250%_
                                       _%e4655046704%_
                                       _%hd4655146708%_
                                       _%tl4655246711%_
                                       _%__splice7851578516%_
                                       _%target4655346714%_
                                       _%tl4655546717%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4642147247%_)
                                                      (let ((_%e4655046704%_
                                                             (gx#syntax-e
                                                              _%hd4642147247%_)))
                                                        (let ((_%tl4655246711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655046704%_)))
                      (_%hd4655146708%_
                       (let () (declare (not safe)) (##car _%e4655046704%_))))
                  (if (gx#stx-pair/null? _%tl4641947240%_)
                      (let ((_%__splice7851578516%_
                             (gx#syntax-split-splice _%tl4641947240%_ '0)))
                        (let ((_%tl4655546717%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '1)))
                              (_%target4655346714%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '0))))
                          (if (gx#stx-null? _%tl4655546717%_)
                              (_%__match7880178802%_
                               _%e4641447223%_
                               _%hd4641547227%_
                               _%tl4641647230%_
                               _%e4641747233%_
                               _%hd4641847237%_
                               _%tl4641947240%_
                               _%e4642047243%_
                               _%hd4642147247%_
                               _%tl4642247250%_
                               _%e4655046704%_
                               _%hd4655146708%_
                               _%tl4655246711%_
                               _%__splice7851578516%_
                               _%target4655346714%_
                               _%tl4655546717%_)
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4642147247%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4642147247%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947240%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947240%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4641447223%_
                       _%hd4641547227%_
                       _%tl4641647230%_
                       _%e4641747233%_
                       _%hd4641847237%_
                       _%tl4641947240%_
                       _%e4642047243%_
                       _%hd4642147247%_
                       _%tl4642247250%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                      (if (gx#stx-pair? _%hd4642147247%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4642147247%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947240%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947240%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4641447223%_
                                                           _%hd4641547227%_
                                                           _%tl4641647230%_
                                                           _%e4641747233%_
                                                           _%hd4641847237%_
                                                           _%tl4641947240%_
                                                           _%e4642047243%_
                                                           _%hd4642147247%_
                                                           _%tl4642247250%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                  (if (gx#stx-pair? _%hd4642147247%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4642147247%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4641947240%_)
                                              (let ((_%__splice7851578516%_
                                                     (gx#syntax-split-splice
                                                      _%tl4641947240%_
                                                      '0)))
                                                (let ((_%tl4655546717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '1)))
                                                      (_%target4655346714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4655546717%_)
                                                      (_%__match7880178802%_
                                                       _%e4641447223%_
                                                       _%hd4641547227%_
                                                       _%tl4641647230%_
                                                       _%e4641747233%_
                                                       _%hd4641847237%_
                                                       _%tl4641947240%_
                                                       _%e4642047243%_
                                                       _%hd4642147247%_
                                                       _%tl4642247250%_
                                                       _%e4655046704%_
                                                       _%hd4655146708%_
                                                       _%tl4655246711%_
                                                       _%__splice7851578516%_
                                                       _%target4655346714%_
                                                       _%tl4655546717%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4637446583%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))))
                   (_%__match7856778568%_
                    (lambda (_%e4638147399%_
                             _%hd4638247403%_
                             _%tl4638347406%_
                             _%e4638447409%_
                             _%hd4638547413%_
                             _%tl4638647416%_
                             _%e4638747419%_
                             _%hd4638847423%_
                             _%tl4638947426%_
                             _%e4639047429%_
                             _%hd4639147433%_
                             _%tl4639247436%_
                             _%e4639347439%_
                             _%hd4639447443%_
                             _%tl4639547446%_
                             _%e4639647449%_
                             _%hd4639747453%_
                             _%tl4639847456%_
                             _%__splice7849578496%_
                             _%target4639947459%_
                             _%tl4640147462%_)
                      (letrec ((_%loop4640247465%_
                                (lambda (_%hd4640047469%_ _%body4640647472%_)
                                  (if (gx#stx-pair? _%hd4640047469%_)
                                      (let ((_%e4640347475%_
                                             (gx#syntax-e _%hd4640047469%_)))
                                        (let ((_%lp-tl4640547482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4640347475%_)))
                                              (_%lp-hd4640447479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4640347475%_))))
                                          (_%loop4640247465%_
                                           _%lp-tl4640547482%_
                                           (cons _%lp-hd4640447479%_
                                                 _%body4640647472%_))))
                                      (let ((_%body4640747485%_
                                             (reverse _%body4640647472%_)))
                                        (let ((_%L47489%_ _%body4640747485%_)
                                              (_%L47491%_ _%hd4639747453%_)
                                              (_%L47492%_ _%hd4639447443%_)
                                              (_%L47493%_ _%hd4639147433%_)
                                              (_%L47494%_ _%hd4638847423%_))
                                          (if (and (gx#identifier? _%L47494%_)
                                                   (gx#identifier? _%L47492%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47492%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47492%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47492%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47492%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47492%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7849378494%_
                                               _%L47489%_
                                               _%L47491%_
                                               _%L47492%_
                                               _%L47493%_
                                               _%L47494%_)
                                              (_%__match7859778598%_
                                               _%e4638147399%_
                                               _%hd4638247403%_
                                               _%tl4638347406%_
                                               _%e4638447409%_
                                               _%hd4638547413%_
                                               _%tl4638647416%_
                                               _%e4638747419%_
                                               _%hd4638847423%_
                                               _%tl4638947426%_
                                               _%e4639047429%_
                                               _%hd4639147433%_
                                               _%tl4639247436%_
                                               _%e4639347439%_
                                               _%hd4639447443%_
                                               _%tl4639547446%_))))))))
                        (_%loop4640247465%_ _%target4639947459%_ '())))))
              (if (gx#stx-pair? _%__stx7849078491%_)
                  (let ((_%e4638147399%_ (gx#syntax-e _%__stx7849078491%_)))
                    (let ((_%tl4638347406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4638147399%_)))
                          (_%hd4638247403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4638147399%_))))
                      (if (gx#stx-pair? _%tl4638347406%_)
                          (let ((_%e4638447409%_
                                 (gx#syntax-e _%tl4638347406%_)))
                            (let ((_%tl4638647416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4638447409%_)))
                                  (_%hd4638547413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4638447409%_))))
                              (if (gx#stx-pair? _%hd4638547413%_)
                                  (let ((_%e4638747419%_
                                         (gx#syntax-e _%hd4638547413%_)))
                                    (let ((_%tl4638947426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4638747419%_)))
                                          (_%hd4638847423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4638747419%_))))
                                      (if (gx#stx-pair? _%tl4638947426%_)
                                          (let ((_%e4639047429%_
                                                 (gx#syntax-e
                                                  _%tl4638947426%_)))
                                            (let ((_%tl4639247436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4639047429%_)))
                                                  (_%hd4639147433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4639047429%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4639247436%_)
                                                  (let ((_%e4639347439%_
                                                         (gx#syntax-e
                                                          _%tl4639247436%_)))
                                                    (let ((_%tl4639547446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4639347439%_)))
                                                          (_%hd4639447443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4639347439%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4639547446%_)
                                                          (let ((_%e4639647449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4639547446%_)))
                    (let ((_%tl4639847456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4639647449%_)))
                          (_%hd4639747453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4639647449%_))))
                      (if (gx#stx-null? _%tl4639847456%_)
                          (if (gx#stx-pair/null? _%tl4638647416%_)
                              (let ((_%__splice7849578496%_
                                     (gx#syntax-split-splice
                                      _%tl4638647416%_
                                      '0)))
                                (let ((_%tl4640147462%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7849578496%_
                                          '1)))
                                      (_%target4639947459%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7849578496%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4640147462%_)
                                      (_%__match7856778568%_
                                       _%e4638147399%_
                                       _%hd4638247403%_
                                       _%tl4638347406%_
                                       _%e4638447409%_
                                       _%hd4638547413%_
                                       _%tl4638647416%_
                                       _%e4638747419%_
                                       _%hd4638847423%_
                                       _%tl4638947426%_
                                       _%e4639047429%_
                                       _%hd4639147433%_
                                       _%tl4639247436%_
                                       _%e4639347439%_
                                       _%hd4639447443%_
                                       _%tl4639547446%_
                                       _%e4639647449%_
                                       _%hd4639747453%_
                                       _%tl4639847456%_
                                       _%__splice7849578496%_
                                       _%target4639947459%_
                                       _%tl4640147462%_)
                                      (if (gx#stx-pair? _%hd4638847423%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4638847423%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))))
                              (if (gx#stx-pair? _%hd4638847423%_)
                                  (let ((_%e4655046704%_
                                         (gx#syntax-e _%hd4638847423%_)))
                                    (let ((_%tl4655246711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655046704%_)))
                                          (_%hd4655146708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655046704%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                          (if (gx#identifier? _%hd4639447443%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g84065_|
                                   _%hd4639447443%_)
                                  (if (gx#stx-pair? _%tl4639847456%_)
                                      (let ((_%e4643247283%_
                                             (gx#syntax-e _%tl4639847456%_)))
                                        (let ((_%tl4643447290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643247283%_)))
                                              (_%hd4643347287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643247283%_))))
                                          (if (gx#stx-pair? _%tl4643447290%_)
                                              (let ((_%e4643547293%_
                                                     (gx#syntax-e
                                                      _%tl4643447290%_)))
                                                (let ((_%tl4643747300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4643547293%_)))
                                                      (_%hd4643647297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4643547293%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4643747300%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4638647416%_)
                                                          (let ((_%__splice7849978500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4638647416%_ '0)))
                    (let ((_%tl4644047306%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7849978500%_ '1)))
                          (_%target4643847303%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7849978500%_ '0))))
                      (if (gx#stx-null? _%tl4644047306%_)
                          (_%__match7862978630%_
                           _%e4638147399%_
                           _%hd4638247403%_
                           _%tl4638347406%_
                           _%e4638447409%_
                           _%hd4638547413%_
                           _%tl4638647416%_
                           _%e4638747419%_
                           _%hd4638847423%_
                           _%tl4638947426%_
                           _%e4639047429%_
                           _%hd4639147433%_
                           _%tl4639247436%_
                           _%e4639347439%_
                           _%hd4639447443%_
                           _%tl4639547446%_
                           _%e4639647449%_
                           _%hd4639747453%_
                           _%tl4639847456%_
                           _%e4643247283%_
                           _%hd4643347287%_
                           _%tl4643447290%_
                           _%e4643547293%_
                           _%hd4643647297%_
                           _%tl4643747300%_
                           _%__splice7849978500%_
                           _%target4643847303%_
                           _%tl4644047306%_)
                          (if (gx#stx-pair? _%hd4638847423%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4638847423%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_))))))
                  (if (gx#stx-pair? _%hd4638847423%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
              (if (gx#stx-pair? _%hd4638847423%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4638647416%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4638647416%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4638147399%_
                                   _%hd4638247403%_
                                   _%tl4638347406%_
                                   _%e4638447409%_
                                   _%hd4638547413%_
                                   _%tl4638647416%_
                                   _%e4638747419%_
                                   _%hd4638847423%_
                                   _%tl4638947426%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4639147433%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g84064_|
                                                       _%hd4639147433%_)
                                                      (if (gx#stx-null?
                                                           _%tl4643447290%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4638647416%_)
                                                              (let ((_%__splice7851178512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4638647416%_ '0)))
                        (let ((_%tl4653046859%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851178512%_ '1)))
                              (_%target4652846856%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851178512%_ '0))))
                          (if (gx#stx-null? _%tl4653046859%_)
                              (_%__match7876978770%_
                               _%e4638147399%_
                               _%hd4638247403%_
                               _%tl4638347406%_
                               _%e4638447409%_
                               _%hd4638547413%_
                               _%tl4638647416%_
                               _%e4638747419%_
                               _%hd4638847423%_
                               _%tl4638947426%_
                               _%e4639047429%_
                               _%hd4639147433%_
                               _%tl4639247436%_
                               _%e4639347439%_
                               _%hd4639447443%_
                               _%tl4639547446%_
                               _%e4639647449%_
                               _%hd4639747453%_
                               _%tl4639847456%_
                               _%e4643247283%_
                               _%hd4643347287%_
                               _%tl4643447290%_
                               _%__splice7851178512%_
                               _%target4652846856%_
                               _%tl4653046859%_)
                              (if (gx#stx-pair? _%hd4638847423%_)
                                  (let ((_%e4655046704%_
                                         (gx#syntax-e _%hd4638847423%_)))
                                    (let ((_%tl4655246711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655046704%_)))
                                          (_%hd4655146708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655046704%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))))
                      (if (gx#stx-pair? _%hd4638847423%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4638847423%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                  (if (gx#stx-pair? _%hd4638847423%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (if (gx#stx-pair/null? _%tl4638647416%_)
                              (let ((_%__splice7851578516%_
                                     (gx#syntax-split-splice
                                      _%tl4638647416%_
                                      '0)))
                                (let ((_%tl4655546717%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '1)))
                                      (_%target4655346714%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7851578516%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4655546717%_)
                                      (_%__match7880178802%_
                                       _%e4638147399%_
                                       _%hd4638247403%_
                                       _%tl4638347406%_
                                       _%e4638447409%_
                                       _%hd4638547413%_
                                       _%tl4638647416%_
                                       _%e4638747419%_
                                       _%hd4638847423%_
                                       _%tl4638947426%_
                                       _%e4655046704%_
                                       _%hd4655146708%_
                                       _%tl4655246711%_
                                       _%__splice7851578516%_
                                       _%target4655346714%_
                                       _%tl4655546717%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
              (if (gx#stx-pair? _%hd4638847423%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4638647416%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4638647416%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4638147399%_
                                   _%hd4638247403%_
                                   _%tl4638347406%_
                                   _%e4638447409%_
                                   _%hd4638547413%_
                                   _%tl4638647416%_
                                   _%e4638747419%_
                                   _%hd4638847423%_
                                   _%tl4638947426%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4638847423%_)
                                                      (let ((_%e4655046704%_
                                                             (gx#syntax-e
                                                              _%hd4638847423%_)))
                                                        (let ((_%tl4655246711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655046704%_)))
                      (_%hd4655146708%_
                       (let () (declare (not safe)) (##car _%e4655046704%_))))
                  (if (gx#stx-pair/null? _%tl4638647416%_)
                      (let ((_%__splice7851578516%_
                             (gx#syntax-split-splice _%tl4638647416%_ '0)))
                        (let ((_%tl4655546717%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '1)))
                              (_%target4655346714%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '0))))
                          (if (gx#stx-null? _%tl4655546717%_)
                              (_%__match7880178802%_
                               _%e4638147399%_
                               _%hd4638247403%_
                               _%tl4638347406%_
                               _%e4638447409%_
                               _%hd4638547413%_
                               _%tl4638647416%_
                               _%e4638747419%_
                               _%hd4638847423%_
                               _%tl4638947426%_
                               _%e4655046704%_
                               _%hd4655146708%_
                               _%tl4655246711%_
                               _%__splice7851578516%_
                               _%target4655346714%_
                               _%tl4655546717%_)
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4638847423%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4638847423%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638647416%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638647416%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4638147399%_
                                                           _%hd4638247403%_
                                                           _%tl4638347406%_
                                                           _%e4638447409%_
                                                           _%hd4638547413%_
                                                           _%tl4638647416%_
                                                           _%e4638747419%_
                                                           _%hd4638847423%_
                                                           _%tl4638947426%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                  (if (gx#identifier? _%hd4639147433%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84064_|
                                           _%hd4639147433%_)
                                          (if (gx#stx-pair? _%tl4639847456%_)
                                              (let ((_%e4652546846%_
                                                     (gx#syntax-e
                                                      _%tl4639847456%_)))
                                                (let ((_%tl4652746853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4652546846%_)))
                                                      (_%hd4652646850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4652546846%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4652746853%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4638647416%_)
                                                          (let ((_%__splice7851178512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4638647416%_ '0)))
                    (let ((_%tl4653046859%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851178512%_ '1)))
                          (_%target4652846856%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851178512%_ '0))))
                      (if (gx#stx-null? _%tl4653046859%_)
                          (_%__match7876978770%_
                           _%e4638147399%_
                           _%hd4638247403%_
                           _%tl4638347406%_
                           _%e4638447409%_
                           _%hd4638547413%_
                           _%tl4638647416%_
                           _%e4638747419%_
                           _%hd4638847423%_
                           _%tl4638947426%_
                           _%e4639047429%_
                           _%hd4639147433%_
                           _%tl4639247436%_
                           _%e4639347439%_
                           _%hd4639447443%_
                           _%tl4639547446%_
                           _%e4639647449%_
                           _%hd4639747453%_
                           _%tl4639847456%_
                           _%e4652546846%_
                           _%hd4652646850%_
                           _%tl4652746853%_
                           _%__splice7851178512%_
                           _%target4652846856%_
                           _%tl4653046859%_)
                          (if (gx#stx-pair? _%hd4638847423%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4638847423%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_))))))
                  (if (gx#stx-pair? _%hd4638847423%_)
                      (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                        (let ((_%tl4655246711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655046704%_)))
                              (_%hd4655146708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655046704%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
              (if (gx#stx-pair? _%hd4638847423%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (if (gx#stx-pair/null? _%tl4638647416%_)
                          (let ((_%__splice7851578516%_
                                 (gx#syntax-split-splice _%tl4638647416%_ '0)))
                            (let ((_%tl4655546717%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7851578516%_ '1)))
                                  (_%target4655346714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7851578516%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655546717%_)
                                  (_%__match7880178802%_
                                   _%e4638147399%_
                                   _%hd4638247403%_
                                   _%tl4638347406%_
                                   _%e4638447409%_
                                   _%hd4638547413%_
                                   _%tl4638647416%_
                                   _%e4638747419%_
                                   _%hd4638847423%_
                                   _%tl4638947426%_
                                   _%e4655046704%_
                                   _%hd4655146708%_
                                   _%tl4655246711%_
                                   _%__splice7851578516%_
                                   _%target4655346714%_
                                   _%tl4655546717%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4638847423%_)
                                                  (let ((_%e4655046704%_
                                                         (gx#syntax-e
                                                          _%hd4638847423%_)))
                                                    (let ((_%tl4655246711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655046704%_)))
                                                          (_%hd4655146708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655046704%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4638647416%_)
                                                          (let ((_%__splice7851578516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4638647416%_ '0)))
                    (let ((_%tl4655546717%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '1)))
                          (_%target4655346714%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7851578516%_ '0))))
                      (if (gx#stx-null? _%tl4655546717%_)
                          (_%__match7880178802%_
                           _%e4638147399%_
                           _%hd4638247403%_
                           _%tl4638347406%_
                           _%e4638447409%_
                           _%hd4638547413%_
                           _%tl4638647416%_
                           _%e4638747419%_
                           _%hd4638847423%_
                           _%tl4638947426%_
                           _%e4655046704%_
                           _%hd4655146708%_
                           _%tl4655246711%_
                           _%__splice7851578516%_
                           _%target4655346714%_
                           _%tl4655546717%_)
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_))))
                                          (if (gx#stx-pair? _%hd4638847423%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4638847423%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638647416%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638647416%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4638147399%_
                       _%hd4638247403%_
                       _%tl4638347406%_
                       _%e4638447409%_
                       _%hd4638547413%_
                       _%tl4638647416%_
                       _%e4638747419%_
                       _%hd4638847423%_
                       _%tl4638947426%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                      (if (gx#stx-pair? _%hd4638847423%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4638847423%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638647416%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638647416%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4638147399%_
                                                           _%hd4638247403%_
                                                           _%tl4638347406%_
                                                           _%e4638447409%_
                                                           _%hd4638547413%_
                                                           _%tl4638647416%_
                                                           _%e4638747419%_
                                                           _%hd4638847423%_
                                                           _%tl4638947426%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                              (if (gx#identifier? _%hd4639147433%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84064_|
                                       _%hd4639147433%_)
                                      (if (gx#stx-pair? _%tl4639847456%_)
                                          (let ((_%e4652546846%_
                                                 (gx#syntax-e
                                                  _%tl4639847456%_)))
                                            (let ((_%tl4652746853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4652546846%_)))
                                                  (_%hd4652646850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4652546846%_))))
                                              (if (gx#stx-null?
                                                   _%tl4652746853%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638647416%_)
                                                      (let ((_%__splice7851178512%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638647416%_
                                                              '0)))
                                                        (let ((_%tl4653046859%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851178512%_ '1)))
                      (_%target4652846856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851178512%_ '0))))
                  (if (gx#stx-null? _%tl4653046859%_)
                      (_%__match7876978770%_
                       _%e4638147399%_
                       _%hd4638247403%_
                       _%tl4638347406%_
                       _%e4638447409%_
                       _%hd4638547413%_
                       _%tl4638647416%_
                       _%e4638747419%_
                       _%hd4638847423%_
                       _%tl4638947426%_
                       _%e4639047429%_
                       _%hd4639147433%_
                       _%tl4639247436%_
                       _%e4639347439%_
                       _%hd4639447443%_
                       _%tl4639547446%_
                       _%e4639647449%_
                       _%hd4639747453%_
                       _%tl4639847456%_
                       _%e4652546846%_
                       _%hd4652646850%_
                       _%tl4652746853%_
                       _%__splice7851178512%_
                       _%target4652846856%_
                       _%tl4653046859%_)
                      (if (gx#stx-pair? _%hd4638847423%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4638847423%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                          (let () (declare (not safe)) (_%g4637446583%_))))))
              (if (gx#stx-pair? _%hd4638847423%_)
                  (let ((_%e4655046704%_ (gx#syntax-e _%hd4638847423%_)))
                    (let ((_%tl4655246711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4655046704%_)))
                          (_%hd4655146708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4655046704%_))))
                      (let () (declare (not safe)) (_%g4637446583%_))))
                  (let () (declare (not safe)) (_%g4637446583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4638847423%_)
                                                      (let ((_%e4655046704%_
                                                             (gx#syntax-e
                                                              _%hd4638847423%_)))
                                                        (let ((_%tl4655246711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655046704%_)))
                      (_%hd4655146708%_
                       (let () (declare (not safe)) (##car _%e4655046704%_))))
                  (if (gx#stx-pair/null? _%tl4638647416%_)
                      (let ((_%__splice7851578516%_
                             (gx#syntax-split-splice _%tl4638647416%_ '0)))
                        (let ((_%tl4655546717%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '1)))
                              (_%target4655346714%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '0))))
                          (if (gx#stx-null? _%tl4655546717%_)
                              (_%__match7880178802%_
                               _%e4638147399%_
                               _%hd4638247403%_
                               _%tl4638347406%_
                               _%e4638447409%_
                               _%hd4638547413%_
                               _%tl4638647416%_
                               _%e4638747419%_
                               _%hd4638847423%_
                               _%tl4638947426%_
                               _%e4655046704%_
                               _%hd4655146708%_
                               _%tl4655246711%_
                               _%__splice7851578516%_
                               _%target4655346714%_
                               _%tl4655546717%_)
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638847423%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4638847423%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638647416%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638647416%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4638147399%_
                       _%hd4638247403%_
                       _%tl4638347406%_
                       _%e4638447409%_
                       _%hd4638547413%_
                       _%tl4638647416%_
                       _%e4638747419%_
                       _%hd4638847423%_
                       _%tl4638947426%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))
                                      (if (gx#stx-pair? _%hd4638847423%_)
                                          (let ((_%e4655046704%_
                                                 (gx#syntax-e
                                                  _%hd4638847423%_)))
                                            (let ((_%tl4655246711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655046704%_)))
                                                  (_%hd4655146708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655046704%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638647416%_)
                                                  (let ((_%__splice7851578516%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638647416%_
                                                          '0)))
                                                    (let ((_%tl4655546717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '1)))
                                                          (_%target4655346714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7851578516%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4655546717%_)
                                                          (_%__match7880178802%_
                                                           _%e4638147399%_
                                                           _%hd4638247403%_
                                                           _%tl4638347406%_
                                                           _%e4638447409%_
                                                           _%hd4638547413%_
                                                           _%tl4638647416%_
                                                           _%e4638747419%_
                                                           _%hd4638847423%_
                                                           _%tl4638947426%_
                                                           _%e4655046704%_
                                                           _%hd4655146708%_
                                                           _%tl4655246711%_
                                                           _%__splice7851578516%_
                                                           _%target4655346714%_
                                                           _%tl4655546717%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4637446583%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                  (if (gx#stx-pair? _%hd4638847423%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4638847423%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4638647416%_)
                                              (let ((_%__splice7851578516%_
                                                     (gx#syntax-split-splice
                                                      _%tl4638647416%_
                                                      '0)))
                                                (let ((_%tl4655546717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '1)))
                                                      (_%target4655346714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7851578516%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4655546717%_)
                                                      (_%__match7880178802%_
                                                       _%e4638147399%_
                                                       _%hd4638247403%_
                                                       _%tl4638347406%_
                                                       _%e4638447409%_
                                                       _%hd4638547413%_
                                                       _%tl4638647416%_
                                                       _%e4638747419%_
                                                       _%hd4638847423%_
                                                       _%tl4638947426%_
                                                       _%e4655046704%_
                                                       _%hd4655146708%_
                                                       _%tl4655246711%_
                                                       _%__splice7851578516%_
                                                       _%target4655346714%_
                                                       _%tl4655546717%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4637446583%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))))
                  (if (gx#stx-null? _%tl4639547446%_)
                      (if (gx#stx-pair/null? _%tl4638647416%_)
                          (let ((_%__splice7850378504%_
                                 (gx#syntax-split-splice _%tl4638647416%_ '0)))
                            (let ((_%tl4646847123%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7850378504%_ '1)))
                                  (_%target4646647120%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7850378504%_
                                      '0))))
                              (if (gx#stx-null? _%tl4646847123%_)
                                  (_%__match7866978670%_
                                   _%e4638147399%_
                                   _%hd4638247403%_
                                   _%tl4638347406%_
                                   _%e4638447409%_
                                   _%hd4638547413%_
                                   _%tl4638647416%_
                                   _%e4638747419%_
                                   _%hd4638847423%_
                                   _%tl4638947426%_
                                   _%e4639047429%_
                                   _%hd4639147433%_
                                   _%tl4639247436%_
                                   _%e4639347439%_
                                   _%hd4639447443%_
                                   _%tl4639547446%_
                                   _%__splice7850378504%_
                                   _%target4646647120%_
                                   _%tl4646847123%_)
                                  (if (gx#stx-pair? _%hd4638847423%_)
                                      (let ((_%e4655046704%_
                                             (gx#syntax-e _%hd4638847423%_)))
                                        (let ((_%tl4655246711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655046704%_)))
                                              (_%hd4655146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655046704%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))
                          (if (gx#stx-pair? _%hd4638847423%_)
                              (let ((_%e4655046704%_
                                     (gx#syntax-e _%hd4638847423%_)))
                                (let ((_%tl4655246711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655046704%_)))
                                      (_%hd4655146708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655046704%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_))))
                              (let () (declare (not safe)) (_%g4637446583%_))))
                      (if (gx#stx-pair? _%hd4638847423%_)
                          (let ((_%e4655046704%_
                                 (gx#syntax-e _%hd4638847423%_)))
                            (let ((_%tl4655246711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4655046704%_)))
                                  (_%hd4655146708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4655046704%_))))
                              (if (gx#stx-pair/null? _%tl4638647416%_)
                                  (let ((_%__splice7851578516%_
                                         (gx#syntax-split-splice
                                          _%tl4638647416%_
                                          '0)))
                                    (let ((_%tl4655546717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '1)))
                                          (_%target4655346714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7851578516%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4655546717%_)
                                          (_%__match7880178802%_
                                           _%e4638147399%_
                                           _%hd4638247403%_
                                           _%tl4638347406%_
                                           _%e4638447409%_
                                           _%hd4638547413%_
                                           _%tl4638647416%_
                                           _%e4638747419%_
                                           _%hd4638847423%_
                                           _%tl4638947426%_
                                           _%e4655046704%_
                                           _%hd4655146708%_
                                           _%tl4655246711%_
                                           _%__splice7851578516%_
                                           _%target4655346714%_
                                           _%tl4655546717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4637446583%_)))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4638847423%_)
                                                      (let ((_%e4655046704%_
                                                             (gx#syntax-e
                                                              _%hd4638847423%_)))
                                                        (let ((_%tl4655246711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655046704%_)))
                      (_%hd4655146708%_
                       (let () (declare (not safe)) (##car _%e4655046704%_))))
                  (if (gx#stx-pair/null? _%tl4638647416%_)
                      (let ((_%__splice7851578516%_
                             (gx#syntax-split-splice _%tl4638647416%_ '0)))
                        (let ((_%tl4655546717%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '1)))
                              (_%target4655346714%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7851578516%_ '0))))
                          (if (gx#stx-null? _%tl4655546717%_)
                              (_%__match7880178802%_
                               _%e4638147399%_
                               _%hd4638247403%_
                               _%tl4638347406%_
                               _%e4638447409%_
                               _%hd4638547413%_
                               _%tl4638647416%_
                               _%e4638747419%_
                               _%hd4638847423%_
                               _%tl4638947426%_
                               _%e4655046704%_
                               _%hd4655146708%_
                               _%tl4655246711%_
                               _%__splice7851578516%_
                               _%target4655346714%_
                               _%tl4655546717%_)
                              (let ()
                                (declare (not safe))
                                (_%g4637446583%_)))))
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638847423%_)
                                              (let ((_%e4655046704%_
                                                     (gx#syntax-e
                                                      _%hd4638847423%_)))
                                                (let ((_%tl4655246711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655046704%_)))
                                                      (_%hd4655146708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655046704%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638647416%_)
                                                      (let ((_%__splice7851578516%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638647416%_
                                                              '0)))
                                                        (let ((_%tl4655546717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '1)))
                      (_%target4655346714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7851578516%_ '0))))
                  (if (gx#stx-null? _%tl4655546717%_)
                      (_%__match7880178802%_
                       _%e4638147399%_
                       _%hd4638247403%_
                       _%tl4638347406%_
                       _%e4638447409%_
                       _%hd4638547413%_
                       _%tl4638647416%_
                       _%e4638747419%_
                       _%hd4638847423%_
                       _%tl4638947426%_
                       _%e4655046704%_
                       _%hd4655146708%_
                       _%tl4655246711%_
                       _%__splice7851578516%_
                       _%target4655346714%_
                       _%tl4655546717%_)
                      (let () (declare (not safe)) (_%g4637446583%_)))))
              (let () (declare (not safe)) (_%g4637446583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4637446583%_))))))
                                  (if (gx#stx-null? _%hd4638547413%_)
                                      (if (gx#stx-pair/null? _%tl4638647416%_)
                                          (let ((_%__splice7851978520%_
                                                 (gx#syntax-split-splice
                                                  _%tl4638647416%_
                                                  '0)))
                                            (let ((_%tl4657146613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7851978520%_
                                                      '1)))
                                                  (_%target4656946610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7851978520%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4657146613%_)
                                                  (_%__match7882378824%_
                                                   _%e4638147399%_
                                                   _%hd4638247403%_
                                                   _%tl4638347406%_
                                                   _%e4638447409%_
                                                   _%hd4638547413%_
                                                   _%tl4638647416%_
                                                   _%__splice7851978520%_
                                                   _%target4656946610%_
                                                   _%tl4657146613%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4637446583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4637446583%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4637446583%_))))))
                          (let () (declare (not safe)) (_%g4637446583%_)))))
                  (let () (declare (not safe)) (_%g4637446583%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47557%_)
        (let* ((_%g4756147595%_
                (lambda (_%g4756247591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4756247591%_)))
               (_%g4756047718%_
                (lambda (_%g4756247599%_)
                  (if (gx#stx-pair? _%g4756247599%_)
                      (let ((_%e4756647602%_ (gx#syntax-e _%g4756247599%_)))
                        (let ((_%hd4756747606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4756647602%_)))
                              (_%tl4756847609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4756647602%_))))
                          (if (gx#stx-pair? _%tl4756847609%_)
                              (let ((_%e4756947612%_
                                     (gx#syntax-e _%tl4756847609%_)))
                                (let ((_%hd4757047616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4756947612%_)))
                                      (_%tl4757147619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4756947612%_))))
                                  (if (gx#stx-pair? _%hd4757047616%_)
                                      (let ((_%e4757247622%_
                                             (gx#syntax-e _%hd4757047616%_)))
                                        (let ((_%hd4757347626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4757247622%_)))
                                              (_%tl4757447629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4757247622%_))))
                                          (if (gx#stx-pair? _%tl4757447629%_)
                                              (let ((_%e4757547632%_
                                                     (gx#syntax-e
                                                      _%tl4757447629%_)))
                                                (let ((_%hd4757647636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4757547632%_)))
                                                      (_%tl4757747639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4757547632%_))))
                                                  (if (gx#identifier?
                                                       _%hd4757647636%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84066_|
                                                           _%hd4757647636%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4757747639%_)
                                                              (let ((_%e4757847642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4757747639%_)))
                        (let ((_%hd4757947646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4757847642%_)))
                              (_%tl4758047649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4757847642%_))))
                          (if (gx#stx-null? _%tl4758047649%_)
                              (if (gx#stx-pair/null? _%tl4757147619%_)
                                  (let ((_g84067_
                                         (gx#syntax-split-splice
                                          _%tl4757147619%_
                                          '0)))
                                    (begin
                                      (let ((_g84068_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84067_)
                                                   (##vector-length _g84067_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84068_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84068_)))
                                      (let ((_%target4758147652%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84067_ 0)))
                                            (_%tl4758347655%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84067_ 1))))
                                        (if (gx#stx-null? _%tl4758347655%_)
                                            (letrec ((_%loop4758447658%_
                                                      (lambda (_%hd4758247662%_
                                                               _%body4758847665%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4758247662%_)
                                                            (let ((_%e4758547668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4758247662%_)))
                      (let ((_%lp-hd4758647672%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4758547668%_)))
                            (_%lp-tl4758747675%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4758547668%_))))
                        (_%loop4758447658%_
                         _%lp-tl4758747675%_
                         (cons _%lp-hd4758647672%_ _%body4758847665%_))))
                    (let ((_%body4758947678%_ (reverse _%body4758847665%_)))
                      ((lambda (_%L47682%_ _%L47684%_ _%L47685%_)
                         (if (gx#identifier? _%L47685%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47684%_
                                               (cons _%L47685%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4770947712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4771047715%_)
                            (cons _%g4770947712%_ _%g4771047715%_))
                          '()
                          _%L47682%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47684%_ (cons _%L47685%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4756147595%_ _%g4756247599%_)))
                       _%body4758947678%_
                       _%hd4757947646%_
                       _%hd4757347626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4758447658%_
                                               _%target4758147652%_
                                               '()))
                                            (_%g4756147595%_
                                             _%g4756247599%_)))))
                                  (_%g4756147595%_ _%g4756247599%_))
                              (_%g4756147595%_ _%g4756247599%_))))
                      (_%g4756147595%_ _%g4756247599%_))
                  (_%g4756147595%_ _%g4756247599%_))
              (_%g4756147595%_ _%g4756247599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4756147595%_
                                               _%g4756247599%_))))
                                      (_%g4756147595%_ _%g4756247599%_))))
                              (_%g4756147595%_ _%g4756247599%_))))
                      (_%g4756147595%_ _%g4756247599%_)))))
          (_%g4756047718%_ _%$stx47557%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48285%_ _%slot48287%_)
        (let ((_%$e48289%_
               (let ((__obj83904 _%klass48285%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83904
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83904 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83904
                      'slot-types)))))
          (if _%$e48289%_
              ((lambda (_%slot-types48293%_)
                 (agetq _%slot48287%_ _%slot-types48293%_))
               _%$e48289%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48266%_ _%slot48268%_)
        (let ((_%$e48270%_
               (let ((__obj83905 _%klass48266%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83905
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83905 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83905
                      'slot-defaults)))))
          (if _%$e48270%_
              ((lambda (_%slot-defaults48274%_)
                 (let ((_%$e48277%_
                        (agetq _%slot48268%_ _%slot-defaults48274%_)))
                   (if _%$e48277%_
                       (gx#syntax-local-introduce _%$e48277%_)
                       '#f)))
               _%$e48270%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48247%_ _%slot48249%_)
        (let ((_%$e48251%_
               (let ((__obj83906 _%klass48247%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83906
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83906 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83906
                      'slot-defaults)))))
          (if _%$e48251%_
              ((lambda (_%slot-defaults48255%_)
                 (let ((_%$e48258%_
                        (agetq _%slot48249%_ _%slot-defaults48255%_)))
                   (if _%$e48258%_
                       (gx#syntax-local-introduce _%$e48258%_)
                       '#f)))
               _%$e48251%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48015%_ _%slot48017%_)
        (let ((_%contract4801848020%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48015%_
                _%slot48017%_)))
          (if _%contract4801848020%_
              (let* ((_%contract48024%_ _%contract4801848020%_)
                     (_%__stx7882678827%_ _%contract48024%_)
                     (_%g4802948066%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7882678827%_))))
                (let ((_%__kont7882978830%_
                       (lambda (_%L48216%_ _%L48218%_)
                         (not (gx#free-identifier=?
                               _%L48218%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7883178832%_
                       (lambda (_%L48156%_ _%L48158%_ _%L48159%_)
                         (not (gx#free-identifier=?
                               _%L48158%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7883378834%_ (lambda (_%L48093%_) '#f)))
                  (let* ((_%__match7887978880%_
                          (lambda (_%e4804248116%_
                                   _%hd4804348120%_
                                   _%tl4804448123%_
                                   _%e4804548126%_
                                   _%hd4804648130%_
                                   _%tl4804748133%_
                                   _%e4804848136%_
                                   _%hd4804948140%_
                                   _%tl4805048143%_
                                   _%e4805148146%_
                                   _%hd4805248150%_
                                   _%tl4805348153%_)
                            (let ((_%L48156%_ _%hd4805248150%_)
                                  (_%L48158%_ _%hd4804948140%_)
                                  (_%L48159%_ _%hd4804648130%_))
                              (if (and (gx#identifier? _%L48158%_)
                                       (or (gx#free-identifier=?
                                            _%L48158%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48158%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48158%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48158%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7883178832%_
                                   _%L48156%_
                                   _%L48158%_
                                   _%L48159%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4802948066%_))))))
                         (_%__match7884978850%_
                          (lambda (_%e4803348196%_
                                   _%hd4803448200%_
                                   _%tl4803548203%_
                                   _%e4803648206%_
                                   _%hd4803748210%_
                                   _%tl4803848213%_)
                            (let ((_%L48216%_ _%hd4803748210%_)
                                  (_%L48218%_ _%hd4803448200%_))
                              (if (and (gx#identifier? _%L48218%_)
                                       (or (gx#free-identifier=?
                                            _%L48218%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48218%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48218%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48218%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7882978830%_ _%L48216%_ _%L48218%_)
                                  (if (gx#identifier? _%hd4803448200%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84069_|
                                           _%hd4803448200%_)
                                          (_%__kont7883378834%_
                                           _%hd4803748210%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4802948066%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4802948066%_))))))))
                    (if (gx#stx-pair? _%__stx7882678827%_)
                        (let ((_%e4803348196%_
                               (gx#syntax-e _%__stx7882678827%_)))
                          (let ((_%tl4803548203%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4803348196%_)))
                                (_%hd4803448200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4803348196%_))))
                            (if (gx#stx-pair? _%tl4803548203%_)
                                (let ((_%e4803648206%_
                                       (gx#syntax-e _%tl4803548203%_)))
                                  (let ((_%tl4803848213%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4803648206%_)))
                                        (_%hd4803748210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4803648206%_))))
                                    (if (gx#stx-null? _%tl4803848213%_)
                                        (_%__match7884978850%_
                                         _%e4803348196%_
                                         _%hd4803448200%_
                                         _%tl4803548203%_
                                         _%e4803648206%_
                                         _%hd4803748210%_
                                         _%tl4803848213%_)
                                        (if (gx#identifier? _%hd4803448200%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84069_|
                                                 _%hd4803448200%_)
                                                (if (gx#stx-pair?
                                                     _%tl4803848213%_)
                                                    (let ((_%e4804848136%_
                                                           (gx#syntax-e
                                                            _%tl4803848213%_)))
                                                      (let ((_%tl4805048143%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4804848136%_)))
                    (_%hd4804948140%_
                     (let () (declare (not safe)) (##car _%e4804848136%_))))
                (if (gx#stx-pair? _%tl4805048143%_)
                    (let ((_%e4805148146%_ (gx#syntax-e _%tl4805048143%_)))
                      (let ((_%tl4805348153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4805148146%_)))
                            (_%hd4805248150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4805148146%_))))
                        (if (gx#stx-null? _%tl4805348153%_)
                            (_%__match7887978880%_
                             _%e4803348196%_
                             _%hd4803448200%_
                             _%tl4803548203%_
                             _%e4803648206%_
                             _%hd4803748210%_
                             _%tl4803848213%_
                             _%e4804848136%_
                             _%hd4804948140%_
                             _%tl4805048143%_
                             _%e4805148146%_
                             _%hd4805248150%_
                             _%tl4805348153%_)
                            (let () (declare (not safe)) (_%g4802948066%_)))))
                    (let () (declare (not safe)) (_%g4802948066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4802948066%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4802948066%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4802948066%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4802948066%_)))))
                        (let () (declare (not safe)) (_%g4802948066%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47783%_ _%slot47785%_)
        (let ((_%contract4778647788%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47783%_
                _%slot47785%_)))
          (if _%contract4778647788%_
              (let* ((_%contract47792%_ _%contract4778647788%_)
                     (_%__stx7890078901%_ _%contract47792%_)
                     (_%g4779747834%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7890078901%_))))
                (let ((_%__kont7890378904%_
                       (lambda (_%L47984%_ _%L47986%_)
                         (not (gx#free-identifier=?
                               _%L47986%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7890578906%_
                       (lambda (_%L47924%_ _%L47926%_ _%L47927%_) '#t))
                      (_%__kont7890778908%_ (lambda (_%L47861%_) '#t)))
                  (let* ((_%__match7895378954%_
                          (lambda (_%e4781047884%_
                                   _%hd4781147888%_
                                   _%tl4781247891%_
                                   _%e4781347894%_
                                   _%hd4781447898%_
                                   _%tl4781547901%_
                                   _%e4781647904%_
                                   _%hd4781747908%_
                                   _%tl4781847911%_
                                   _%e4781947914%_
                                   _%hd4782047918%_
                                   _%tl4782147921%_)
                            (let ((_%L47924%_ _%hd4782047918%_)
                                  (_%L47926%_ _%hd4781747908%_)
                                  (_%L47927%_ _%hd4781447898%_))
                              (if (and (gx#identifier? _%L47926%_)
                                       (or (gx#free-identifier=?
                                            _%L47926%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47926%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47926%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47926%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7890578906%_
                                   _%L47924%_
                                   _%L47926%_
                                   _%L47927%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4779747834%_))))))
                         (_%__match7892378924%_
                          (lambda (_%e4780147964%_
                                   _%hd4780247968%_
                                   _%tl4780347971%_
                                   _%e4780447974%_
                                   _%hd4780547978%_
                                   _%tl4780647981%_)
                            (let ((_%L47984%_ _%hd4780547978%_)
                                  (_%L47986%_ _%hd4780247968%_))
                              (if (and (gx#identifier? _%L47986%_)
                                       (or (gx#free-identifier=?
                                            _%L47986%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47986%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47986%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47986%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7890378904%_ _%L47984%_ _%L47986%_)
                                  (if (gx#identifier? _%hd4780247968%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84070_|
                                           _%hd4780247968%_)
                                          (_%__kont7890778908%_
                                           _%hd4780547978%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4779747834%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4779747834%_))))))))
                    (if (gx#stx-pair? _%__stx7890078901%_)
                        (let ((_%e4780147964%_
                               (gx#syntax-e _%__stx7890078901%_)))
                          (let ((_%tl4780347971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4780147964%_)))
                                (_%hd4780247968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4780147964%_))))
                            (if (gx#stx-pair? _%tl4780347971%_)
                                (let ((_%e4780447974%_
                                       (gx#syntax-e _%tl4780347971%_)))
                                  (let ((_%tl4780647981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4780447974%_)))
                                        (_%hd4780547978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4780447974%_))))
                                    (if (gx#stx-null? _%tl4780647981%_)
                                        (_%__match7892378924%_
                                         _%e4780147964%_
                                         _%hd4780247968%_
                                         _%tl4780347971%_
                                         _%e4780447974%_
                                         _%hd4780547978%_
                                         _%tl4780647981%_)
                                        (if (gx#identifier? _%hd4780247968%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84070_|
                                                 _%hd4780247968%_)
                                                (if (gx#stx-pair?
                                                     _%tl4780647981%_)
                                                    (let ((_%e4781647904%_
                                                           (gx#syntax-e
                                                            _%tl4780647981%_)))
                                                      (let ((_%tl4781847911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4781647904%_)))
                    (_%hd4781747908%_
                     (let () (declare (not safe)) (##car _%e4781647904%_))))
                (if (gx#stx-pair? _%tl4781847911%_)
                    (let ((_%e4781947914%_ (gx#syntax-e _%tl4781847911%_)))
                      (let ((_%tl4782147921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4781947914%_)))
                            (_%hd4782047918%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4781947914%_))))
                        (if (gx#stx-null? _%tl4782147921%_)
                            (_%__match7895378954%_
                             _%e4780147964%_
                             _%hd4780247968%_
                             _%tl4780347971%_
                             _%e4780447974%_
                             _%hd4780547978%_
                             _%tl4780647981%_
                             _%e4781647904%_
                             _%hd4781747908%_
                             _%tl4781847911%_
                             _%e4781947914%_
                             _%hd4782047918%_
                             _%tl4782147921%_)
                            (let () (declare (not safe)) (_%g4779747834%_)))))
                    (let () (declare (not safe)) (_%g4779747834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4779747834%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4779747834%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4779747834%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4779747834%_)))))
                        (let () (declare (not safe)) (_%g4779747834%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47769%_)
        (if (gx#identifier? _%id47769%_)
            (let* ((_%str47772%_ (symbol->string (gx#stx-e _%id47769%_)))
                   (_%index4777447776%_ (string-index _%str47772%_ '#\.)))
              (if _%index4777447776%_
                  (let ((_%index47780%_ _%index4777447776%_))
                    (if (let () (declare (not safe)) (##fx> _%index47780%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47772%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47762%_ _%id47764%_)
        (let ((_%parts47766%_
               (string-split (symbol->string (gx#stx-e _%id47764%_)) '#\.)))
          (if (find string-empty? _%parts47766%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47762%_
               _%id47764%_)
              (cons (gx#stx-identifier _%id47764%_ (car _%parts47766%_))
                    (map string->symbol (cdr _%parts47766%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47743%_ _%klass-or-id47745%_ _%slot47746%_)
        (let* ((_%klass47748%_
                (if (gx#identifier? _%klass-or-id47745%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47743%_
                       _%klass-or-id47745%_))
                    _%klass-or-id47745%_))
               (_%accessors47751%_
                (let ((__obj83907 _%klass47748%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj83907
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj83907 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj83907
                       'unchecked-accessors))))
               (_%$e47756%_ (agetq _%slot47746%_ _%accessors47751%_)))
          (if _%$e47756%_
              _%$e47756%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47743%_
               _%klass47748%_
               _%slot47746%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47723%_
               _%klass-or-id47725%_
               _%slot47726%_
               _%checked?47727%_)
        (let* ((_%klass47729%_
                (if (gx#identifier? _%klass-or-id47725%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47723%_
                       _%klass-or-id47725%_))
                    _%klass-or-id47725%_))
               (_%mutators47732%_
                (if _%checked?47727%_
                    (let ((__obj83908 _%klass47729%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83908
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83908 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83908
                           'mutators)))
                    (let ((__obj83909 _%klass47729%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83909
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83909 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83909
                           'unchecked-mutators)))))
               (_%$e47737%_ (agetq _%slot47726%_ _%mutators47732%_)))
          (if _%$e47737%_
              _%$e47737%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47723%_
               _%klass47729%_
               _%slot47726%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48298%_)
        (letrec ((_%expand-body48301%_
                  (lambda (_%klass49209%_
                           _%var49211%_
                           _%Type49212%_
                           _%body49213%_
                           _%checked?49214%_)
                    (let* ((_%g4921649260%_
                            (lambda (_%g4921749256%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4921749256%_)))
                           (_%g4921549417%_
                            (lambda (_%g4921749264%_)
                              (if (gx#stx-pair? _%g4921749264%_)
                                  (let ((_%e4922549267%_
                                         (gx#syntax-e _%g4921749264%_)))
                                    (let ((_%hd4922649271%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4922549267%_)))
                                          (_%tl4922749274%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4922549267%_))))
                                      (if (gx#stx-pair? _%tl4922749274%_)
                                          (let ((_%e4922849277%_
                                                 (gx#syntax-e
                                                  _%tl4922749274%_)))
                                            (let ((_%hd4922949281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4922849277%_)))
                                                  (_%tl4923049284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4922849277%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4923049284%_)
                                                  (let ((_%e4923149287%_
                                                         (gx#syntax-e
                                                          _%tl4923049284%_)))
                                                    (let ((_%hd4923249291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4923149287%_)))
                                                          (_%tl4923349294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4923149287%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4923349294%_)
                                                          (let ((_%e4923449297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4923349294%_)))
                    (let ((_%hd4923549301%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4923449297%_)))
                          (_%tl4923649304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4923449297%_))))
                      (if (gx#stx-pair? _%tl4923649304%_)
                          (let ((_%e4923749307%_
                                 (gx#syntax-e _%tl4923649304%_)))
                            (let ((_%hd4923849311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4923749307%_)))
                                  (_%tl4923949314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4923749307%_))))
                              (if (gx#stx-pair? _%tl4923949314%_)
                                  (let ((_%e4924049317%_
                                         (gx#syntax-e _%tl4923949314%_)))
                                    (let ((_%hd4924149321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4924049317%_)))
                                          (_%tl4924249324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4924049317%_))))
                                      (if (gx#stx-pair? _%tl4924249324%_)
                                          (let ((_%e4924349327%_
                                                 (gx#syntax-e
                                                  _%tl4924249324%_)))
                                            (let ((_%hd4924449331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4924349327%_)))
                                                  (_%tl4924549334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4924349327%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4924449331%_)
                                                  (let ((_g84071_
                                                         (gx#syntax-split-splice
                                                          _%hd4924449331%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84072_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84071_)
                           (##vector-length _g84071_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84072_ 2)))
                    (error "Context expects 2 values" _g84072_)))
              (let ((_%target4924649337%_
                     (let () (declare (not safe)) (##vector-ref _g84071_ 0)))
                    (_%tl4924849340%_
                     (let () (declare (not safe)) (##vector-ref _g84071_ 1))))
                (if (gx#stx-null? _%tl4924849340%_)
                    (letrec ((_%loop4924949343%_
                              (lambda (_%hd4924749347%_ _%body4925349350%_)
                                (if (gx#stx-pair? _%hd4924749347%_)
                                    (let ((_%e4925049353%_
                                           (gx#syntax-e _%hd4924749347%_)))
                                      (let ((_%lp-hd4925149357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4925049353%_)))
                                            (_%lp-tl4925249360%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4925049353%_))))
                                        (_%loop4924949343%_
                                         _%lp-tl4925249360%_
                                         (cons _%lp-hd4925149357%_
                                               _%body4925349350%_))))
                                    (let ((_%body4925449363%_
                                           (reverse _%body4925349350%_)))
                                      (if (gx#stx-null? _%tl4924549334%_)
                                          ((lambda (_%L49367%_
                                                    _%L49369%_
                                                    _%L49370%_
                                                    _%L49371%_
                                                    _%L49372%_
                                                    _%L49373%_
                                                    _%L49374%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49372%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49373%_ '()))
                                         (cons _%L49372%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49374%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49372%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49371%_ '()))
                               (cons _%L49370%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49369%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4940849411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4940949414%_)
                      (cons _%g4940849411%_ _%g4940949414%_))
                    '()
                    _%L49367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4925449363%_
                                           _%hd4924149321%_
                                           _%hd4923849311%_
                                           _%hd4923549301%_
                                           _%hd4923249291%_
                                           _%hd4922949281%_
                                           _%hd4922649271%_)
                                          (_%g4921649260%_
                                           _%g4921749264%_)))))))
                      (_%loop4924949343%_ _%target4924649337%_ '()))
                    (_%g4921649260%_ _%g4921749264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4921649260%_
                                                   _%g4921749264%_))))
                                          (_%g4921649260%_ _%g4921749264%_))))
                                  (_%g4921649260%_ _%g4921749264%_))))
                          (_%g4921649260%_ _%g4921749264%_))))
                  (_%g4921649260%_ _%g4921749264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4921649260%_
                                                   _%g4921749264%_))))
                                          (_%g4921649260%_ _%g4921749264%_))))
                                  (_%g4921649260%_ _%g4921749264%_)))))
                      (_%g4921549417%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj83910 _%klass49209%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj83910
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj83910
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj83910
                                    'type-descriptor)))
                             _%var49211%_
                             _%klass49209%_
                             _%checked?49214%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49213%_)))))
                 (_%expand48303%_
                  (lambda (_%var49101%_
                           _%Type49103%_
                           _%body49104%_
                           _%checked?49105%_
                           _%checked-mutators?49106%_
                           _%maybe?49107%_)
                    (let* ((_%klass49109%_
                            (gx#syntax-local-value _%Type49103%_ false))
                           (_%expr-body49116%_
                            (_%expand-body48301%_
                             _%klass49109%_
                             _%var49101%_
                             _%Type49103%_
                             _%body49104%_
                             (let ((_%$e49112%_ _%checked?49105%_))
                               (if _%$e49112%_
                                   _%$e49112%_
                                   _%checked-mutators?49106%_)))))
                      (if _%checked?49105%_
                          (let* ((_%g4912149140%_
                                  (lambda (_%g4912249136%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4912249136%_)))
                                 (_%g4912049202%_
                                  (lambda (_%g4912249144%_)
                                    (if (gx#stx-pair? _%g4912249144%_)
                                        (let ((_%e4912649147%_
                                               (gx#syntax-e _%g4912249144%_)))
                                          (let ((_%hd4912749151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4912649147%_)))
                                                (_%tl4912849154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4912649147%_))))
                                            (if (gx#stx-pair? _%tl4912849154%_)
                                                (let ((_%e4912949157%_
                                                       (gx#syntax-e
                                                        _%tl4912849154%_)))
                                                  (let ((_%hd4913049161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4912949157%_)))
                                                        (_%tl4913149164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4912949157%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4913149164%_)
                                                        (let ((_%e4913249167%_
                                                               (gx#syntax-e
                                                                _%tl4913149164%_)))
                                                          (let ((_%hd4913349171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4913249167%_)))
                        (_%tl4913449174%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4913249167%_))))
                    (if (gx#stx-null? _%tl4913449174%_)
                        ((lambda (_%L49177%_ _%L49179%_ _%L49180%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49179%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49180%_ '())))
                                       (cons _%L49177%_ '()))))
                         _%hd4913349171%_
                         _%hd4913049161%_
                         _%hd4912749151%_)
                        (_%g4912149140%_ _%g4912249144%_))))
                (_%g4912149140%_ _%g4912249144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4912149140%_
                                                 _%g4912249144%_))))
                                        (_%g4912149140%_ _%g4912249144%_)))))
                            (_%g4912049202%_
                             (list (let ((_%instance?49206%_
                                          (let ((__obj83911 _%klass49109%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj83911
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj83911
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj83911
                                                 'predicate)))))
                                     (if _%maybe?49107%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49206%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49206%_))
                                   _%var49101%_
                                   _%expr-body49116%_)))
                          _%expr-body49116%_)))))
          (let* ((_%__stx7897478975%_ _%stx48298%_)
                 (_%g4830948452%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7897478975%_))))
            (let ((_%__kont7897778978%_
                   (lambda (_%L49029%_ _%L49031%_ _%L49032%_ _%L49033%_)
                     (let* ((_%g4905849066%_
                             (lambda (_%g4905949062%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4905949062%_)))
                            (_%g4905749093%_
                             (lambda (_%g4905949070%_)
                               ((lambda (_%L49073%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49033%_
                                                    (cons _%L49032%_
                                                          (cons _%L49073%_
                                                                '())))
                                              (foldr (lambda (_%g4908449087%_
                                                              _%g4908549090%_)
                                                       (cons _%g4908449087%_
                                                             _%g4908549090%_))
                                                     '()
                                                     _%L49029%_))))
                                _%g4905949070%_))))
                       (_%g4905749093%_
                        (let ((__obj83912 (gx#syntax-local-value _%L49031%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj83912
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj83912
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj83912
                               'identifier)))))))
                  (_%__kont7898178982%_
                   (lambda (_%L48907%_ _%L48909%_ _%L48910%_)
                     (_%expand48303%_
                      _%L48910%_
                      _%L48909%_
                      (foldr (lambda (_%g4893348936%_ _%g4893448939%_)
                               (cons _%g4893348936%_ _%g4893448939%_))
                             '()
                             _%L48907%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7898578986%_
                   (lambda (_%L48785%_ _%L48787%_ _%L48788%_)
                     (_%expand48303%_
                      _%L48788%_
                      _%L48787%_
                      (foldr (lambda (_%g4881148814%_ _%g4881248817%_)
                               (cons _%g4881148814%_ _%g4881248817%_))
                             '()
                             _%L48785%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7898978990%_
                   (lambda (_%L48663%_ _%L48665%_ _%L48666%_)
                     (_%expand48303%_
                      _%L48666%_
                      _%L48665%_
                      (foldr (lambda (_%g4868948692%_ _%g4869048695%_)
                               (cons _%g4868948692%_ _%g4869048695%_))
                             '()
                             _%L48663%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7899378994%_
                   (lambda (_%L48539%_ _%L48541%_ _%L48542%_)
                     (_%expand48303%_
                      _%L48542%_
                      _%L48541%_
                      (foldr (lambda (_%g4856748570%_ _%g4856848573%_)
                               (cons _%g4856748570%_ _%g4856848573%_))
                             '()
                             _%L48539%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7921379214%_
                      (lambda (_%e4842348459%_
                               _%hd4842448463%_
                               _%tl4842548466%_
                               _%e4842648469%_
                               _%hd4842748473%_
                               _%tl4842848476%_
                               _%e4842948479%_
                               _%hd4843048483%_
                               _%tl4843148486%_
                               _%e4843248489%_
                               _%hd4843348493%_
                               _%tl4843448496%_
                               _%e4843548499%_
                               _%hd4843648503%_
                               _%tl4843748506%_
                               _%__splice7899578996%_
                               _%target4843848509%_
                               _%tl4844048512%_)
                        (letrec ((_%loop4844148515%_
                                  (lambda (_%hd4843948519%_ _%body4844548522%_)
                                    (if (gx#stx-pair? _%hd4843948519%_)
                                        (let ((_%e4844248525%_
                                               (gx#syntax-e _%hd4843948519%_)))
                                          (let ((_%lp-tl4844448532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4844248525%_)))
                                                (_%lp-hd4844348529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4844248525%_))))
                                            (_%loop4844148515%_
                                             _%lp-tl4844448532%_
                                             (cons _%lp-hd4844348529%_
                                                   _%body4844548522%_))))
                                        (let ((_%body4844648535%_
                                               (reverse _%body4844548522%_)))
                                          (let ((_%L48539%_ _%body4844648535%_)
                                                (_%L48541%_ _%hd4843648503%_)
                                                (_%L48542%_ _%hd4843048483%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48541%_))
                                                (_%__kont7899378994%_
                                                 _%L48539%_
                                                 _%L48541%_
                                                 _%L48542%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))))))))
                          (_%loop4844148515%_ _%target4843848509%_ '()))))
                     (_%__match7916979170%_
                      (lambda (_%e4839648583%_
                               _%hd4839748587%_
                               _%tl4839848590%_
                               _%e4839948593%_
                               _%hd4840048597%_
                               _%tl4840148600%_
                               _%e4840248603%_
                               _%hd4840348607%_
                               _%tl4840448610%_
                               _%e4840548613%_
                               _%hd4840648617%_
                               _%tl4840748620%_
                               _%e4840848623%_
                               _%hd4840948627%_
                               _%tl4841048630%_
                               _%__splice7899178992%_
                               _%target4841148633%_
                               _%tl4841348636%_)
                        (letrec ((_%loop4841448639%_
                                  (lambda (_%hd4841248643%_ _%body4841848646%_)
                                    (if (gx#stx-pair? _%hd4841248643%_)
                                        (let ((_%e4841548649%_
                                               (gx#syntax-e _%hd4841248643%_)))
                                          (let ((_%lp-tl4841748656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841548649%_)))
                                                (_%lp-hd4841648653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841548649%_))))
                                            (_%loop4841448639%_
                                             _%lp-tl4841748656%_
                                             (cons _%lp-hd4841648653%_
                                                   _%body4841848646%_))))
                                        (let ((_%body4841948659%_
                                               (reverse _%body4841848646%_)))
                                          (let ((_%L48663%_ _%body4841948659%_)
                                                (_%L48665%_ _%hd4840948627%_)
                                                (_%L48666%_ _%hd4840348607%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48665%_))
                                                (_%__kont7898978990%_
                                                 _%L48663%_
                                                 _%L48665%_
                                                 _%L48666%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))))))))
                          (_%loop4841448639%_ _%target4841148633%_ '()))))
                     (_%__match7912579126%_
                      (lambda (_%e4836948705%_
                               _%hd4837048709%_
                               _%tl4837148712%_
                               _%e4837248715%_
                               _%hd4837348719%_
                               _%tl4837448722%_
                               _%e4837548725%_
                               _%hd4837648729%_
                               _%tl4837748732%_
                               _%e4837848735%_
                               _%hd4837948739%_
                               _%tl4838048742%_
                               _%e4838148745%_
                               _%hd4838248749%_
                               _%tl4838348752%_
                               _%__splice7898778988%_
                               _%target4838448755%_
                               _%tl4838648758%_)
                        (letrec ((_%loop4838748761%_
                                  (lambda (_%hd4838548765%_ _%body4839148768%_)
                                    (if (gx#stx-pair? _%hd4838548765%_)
                                        (let ((_%e4838848771%_
                                               (gx#syntax-e _%hd4838548765%_)))
                                          (let ((_%lp-tl4839048778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838848771%_)))
                                                (_%lp-hd4838948775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838848771%_))))
                                            (_%loop4838748761%_
                                             _%lp-tl4839048778%_
                                             (cons _%lp-hd4838948775%_
                                                   _%body4839148768%_))))
                                        (let ((_%body4839248781%_
                                               (reverse _%body4839148768%_)))
                                          (let ((_%L48785%_ _%body4839248781%_)
                                                (_%L48787%_ _%hd4838248749%_)
                                                (_%L48788%_ _%hd4837648729%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48787%_))
                                                (_%__kont7898578986%_
                                                 _%L48785%_
                                                 _%L48787%_
                                                 _%L48788%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))))))))
                          (_%loop4838748761%_ _%target4838448755%_ '()))))
                     (_%__match7908179082%_
                      (lambda (_%e4834248827%_
                               _%hd4834348831%_
                               _%tl4834448834%_
                               _%e4834548837%_
                               _%hd4834648841%_
                               _%tl4834748844%_
                               _%e4834848847%_
                               _%hd4834948851%_
                               _%tl4835048854%_
                               _%e4835148857%_
                               _%hd4835248861%_
                               _%tl4835348864%_
                               _%e4835448867%_
                               _%hd4835548871%_
                               _%tl4835648874%_
                               _%__splice7898378984%_
                               _%target4835748877%_
                               _%tl4835948880%_)
                        (letrec ((_%loop4836048883%_
                                  (lambda (_%hd4835848887%_ _%body4836448890%_)
                                    (if (gx#stx-pair? _%hd4835848887%_)
                                        (let ((_%e4836148893%_
                                               (gx#syntax-e _%hd4835848887%_)))
                                          (let ((_%lp-tl4836348900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4836148893%_)))
                                                (_%lp-hd4836248897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4836148893%_))))
                                            (_%loop4836048883%_
                                             _%lp-tl4836348900%_
                                             (cons _%lp-hd4836248897%_
                                                   _%body4836448890%_))))
                                        (let ((_%body4836548903%_
                                               (reverse _%body4836448890%_)))
                                          (let ((_%L48907%_ _%body4836548903%_)
                                                (_%L48909%_ _%hd4835548871%_)
                                                (_%L48910%_ _%hd4834948851%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48909%_))
                                                (_%__kont7898178982%_
                                                 _%L48907%_
                                                 _%L48909%_
                                                 _%L48910%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))))))))
                          (_%loop4836048883%_ _%target4835748877%_ '()))))
                     (_%__match7906179062%_
                      (lambda (_%e4834248827%_
                               _%hd4834348831%_
                               _%tl4834448834%_
                               _%e4834548837%_
                               _%hd4834648841%_
                               _%tl4834748844%_
                               _%e4834848847%_
                               _%hd4834948851%_
                               _%tl4835048854%_
                               _%e4835148857%_
                               _%hd4835248861%_
                               _%tl4835348864%_)
                        (if (gx#identifier? _%hd4835248861%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84073_|
                                 _%hd4835248861%_)
                                (if (gx#stx-pair? _%tl4835348864%_)
                                    (let ((_%e4835448867%_
                                           (gx#syntax-e _%tl4835348864%_)))
                                      (let ((_%tl4835648874%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4835448867%_)))
                                            (_%hd4835548871%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4835448867%_))))
                                        (if (gx#stx-null? _%tl4835648874%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4834748844%_)
                                                (let ((_%__splice7898378984%_
                                                       (gx#syntax-split-splice
                                                        _%tl4834748844%_
                                                        '0)))
                                                  (let ((_%tl4835948880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7898378984%_
                                                            '1)))
                                                        (_%target4835748877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7898378984%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4835948880%_)
                                                        (_%__match7908179082%_
                                                         _%e4834248827%_
                                                         _%hd4834348831%_
                                                         _%tl4834448834%_
                                                         _%e4834548837%_
                                                         _%hd4834648841%_
                                                         _%tl4834748844%_
                                                         _%e4834848847%_
                                                         _%hd4834948851%_
                                                         _%tl4835048854%_
                                                         _%e4835148857%_
                                                         _%hd4835248861%_
                                                         _%tl4835348864%_
                                                         _%e4835448867%_
                                                         _%hd4835548871%_
                                                         _%tl4835648874%_
                                                         _%__splice7898378984%_
                                                         _%target4835748877%_
                                                         _%tl4835948880%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4830948452%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4830948452%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4830948452%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84074_|
                                     _%hd4835248861%_)
                                    (if (gx#stx-pair? _%tl4835348864%_)
                                        (let ((_%e4838148745%_
                                               (gx#syntax-e _%tl4835348864%_)))
                                          (let ((_%tl4838348752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838148745%_)))
                                                (_%hd4838248749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838148745%_))))
                                            (if (gx#stx-null? _%tl4838348752%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4834748844%_)
                                                    (let ((_%__splice7898778988%_
                                                           (gx#syntax-split-splice
                                                            _%tl4834748844%_
                                                            '0)))
                                                      (let ((_%tl4838648758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7898778988%_ '1)))
                    (_%target4838448755%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7898778988%_ '0))))
                (if (gx#stx-null? _%tl4838648758%_)
                    (_%__match7912579126%_
                     _%e4834248827%_
                     _%hd4834348831%_
                     _%tl4834448834%_
                     _%e4834548837%_
                     _%hd4834648841%_
                     _%tl4834748844%_
                     _%e4834848847%_
                     _%hd4834948851%_
                     _%tl4835048854%_
                     _%e4835148857%_
                     _%hd4835248861%_
                     _%tl4835348864%_
                     _%e4838148745%_
                     _%hd4838248749%_
                     _%tl4838348752%_
                     _%__splice7898778988%_
                     _%target4838448755%_
                     _%tl4838648758%_)
                    (let () (declare (not safe)) (_%g4830948452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4830948452%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4830948452%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84075_|
                                         _%hd4835248861%_)
                                        (if (gx#stx-pair? _%tl4835348864%_)
                                            (let ((_%e4840848623%_
                                                   (gx#syntax-e
                                                    _%tl4835348864%_)))
                                              (let ((_%tl4841048630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4840848623%_)))
                                                    (_%hd4840948627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4840848623%_))))
                                                (if (gx#stx-null?
                                                     _%tl4841048630%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4834748844%_)
                                                        (let ((_%__splice7899178992%_
                                                               (gx#syntax-split-splice
                                                                _%tl4834748844%_
                                                                '0)))
                                                          (let ((_%tl4841348636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7899178992%_ '1)))
                        (_%target4841148633%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7899178992%_ '0))))
                    (if (gx#stx-null? _%tl4841348636%_)
                        (_%__match7916979170%_
                         _%e4834248827%_
                         _%hd4834348831%_
                         _%tl4834448834%_
                         _%e4834548837%_
                         _%hd4834648841%_
                         _%tl4834748844%_
                         _%e4834848847%_
                         _%hd4834948851%_
                         _%tl4835048854%_
                         _%e4835148857%_
                         _%hd4835248861%_
                         _%tl4835348864%_
                         _%e4840848623%_
                         _%hd4840948627%_
                         _%tl4841048630%_
                         _%__splice7899178992%_
                         _%target4841148633%_
                         _%tl4841348636%_)
                        (let () (declare (not safe)) (_%g4830948452%_)))))
                (let () (declare (not safe)) (_%g4830948452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4830948452%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4830948452%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84076_|
                                             _%hd4835248861%_)
                                            (if (gx#stx-pair? _%tl4835348864%_)
                                                (let ((_%e4843548499%_
                                                       (gx#syntax-e
                                                        _%tl4835348864%_)))
                                                  (let ((_%tl4843748506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4843548499%_)))
                                                        (_%hd4843648503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4843548499%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4843748506%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4834748844%_)
                                                            (let ((_%__splice7899578996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4834748844%_ '0)))
                      (let ((_%tl4844048512%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7899578996%_ '1)))
                            (_%target4843848509%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7899578996%_ '0))))
                        (if (gx#stx-null? _%tl4844048512%_)
                            (_%__match7921379214%_
                             _%e4834248827%_
                             _%hd4834348831%_
                             _%tl4834448834%_
                             _%e4834548837%_
                             _%hd4834648841%_
                             _%tl4834748844%_
                             _%e4834848847%_
                             _%hd4834948851%_
                             _%tl4835048854%_
                             _%e4835148857%_
                             _%hd4835248861%_
                             _%tl4835348864%_
                             _%e4843548499%_
                             _%hd4843648503%_
                             _%tl4843748506%_
                             _%__splice7899578996%_
                             _%target4843848509%_
                             _%tl4844048512%_)
                            (let () (declare (not safe)) (_%g4830948452%_)))))
                    (let () (declare (not safe)) (_%g4830948452%_)))
                (let () (declare (not safe)) (_%g4830948452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4830948452%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4830948452%_))))))
                            (let () (declare (not safe)) (_%g4830948452%_)))))
                     (_%__match7903779038%_
                      (lambda (_%e4831548949%_
                               _%hd4831648953%_
                               _%tl4831748956%_
                               _%e4831848959%_
                               _%hd4831948963%_
                               _%tl4832048966%_
                               _%e4832148969%_
                               _%hd4832248973%_
                               _%tl4832348976%_
                               _%e4832448979%_
                               _%hd4832548983%_
                               _%tl4832648986%_
                               _%e4832748989%_
                               _%hd4832848993%_
                               _%tl4832948996%_
                               _%__splice7897978980%_
                               _%target4833048999%_
                               _%tl4833249002%_)
                        (letrec ((_%loop4833349005%_
                                  (lambda (_%hd4833149009%_ _%body4833749012%_)
                                    (if (gx#stx-pair? _%hd4833149009%_)
                                        (let ((_%e4833449015%_
                                               (gx#syntax-e _%hd4833149009%_)))
                                          (let ((_%lp-tl4833649022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4833449015%_)))
                                                (_%lp-hd4833549019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4833449015%_))))
                                            (_%loop4833349005%_
                                             _%lp-tl4833649022%_
                                             (cons _%lp-hd4833549019%_
                                                   _%body4833749012%_))))
                                        (let ((_%body4833849025%_
                                               (reverse _%body4833749012%_)))
                                          (let ((_%L49029%_ _%body4833849025%_)
                                                (_%L49031%_ _%hd4832848993%_)
                                                (_%L49032%_ _%hd4832548983%_)
                                                (_%L49033%_ _%hd4832248973%_))
                                            (if (let ((__tmp84077
                                                       (gx#syntax-local-value
                                                        _%L49031%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84077))
                                                (_%__kont7897778978%_
                                                 _%L49029%_
                                                 _%L49031%_
                                                 _%L49032%_
                                                 _%L49033%_)
                                                (_%__match7906179062%_
                                                 _%e4831548949%_
                                                 _%hd4831648953%_
                                                 _%tl4831748956%_
                                                 _%e4831848959%_
                                                 _%hd4831948963%_
                                                 _%tl4832048966%_
                                                 _%e4832148969%_
                                                 _%hd4832248973%_
                                                 _%tl4832348976%_
                                                 _%e4832448979%_
                                                 _%hd4832548983%_
                                                 _%tl4832648986%_))))))))
                          (_%loop4833349005%_ _%target4833048999%_ '())))))
                (if (gx#stx-pair? _%__stx7897478975%_)
                    (let ((_%e4831548949%_ (gx#syntax-e _%__stx7897478975%_)))
                      (let ((_%tl4831748956%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4831548949%_)))
                            (_%hd4831648953%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4831548949%_))))
                        (if (gx#stx-pair? _%tl4831748956%_)
                            (let ((_%e4831848959%_
                                   (gx#syntax-e _%tl4831748956%_)))
                              (let ((_%tl4832048966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4831848959%_)))
                                    (_%hd4831948963%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4831848959%_))))
                                (if (gx#stx-pair? _%hd4831948963%_)
                                    (let ((_%e4832148969%_
                                           (gx#syntax-e _%hd4831948963%_)))
                                      (let ((_%tl4832348976%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4832148969%_)))
                                            (_%hd4832248973%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4832148969%_))))
                                        (if (gx#stx-pair? _%tl4832348976%_)
                                            (let ((_%e4832448979%_
                                                   (gx#syntax-e
                                                    _%tl4832348976%_)))
                                              (let ((_%tl4832648986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4832448979%_)))
                                                    (_%hd4832548983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4832448979%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4832648986%_)
                                                    (let ((_%e4832748989%_
                                                           (gx#syntax-e
                                                            _%tl4832648986%_)))
                                                      (let ((_%tl4832948996%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4832748989%_)))
                    (_%hd4832848993%_
                     (let () (declare (not safe)) (##car _%e4832748989%_))))
                (if (gx#stx-null? _%tl4832948996%_)
                    (if (gx#stx-pair/null? _%tl4832048966%_)
                        (let ((_%__splice7897978980%_
                               (gx#syntax-split-splice _%tl4832048966%_ '0)))
                          (let ((_%tl4833249002%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7897978980%_ '1)))
                                (_%target4833048999%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7897978980%_ '0))))
                            (if (gx#stx-null? _%tl4833249002%_)
                                (_%__match7903779038%_
                                 _%e4831548949%_
                                 _%hd4831648953%_
                                 _%tl4831748956%_
                                 _%e4831848959%_
                                 _%hd4831948963%_
                                 _%tl4832048966%_
                                 _%e4832148969%_
                                 _%hd4832248973%_
                                 _%tl4832348976%_
                                 _%e4832448979%_
                                 _%hd4832548983%_
                                 _%tl4832648986%_
                                 _%e4832748989%_
                                 _%hd4832848993%_
                                 _%tl4832948996%_
                                 _%__splice7897978980%_
                                 _%target4833048999%_
                                 _%tl4833249002%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4830948452%_)))))
                        (let () (declare (not safe)) (_%g4830948452%_)))
                    (let () (declare (not safe)) (_%g4830948452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4830948452%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4830948452%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4830948452%_)))))
                            (let () (declare (not safe)) (_%g4830948452%_)))))
                    (let () (declare (not safe)) (_%g4830948452%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49427%_)
        (letrec ((_%expand-body49430%_
                  (lambda (_%var50431%_
                           _%Interface50433%_
                           _%body50434%_
                           _%checked?50435%_)
                    (let* ((_%type50437%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49427%_
                               _%Interface50433%_)))
                           (_%g5044050484%_
                            (lambda (_%g5044150480%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5044150480%_)))
                           (_%g5043950642%_
                            (lambda (_%g5044150488%_)
                              (if (gx#stx-pair? _%g5044150488%_)
                                  (let ((_%e5044950491%_
                                         (gx#syntax-e _%g5044150488%_)))
                                    (let ((_%hd5045050495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5044950491%_)))
                                          (_%tl5045150498%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5044950491%_))))
                                      (if (gx#stx-pair? _%tl5045150498%_)
                                          (let ((_%e5045250501%_
                                                 (gx#syntax-e
                                                  _%tl5045150498%_)))
                                            (let ((_%hd5045350505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5045250501%_)))
                                                  (_%tl5045450508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5045250501%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5045450508%_)
                                                  (let ((_%e5045550511%_
                                                         (gx#syntax-e
                                                          _%tl5045450508%_)))
                                                    (let ((_%hd5045650515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5045550511%_)))
                                                          (_%tl5045750518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5045550511%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5045750518%_)
                                                          (let ((_%e5045850521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5045750518%_)))
                    (let ((_%hd5045950525%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5045850521%_)))
                          (_%tl5046050528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5045850521%_))))
                      (if (gx#stx-pair? _%tl5046050528%_)
                          (let ((_%e5046150531%_
                                 (gx#syntax-e _%tl5046050528%_)))
                            (let ((_%hd5046250535%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5046150531%_)))
                                  (_%tl5046350538%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5046150531%_))))
                              (if (gx#stx-pair? _%tl5046350538%_)
                                  (let ((_%e5046450541%_
                                         (gx#syntax-e _%tl5046350538%_)))
                                    (let ((_%hd5046550545%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5046450541%_)))
                                          (_%tl5046650548%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5046450541%_))))
                                      (if (gx#stx-pair? _%tl5046650548%_)
                                          (let ((_%e5046750551%_
                                                 (gx#syntax-e
                                                  _%tl5046650548%_)))
                                            (let ((_%hd5046850555%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5046750551%_)))
                                                  (_%tl5046950558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5046750551%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5046850555%_)
                                                  (let ((_g84078_
                                                         (gx#syntax-split-splice
                                                          _%hd5046850555%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84078_)
                           (##vector-length _g84078_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84079_ 2)))
                    (error "Context expects 2 values" _g84079_)))
              (let ((_%target5047050561%_
                     (let () (declare (not safe)) (##vector-ref _g84078_ 0)))
                    (_%tl5047250564%_
                     (let () (declare (not safe)) (##vector-ref _g84078_ 1))))
                (if (gx#stx-null? _%tl5047250564%_)
                    (letrec ((_%loop5047350567%_
                              (lambda (_%hd5047150571%_ _%body5047750574%_)
                                (if (gx#stx-pair? _%hd5047150571%_)
                                    (let ((_%e5047450577%_
                                           (gx#syntax-e _%hd5047150571%_)))
                                      (let ((_%lp-hd5047550581%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5047450577%_)))
                                            (_%lp-tl5047650584%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5047450577%_))))
                                        (_%loop5047350567%_
                                         _%lp-tl5047650584%_
                                         (cons _%lp-hd5047550581%_
                                               _%body5047750574%_))))
                                    (let ((_%body5047850587%_
                                           (reverse _%body5047750574%_)))
                                      (if (gx#stx-null? _%tl5046950558%_)
                                          ((lambda (_%L50591%_
                                                    _%L50593%_
                                                    _%L50594%_
                                                    _%L50595%_
                                                    _%L50596%_
                                                    _%L50597%_
                                                    _%L50598%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50595%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50596%_ '()))
                                         (cons _%L50595%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50598%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50595%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50597%_ '()))
                               (cons _%L50594%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50593%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5063350636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5063450639%_)
                      (cons _%g5063350636%_ _%g5063450639%_))
                    '()
                    _%L50591%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5047850587%_
                                           _%hd5046550545%_
                                           _%hd5046250535%_
                                           _%hd5045950525%_
                                           _%hd5045650515%_
                                           _%hd5045350505%_
                                           _%hd5045050495%_)
                                          (_%g5044050484%_
                                           _%g5044150488%_)))))))
                      (_%loop5047350567%_ _%target5047050561%_ '()))
                    (_%g5044050484%_ _%g5044150488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5044050484%_
                                                   _%g5044150488%_))))
                                          (_%g5044050484%_ _%g5044150488%_))))
                                  (_%g5044050484%_ _%g5044150488%_))))
                          (_%g5044050484%_ _%g5044150488%_))))
                  (_%g5044050484%_ _%g5044150488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5044050484%_
                                                   _%g5044150488%_))))
                                          (_%g5044050484%_ _%g5044150488%_))))
                                  (_%g5044050484%_ _%g5044150488%_)))))
                      (_%g5043950642%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50437%_
                             (let ((__obj83913 _%type50437%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj83913
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj83913
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj83913
                                    'instance-type)))
                             _%var50431%_
                             _%checked?50435%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50434%_)))))
                 (_%expand49432%_
                  (lambda (_%var50230%_
                           _%Interface50232%_
                           _%body50233%_
                           _%checked?50234%_
                           _%checked-methods?50235%_
                           _%maybe?50236%_)
                    (let* ((_%g5023850246%_
                            (lambda (_%g5023950242%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5023950242%_)))
                           (_%g5023750423%_
                            (lambda (_%g5023950250%_)
                              ((lambda (_%L50253%_)
                                 (if _%checked?50234%_
                                     (if _%maybe?50236%_
                                         (let* ((_%g5026550280%_
                                                 (lambda (_%g5026650276%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5026650276%_)))
                                                (_%g5026450326%_
                                                 (lambda (_%g5026650284%_)
                                                   (if (gx#stx-pair?
                                                        _%g5026650284%_)
                                                       (let ((_%e5026950287%_
                                                              (gx#syntax-e
                                                               _%g5026650284%_)))
                                                         (let ((_%hd5027050291%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5026950287%_)))
                       (_%tl5027150294%_
                        (let () (declare (not safe)) (##cdr _%e5026950287%_))))
                   (if (gx#stx-pair? _%tl5027150294%_)
                       (let ((_%e5027250297%_ (gx#syntax-e _%tl5027150294%_)))
                         (let ((_%hd5027350301%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5027250297%_)))
                               (_%tl5027450304%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5027250297%_))))
                           (if (gx#stx-null? _%tl5027450304%_)
                               ((lambda (_%L50307%_ _%L50309%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50309%_
                                                    (cons (cons _%L50307%_
                                                                (cons _%L50309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50309%_
                                                                (cons _%L50253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50309%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5027350301%_
                                _%hd5027050291%_)
                               (_%g5026550280%_ _%g5026650284%_))))
                       (_%g5026550280%_ _%g5026650284%_))))
               (_%g5026550280%_ _%g5026650284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5026450326%_
                                            (list _%var50230%_
                                                  _%Interface50232%_)))
                                         (let* ((_%g5033050345%_
                                                 (lambda (_%g5033150341%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5033150341%_)))
                                                (_%g5032950389%_
                                                 (lambda (_%g5033150349%_)
                                                   (if (gx#stx-pair?
                                                        _%g5033150349%_)
                                                       (let ((_%e5033450352%_
                                                              (gx#syntax-e
                                                               _%g5033150349%_)))
                                                         (let ((_%hd5033550356%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5033450352%_)))
                       (_%tl5033650359%_
                        (let () (declare (not safe)) (##cdr _%e5033450352%_))))
                   (if (gx#stx-pair? _%tl5033650359%_)
                       (let ((_%e5033750362%_ (gx#syntax-e _%tl5033650359%_)))
                         (let ((_%hd5033850366%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5033750362%_)))
                               (_%tl5033950369%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5033750362%_))))
                           (if (gx#stx-null? _%tl5033950369%_)
                               ((lambda (_%L50372%_ _%L50374%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50374%_
                                                    (cons (cons _%L50372%_
                                                                (cons _%L50374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50253%_ '()))))
                                _%hd5033850366%_
                                _%hd5033550356%_)
                               (_%g5033050345%_ _%g5033150349%_))))
                       (_%g5033050345%_ _%g5033150349%_))))
               (_%g5033050345%_ _%g5033150349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5032950389%_
                                            (list _%var50230%_
                                                  _%Interface50232%_))))
                                     (if _%maybe?50236%_
                                         (let* ((_%g5039350401%_
                                                 (lambda (_%g5039450397%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5039450397%_)))
                                                (_%g5039250419%_
                                                 (lambda (_%g5039450405%_)
                                                   ((lambda (_%L50408%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50253%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50408%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5039450405%_))))
                                           (_%g5039250419%_ _%var50230%_))
                                         _%L50253%_)))
                               _%g5023950250%_))))
                      (_%g5023750423%_
                       (_%expand-body49430%_
                        _%var50230%_
                        _%Interface50232%_
                        _%body50233%_
                        (let ((_%$e50427%_ _%checked?50234%_))
                          (if _%$e50427%_
                              _%$e50427%_
                              _%checked-methods?50235%_))))))))
          (let* ((_%__stx7921679217%_ _%stx49427%_)
                 (_%g4943849581%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7921679217%_))))
            (let ((_%__kont7921979220%_
                   (lambda (_%L50158%_ _%L50160%_ _%L50161%_ _%L50162%_)
                     (let* ((_%g5018750195%_
                             (lambda (_%g5018850191%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5018850191%_)))
                            (_%g5018650222%_
                             (lambda (_%g5018850199%_)
                               ((lambda (_%L50202%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50162%_
                                                    (cons _%L50161%_
                                                          (cons _%L50202%_
                                                                '())))
                                              (foldr (lambda (_%g5021350216%_
                                                              _%g5021450219%_)
                                                       (cons _%g5021350216%_
                                                             _%g5021450219%_))
                                                     '()
                                                     _%L50158%_))))
                                _%g5018850199%_))))
                       (_%g5018650222%_
                        (let ((__obj83914 (gx#syntax-local-value _%L50160%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj83914
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj83914
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj83914
                               'identifier)))))))
                  (_%__kont7922379224%_
                   (lambda (_%L50036%_ _%L50038%_ _%L50039%_)
                     (_%expand49432%_
                      _%L50039%_
                      _%L50038%_
                      (foldr (lambda (_%g5006250065%_ _%g5006350068%_)
                               (cons _%g5006250065%_ _%g5006350068%_))
                             '()
                             _%L50036%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7922779228%_
                   (lambda (_%L49914%_ _%L49916%_ _%L49917%_)
                     (_%expand49432%_
                      _%L49917%_
                      _%L49916%_
                      (foldr (lambda (_%g4994049943%_ _%g4994149946%_)
                               (cons _%g4994049943%_ _%g4994149946%_))
                             '()
                             _%L49914%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7923179232%_
                   (lambda (_%L49792%_ _%L49794%_ _%L49795%_)
                     (_%expand49432%_
                      _%L49795%_
                      _%L49794%_
                      (foldr (lambda (_%g4981849821%_ _%g4981949824%_)
                               (cons _%g4981849821%_ _%g4981949824%_))
                             '()
                             _%L49792%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7923579236%_
                   (lambda (_%L49668%_ _%L49670%_ _%L49671%_)
                     (_%expand49432%_
                      _%L49671%_
                      _%L49670%_
                      (foldr (lambda (_%g4969649699%_ _%g4969749702%_)
                               (cons _%g4969649699%_ _%g4969749702%_))
                             '()
                             _%L49668%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7945579456%_
                      (lambda (_%e4955249588%_
                               _%hd4955349592%_
                               _%tl4955449595%_
                               _%e4955549598%_
                               _%hd4955649602%_
                               _%tl4955749605%_
                               _%e4955849608%_
                               _%hd4955949612%_
                               _%tl4956049615%_
                               _%e4956149618%_
                               _%hd4956249622%_
                               _%tl4956349625%_
                               _%e4956449628%_
                               _%hd4956549632%_
                               _%tl4956649635%_
                               _%__splice7923779238%_
                               _%target4956749638%_
                               _%tl4956949641%_)
                        (letrec ((_%loop4957049644%_
                                  (lambda (_%hd4956849648%_ _%body4957449651%_)
                                    (if (gx#stx-pair? _%hd4956849648%_)
                                        (let ((_%e4957149654%_
                                               (gx#syntax-e _%hd4956849648%_)))
                                          (let ((_%lp-tl4957349661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4957149654%_)))
                                                (_%lp-hd4957249658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4957149654%_))))
                                            (_%loop4957049644%_
                                             _%lp-tl4957349661%_
                                             (cons _%lp-hd4957249658%_
                                                   _%body4957449651%_))))
                                        (let ((_%body4957549664%_
                                               (reverse _%body4957449651%_)))
                                          (let ((_%L49668%_ _%body4957549664%_)
                                                (_%L49670%_ _%hd4956549632%_)
                                                (_%L49671%_ _%hd4955949612%_))
                                            (if (and (gx#identifier?
                                                      _%L49671%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49670%_)))
                                                (_%__kont7923579236%_
                                                 _%L49668%_
                                                 _%L49670%_
                                                 _%L49671%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))))))))
                          (_%loop4957049644%_ _%target4956749638%_ '()))))
                     (_%__match7941179412%_
                      (lambda (_%e4952549712%_
                               _%hd4952649716%_
                               _%tl4952749719%_
                               _%e4952849722%_
                               _%hd4952949726%_
                               _%tl4953049729%_
                               _%e4953149732%_
                               _%hd4953249736%_
                               _%tl4953349739%_
                               _%e4953449742%_
                               _%hd4953549746%_
                               _%tl4953649749%_
                               _%e4953749752%_
                               _%hd4953849756%_
                               _%tl4953949759%_
                               _%__splice7923379234%_
                               _%target4954049762%_
                               _%tl4954249765%_)
                        (letrec ((_%loop4954349768%_
                                  (lambda (_%hd4954149772%_ _%body4954749775%_)
                                    (if (gx#stx-pair? _%hd4954149772%_)
                                        (let ((_%e4954449778%_
                                               (gx#syntax-e _%hd4954149772%_)))
                                          (let ((_%lp-tl4954649785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4954449778%_)))
                                                (_%lp-hd4954549782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4954449778%_))))
                                            (_%loop4954349768%_
                                             _%lp-tl4954649785%_
                                             (cons _%lp-hd4954549782%_
                                                   _%body4954749775%_))))
                                        (let ((_%body4954849788%_
                                               (reverse _%body4954749775%_)))
                                          (let ((_%L49792%_ _%body4954849788%_)
                                                (_%L49794%_ _%hd4953849756%_)
                                                (_%L49795%_ _%hd4953249736%_))
                                            (if (and (gx#identifier?
                                                      _%L49795%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49794%_)))
                                                (_%__kont7923179232%_
                                                 _%L49792%_
                                                 _%L49794%_
                                                 _%L49795%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))))))))
                          (_%loop4954349768%_ _%target4954049762%_ '()))))
                     (_%__match7936779368%_
                      (lambda (_%e4949849834%_
                               _%hd4949949838%_
                               _%tl4950049841%_
                               _%e4950149844%_
                               _%hd4950249848%_
                               _%tl4950349851%_
                               _%e4950449854%_
                               _%hd4950549858%_
                               _%tl4950649861%_
                               _%e4950749864%_
                               _%hd4950849868%_
                               _%tl4950949871%_
                               _%e4951049874%_
                               _%hd4951149878%_
                               _%tl4951249881%_
                               _%__splice7922979230%_
                               _%target4951349884%_
                               _%tl4951549887%_)
                        (letrec ((_%loop4951649890%_
                                  (lambda (_%hd4951449894%_ _%body4952049897%_)
                                    (if (gx#stx-pair? _%hd4951449894%_)
                                        (let ((_%e4951749900%_
                                               (gx#syntax-e _%hd4951449894%_)))
                                          (let ((_%lp-tl4951949907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951749900%_)))
                                                (_%lp-hd4951849904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951749900%_))))
                                            (_%loop4951649890%_
                                             _%lp-tl4951949907%_
                                             (cons _%lp-hd4951849904%_
                                                   _%body4952049897%_))))
                                        (let ((_%body4952149910%_
                                               (reverse _%body4952049897%_)))
                                          (let ((_%L49914%_ _%body4952149910%_)
                                                (_%L49916%_ _%hd4951149878%_)
                                                (_%L49917%_ _%hd4950549858%_))
                                            (if (and (gx#identifier?
                                                      _%L49917%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49916%_)))
                                                (_%__kont7922779228%_
                                                 _%L49914%_
                                                 _%L49916%_
                                                 _%L49917%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))))))))
                          (_%loop4951649890%_ _%target4951349884%_ '()))))
                     (_%__match7932379324%_
                      (lambda (_%e4947149956%_
                               _%hd4947249960%_
                               _%tl4947349963%_
                               _%e4947449966%_
                               _%hd4947549970%_
                               _%tl4947649973%_
                               _%e4947749976%_
                               _%hd4947849980%_
                               _%tl4947949983%_
                               _%e4948049986%_
                               _%hd4948149990%_
                               _%tl4948249993%_
                               _%e4948349996%_
                               _%hd4948450000%_
                               _%tl4948550003%_
                               _%__splice7922579226%_
                               _%target4948650006%_
                               _%tl4948850009%_)
                        (letrec ((_%loop4948950012%_
                                  (lambda (_%hd4948750016%_ _%body4949350019%_)
                                    (if (gx#stx-pair? _%hd4948750016%_)
                                        (let ((_%e4949050022%_
                                               (gx#syntax-e _%hd4948750016%_)))
                                          (let ((_%lp-tl4949250029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4949050022%_)))
                                                (_%lp-hd4949150026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4949050022%_))))
                                            (_%loop4948950012%_
                                             _%lp-tl4949250029%_
                                             (cons _%lp-hd4949150026%_
                                                   _%body4949350019%_))))
                                        (let ((_%body4949450032%_
                                               (reverse _%body4949350019%_)))
                                          (let ((_%L50036%_ _%body4949450032%_)
                                                (_%L50038%_ _%hd4948450000%_)
                                                (_%L50039%_ _%hd4947849980%_))
                                            (if (and (gx#identifier?
                                                      _%L50039%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50038%_)))
                                                (_%__kont7922379224%_
                                                 _%L50036%_
                                                 _%L50038%_
                                                 _%L50039%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))))))))
                          (_%loop4948950012%_ _%target4948650006%_ '()))))
                     (_%__match7930379304%_
                      (lambda (_%e4947149956%_
                               _%hd4947249960%_
                               _%tl4947349963%_
                               _%e4947449966%_
                               _%hd4947549970%_
                               _%tl4947649973%_
                               _%e4947749976%_
                               _%hd4947849980%_
                               _%tl4947949983%_
                               _%e4948049986%_
                               _%hd4948149990%_
                               _%tl4948249993%_)
                        (if (gx#identifier? _%hd4948149990%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84080_|
                                 _%hd4948149990%_)
                                (if (gx#stx-pair? _%tl4948249993%_)
                                    (let ((_%e4948349996%_
                                           (gx#syntax-e _%tl4948249993%_)))
                                      (let ((_%tl4948550003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4948349996%_)))
                                            (_%hd4948450000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4948349996%_))))
                                        (if (gx#stx-null? _%tl4948550003%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4947649973%_)
                                                (let ((_%__splice7922579226%_
                                                       (gx#syntax-split-splice
                                                        _%tl4947649973%_
                                                        '0)))
                                                  (let ((_%tl4948850009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7922579226%_
                                                            '1)))
                                                        (_%target4948650006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7922579226%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4948850009%_)
                                                        (_%__match7932379324%_
                                                         _%e4947149956%_
                                                         _%hd4947249960%_
                                                         _%tl4947349963%_
                                                         _%e4947449966%_
                                                         _%hd4947549970%_
                                                         _%tl4947649973%_
                                                         _%e4947749976%_
                                                         _%hd4947849980%_
                                                         _%tl4947949983%_
                                                         _%e4948049986%_
                                                         _%hd4948149990%_
                                                         _%tl4948249993%_
                                                         _%e4948349996%_
                                                         _%hd4948450000%_
                                                         _%tl4948550003%_
                                                         _%__splice7922579226%_
                                                         _%target4948650006%_
                                                         _%tl4948850009%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4943849581%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4943849581%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4943849581%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84081_|
                                     _%hd4948149990%_)
                                    (if (gx#stx-pair? _%tl4948249993%_)
                                        (let ((_%e4951049874%_
                                               (gx#syntax-e _%tl4948249993%_)))
                                          (let ((_%tl4951249881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951049874%_)))
                                                (_%hd4951149878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951049874%_))))
                                            (if (gx#stx-null? _%tl4951249881%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4947649973%_)
                                                    (let ((_%__splice7922979230%_
                                                           (gx#syntax-split-splice
                                                            _%tl4947649973%_
                                                            '0)))
                                                      (let ((_%tl4951549887%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7922979230%_ '1)))
                    (_%target4951349884%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7922979230%_ '0))))
                (if (gx#stx-null? _%tl4951549887%_)
                    (_%__match7936779368%_
                     _%e4947149956%_
                     _%hd4947249960%_
                     _%tl4947349963%_
                     _%e4947449966%_
                     _%hd4947549970%_
                     _%tl4947649973%_
                     _%e4947749976%_
                     _%hd4947849980%_
                     _%tl4947949983%_
                     _%e4948049986%_
                     _%hd4948149990%_
                     _%tl4948249993%_
                     _%e4951049874%_
                     _%hd4951149878%_
                     _%tl4951249881%_
                     _%__splice7922979230%_
                     _%target4951349884%_
                     _%tl4951549887%_)
                    (let () (declare (not safe)) (_%g4943849581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4943849581%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4943849581%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84082_|
                                         _%hd4948149990%_)
                                        (if (gx#stx-pair? _%tl4948249993%_)
                                            (let ((_%e4953749752%_
                                                   (gx#syntax-e
                                                    _%tl4948249993%_)))
                                              (let ((_%tl4953949759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4953749752%_)))
                                                    (_%hd4953849756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4953749752%_))))
                                                (if (gx#stx-null?
                                                     _%tl4953949759%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4947649973%_)
                                                        (let ((_%__splice7923379234%_
                                                               (gx#syntax-split-splice
                                                                _%tl4947649973%_
                                                                '0)))
                                                          (let ((_%tl4954249765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7923379234%_ '1)))
                        (_%target4954049762%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7923379234%_ '0))))
                    (if (gx#stx-null? _%tl4954249765%_)
                        (_%__match7941179412%_
                         _%e4947149956%_
                         _%hd4947249960%_
                         _%tl4947349963%_
                         _%e4947449966%_
                         _%hd4947549970%_
                         _%tl4947649973%_
                         _%e4947749976%_
                         _%hd4947849980%_
                         _%tl4947949983%_
                         _%e4948049986%_
                         _%hd4948149990%_
                         _%tl4948249993%_
                         _%e4953749752%_
                         _%hd4953849756%_
                         _%tl4953949759%_
                         _%__splice7923379234%_
                         _%target4954049762%_
                         _%tl4954249765%_)
                        (let () (declare (not safe)) (_%g4943849581%_)))))
                (let () (declare (not safe)) (_%g4943849581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4943849581%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4943849581%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84083_|
                                             _%hd4948149990%_)
                                            (if (gx#stx-pair? _%tl4948249993%_)
                                                (let ((_%e4956449628%_
                                                       (gx#syntax-e
                                                        _%tl4948249993%_)))
                                                  (let ((_%tl4956649635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4956449628%_)))
                                                        (_%hd4956549632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4956449628%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4956649635%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4947649973%_)
                                                            (let ((_%__splice7923779238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4947649973%_ '0)))
                      (let ((_%tl4956949641%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7923779238%_ '1)))
                            (_%target4956749638%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7923779238%_ '0))))
                        (if (gx#stx-null? _%tl4956949641%_)
                            (_%__match7945579456%_
                             _%e4947149956%_
                             _%hd4947249960%_
                             _%tl4947349963%_
                             _%e4947449966%_
                             _%hd4947549970%_
                             _%tl4947649973%_
                             _%e4947749976%_
                             _%hd4947849980%_
                             _%tl4947949983%_
                             _%e4948049986%_
                             _%hd4948149990%_
                             _%tl4948249993%_
                             _%e4956449628%_
                             _%hd4956549632%_
                             _%tl4956649635%_
                             _%__splice7923779238%_
                             _%target4956749638%_
                             _%tl4956949641%_)
                            (let () (declare (not safe)) (_%g4943849581%_)))))
                    (let () (declare (not safe)) (_%g4943849581%_)))
                (let () (declare (not safe)) (_%g4943849581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4943849581%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4943849581%_))))))
                            (let () (declare (not safe)) (_%g4943849581%_)))))
                     (_%__match7927979280%_
                      (lambda (_%e4944450078%_
                               _%hd4944550082%_
                               _%tl4944650085%_
                               _%e4944750088%_
                               _%hd4944850092%_
                               _%tl4944950095%_
                               _%e4945050098%_
                               _%hd4945150102%_
                               _%tl4945250105%_
                               _%e4945350108%_
                               _%hd4945450112%_
                               _%tl4945550115%_
                               _%e4945650118%_
                               _%hd4945750122%_
                               _%tl4945850125%_
                               _%__splice7922179222%_
                               _%target4945950128%_
                               _%tl4946150131%_)
                        (letrec ((_%loop4946250134%_
                                  (lambda (_%hd4946050138%_ _%body4946650141%_)
                                    (if (gx#stx-pair? _%hd4946050138%_)
                                        (let ((_%e4946350144%_
                                               (gx#syntax-e _%hd4946050138%_)))
                                          (let ((_%lp-tl4946550151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4946350144%_)))
                                                (_%lp-hd4946450148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4946350144%_))))
                                            (_%loop4946250134%_
                                             _%lp-tl4946550151%_
                                             (cons _%lp-hd4946450148%_
                                                   _%body4946650141%_))))
                                        (let ((_%body4946750154%_
                                               (reverse _%body4946650141%_)))
                                          (let ((_%L50158%_ _%body4946750154%_)
                                                (_%L50160%_ _%hd4945750122%_)
                                                (_%L50161%_ _%hd4945450112%_)
                                                (_%L50162%_ _%hd4945150102%_))
                                            (if (let ((__tmp84084
                                                       (gx#syntax-local-value
                                                        _%L50160%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84084))
                                                (_%__kont7921979220%_
                                                 _%L50158%_
                                                 _%L50160%_
                                                 _%L50161%_
                                                 _%L50162%_)
                                                (_%__match7930379304%_
                                                 _%e4944450078%_
                                                 _%hd4944550082%_
                                                 _%tl4944650085%_
                                                 _%e4944750088%_
                                                 _%hd4944850092%_
                                                 _%tl4944950095%_
                                                 _%e4945050098%_
                                                 _%hd4945150102%_
                                                 _%tl4945250105%_
                                                 _%e4945350108%_
                                                 _%hd4945450112%_
                                                 _%tl4945550115%_))))))))
                          (_%loop4946250134%_ _%target4945950128%_ '())))))
                (if (gx#stx-pair? _%__stx7921679217%_)
                    (let ((_%e4944450078%_ (gx#syntax-e _%__stx7921679217%_)))
                      (let ((_%tl4944650085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4944450078%_)))
                            (_%hd4944550082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4944450078%_))))
                        (if (gx#stx-pair? _%tl4944650085%_)
                            (let ((_%e4944750088%_
                                   (gx#syntax-e _%tl4944650085%_)))
                              (let ((_%tl4944950095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4944750088%_)))
                                    (_%hd4944850092%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4944750088%_))))
                                (if (gx#stx-pair? _%hd4944850092%_)
                                    (let ((_%e4945050098%_
                                           (gx#syntax-e _%hd4944850092%_)))
                                      (let ((_%tl4945250105%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4945050098%_)))
                                            (_%hd4945150102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4945050098%_))))
                                        (if (gx#stx-pair? _%tl4945250105%_)
                                            (let ((_%e4945350108%_
                                                   (gx#syntax-e
                                                    _%tl4945250105%_)))
                                              (let ((_%tl4945550115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4945350108%_)))
                                                    (_%hd4945450112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4945350108%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4945550115%_)
                                                    (let ((_%e4945650118%_
                                                           (gx#syntax-e
                                                            _%tl4945550115%_)))
                                                      (let ((_%tl4945850125%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4945650118%_)))
                    (_%hd4945750122%_
                     (let () (declare (not safe)) (##car _%e4945650118%_))))
                (if (gx#stx-null? _%tl4945850125%_)
                    (if (gx#stx-pair/null? _%tl4944950095%_)
                        (let ((_%__splice7922179222%_
                               (gx#syntax-split-splice _%tl4944950095%_ '0)))
                          (let ((_%tl4946150131%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7922179222%_ '1)))
                                (_%target4945950128%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7922179222%_ '0))))
                            (if (gx#stx-null? _%tl4946150131%_)
                                (_%__match7927979280%_
                                 _%e4944450078%_
                                 _%hd4944550082%_
                                 _%tl4944650085%_
                                 _%e4944750088%_
                                 _%hd4944850092%_
                                 _%tl4944950095%_
                                 _%e4945050098%_
                                 _%hd4945150102%_
                                 _%tl4945250105%_
                                 _%e4945350108%_
                                 _%hd4945450112%_
                                 _%tl4945550115%_
                                 _%e4945650118%_
                                 _%hd4945750122%_
                                 _%tl4945850125%_
                                 _%__splice7922179222%_
                                 _%target4945950128%_
                                 _%tl4946150131%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4943849581%_)))))
                        (let () (declare (not safe)) (_%g4943849581%_)))
                    (let () (declare (not safe)) (_%g4943849581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4943849581%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4943849581%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4943849581%_)))))
                            (let () (declare (not safe)) (_%g4943849581%_)))))
                    (let () (declare (not safe)) (_%g4943849581%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50652%_)
        (let* ((_%__stx7945879459%_ _%stx50652%_)
               (_%g5065750717%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7945879459%_))))
          (let ((_%__kont7946179462%_
                 (lambda (_%L51279%_ _%L51281%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51281%_ '()))
                               (foldr (lambda (_%g5129751300%_ _%g5129851303%_)
                                        (cons _%g5129751300%_ _%g5129851303%_))
                                      '()
                                      _%L51279%_)))))
                (_%__kont7946579466%_
                 (lambda (_%L50865%_ _%L50867%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50867%_)
                       (let* ((_%g5088750894%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50652%_
                                _%L50867%_))
                              (_%E5088950900%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5088750894%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5089051198%_
                               (lambda (_%parts50904%_ _%var50906%_)
                                 (let ((_%$e50908%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50906%_))))
                                   (if _%$e50908%_
                                       ((lambda (_%te50912%_)
                                          (let _%loop50915%_ ((_%parts50918%_
                                                               _%parts50904%_)
                                                              (_%type50920%_
                                                               (##direct-structure-ref
                                                                _%te50912%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50921%_
                                                               _%var50906%_)
                                                              (_%checked-method?50922%_
                                                               (##direct-structure-ref
                                                                _%te50912%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50923%_
                                                               '#f))
                                            (let* ((_%parts5092450932%_
                                                    _%parts50918%_)
                                                   (_%else5092650993%_
                                                    (lambda ()
                                                      (let* ((_%g5094450952%_
                                                              (lambda (_%g5094550948%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5094550948%_)))
                     (_%g5094350989%_
                      (lambda (_%g5094550956%_)
                        ((lambda (_%L50959%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50959%_
                                       (foldr (lambda (_%g5098050983%_
                                                       _%g5098150986%_)
                                                (cons _%g5098050983%_
                                                      _%g5098150986%_))
                                              '()
                                              _%L50865%_))))
                         _%g5094550956%_))))
                (_%g5094350989%_ _%object50921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5092851172%_
                                                    (lambda (_%rest50997%_
                                                             _%part50999%_)
                                                      (if (and (not _%nil-check?50923%_)
                                                               (let ((__tmp84085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part50999%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp84085)))
                  (let ((_%str51003%_ (symbol->string _%part50999%_)))
                    (_%loop50915%_
                     (cons (let ((__tmp84086
                                  (substring
                                   _%str51003%_
                                   '1
                                   (string-length _%str51003%_))))
                             (declare (not safe))
                             (##string->symbol __tmp84086))
                           _%rest50997%_)
                     _%type50920%_
                     _%object50921%_
                     _%checked-method?50922%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50920%_))
                      (let* ((_%g5100851023%_
                              (lambda (_%g5100951019%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5100951019%_)))
                             (_%g5100751092%_
                              (lambda (_%g5100951027%_)
                                (if (gx#stx-pair? _%g5100951027%_)
                                    (let ((_%e5101251030%_
                                           (gx#syntax-e _%g5100951027%_)))
                                      (let ((_%hd5101351034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5101251030%_)))
                                            (_%tl5101451037%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5101251030%_))))
                                        (if (gx#stx-pair? _%tl5101451037%_)
                                            (let ((_%e5101551040%_
                                                   (gx#syntax-e
                                                    _%tl5101451037%_)))
                                              (let ((_%hd5101651044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5101551040%_)))
                                                    (_%tl5101751047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5101551040%_))))
                                                (if (gx#stx-null?
                                                     _%tl5101751047%_)
                                                    ((lambda (_%L51050%_
                                                              _%L51052%_)
                                                       (if (null? _%rest50997%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51050%_ (cons _%L51052%_ '()))
                               (foldr (lambda (_%g5107151074%_ _%g5107251077%_)
                                        (cons _%g5107151074%_ _%g5107251077%_))
                                      '()
                                      _%L50865%_)))
                   (let ((_%$e51080%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50920%_
                           _%part50999%_)))
                     (if _%$e51080%_
                         ((lambda (_%slot-type51084%_)
                            (let ((_%slot-type51087%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50652%_
                                      _%slot-type51084%_))))
                              (_%loop50915%_
                               _%rest50997%_
                               _%slot-type51087%_
                               (cons _%L51050%_ (cons _%L51052%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50920%_
                                _%part50999%_)
                               '#f)))
                          _%$e51080%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50652%_
                          _%L50867%_
                          _%part50999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5101651044%_
                                                     _%hd5101351034%_)
                                                    (_%g5100851023%_
                                                     _%g5100951027%_))))
                                            (_%g5100851023%_
                                             _%g5100951027%_))))
                                    (_%g5100851023%_ _%g5100951027%_)))))
                        (_%g5100751092%_
                         (list (if _%nil-check?50923%_
                                   (cons 'check-nil!
                                         (cons _%object50921%_ '()))
                                   _%object50921%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50652%_
                                _%type50920%_
                                _%part50999%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50920%_))
                          (if (null? _%rest50997%_)
                              (let* ((_%g5109851113%_
                                      (lambda (_%g5109951109%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5109951109%_)))
                                     (_%g5109751166%_
                                      (lambda (_%g5109951117%_)
                                        (if (gx#stx-pair? _%g5109951117%_)
                                            (let ((_%e5110251120%_
                                                   (gx#syntax-e
                                                    _%g5109951117%_)))
                                              (let ((_%hd5110351124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5110251120%_)))
                                                    (_%tl5110451127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5110251120%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5110451127%_)
                                                    (let ((_%e5110551130%_
                                                           (gx#syntax-e
                                                            _%tl5110451127%_)))
                                                      (let ((_%hd5110651134%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5110551130%_)))
                    (_%tl5110751137%_
                     (let () (declare (not safe)) (##cdr _%e5110551130%_))))
                (if (gx#stx-null? _%tl5110751137%_)
                    ((lambda (_%L51140%_ _%L51142%_)
                       (cons _%L51140%_
                             (cons _%L51142%_
                                   (foldr (lambda (_%g5115751160%_
                                                   _%g5115851163%_)
                                            (cons _%g5115751160%_
                                                  _%g5115851163%_))
                                          '()
                                          _%L50865%_))))
                     _%hd5110651134%_
                     _%hd5110351124%_)
                    (_%g5109851113%_ _%g5109951117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5109851113%_
                                                     _%g5109951117%_))))
                                            (_%g5109851113%_
                                             _%g5109951117%_)))))
                                (_%g5109751166%_
                                 (list (if _%nil-check?50923%_
                                           (cons 'check-nil!
                                                 (cons _%object50921%_ '()))
                                           _%object50921%_)
                                       (gx#stx-identifier
                                        _%L50867%_
                                        (if _%checked-method?50922%_ '"" '"&")
                                        (let ((__obj83915 _%type50920%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj83915
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj83915
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj83915
                                               'name)))
                                        '"-"
                                        _%part50999%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50652%_
                               _%L50867%_
                               _%part50999%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50652%_
                           _%type50920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5092450932%_)
                                                  (let ((_%hd5092951176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5092450932%_)))
                                                        (_%tl5093051179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5092450932%_))))
                                                    (let* ((_%part51182%_
                                                            _%hd5092951176%_)
                                                           (_%rest51185%_
                                                            _%tl5093051179%_))
                                                      (_%K5092851172%_
                                                       _%rest51185%_
                                                       _%part51182%_)))
                                                  (_%else5092650993%_)))))
                                        _%$e50908%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50867%_
                                                   (foldr (lambda (_%g5118951192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5119051195%_)
                    (cons _%g5118951192%_ _%g5119051195%_))
                  '()
                  _%L50865%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5088750894%_)
                             (let ((_%hd5089151202%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5088750894%_)))
                                   (_%tl5089251205%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5088750894%_))))
                               (let* ((_%var51208%_ _%hd5089151202%_)
                                      (_%parts51211%_ _%tl5089251205%_))
                                 (_%K5089051198%_
                                  _%parts51211%_
                                  _%var51208%_)))
                             (_%E5088950900%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50867%_
                                   (foldr (lambda (_%g5121351216%_
                                                   _%g5121451219%_)
                                            (cons _%g5121351216%_
                                                  _%g5121451219%_))
                                          '()
                                          _%L50865%_))))))
                (_%__kont7946979470%_
                 (lambda (_%L50764%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5077950782%_ _%g5078050785%_)
                                  (cons _%g5077950782%_ _%g5078050785%_))
                                '()
                                _%L50764%_)))))
            (let* ((_%__match7954579546%_
                    (lambda (_%e5070050724%_
                             _%hd5070150728%_
                             _%tl5070250731%_
                             _%__splice7947179472%_
                             _%target5070350734%_
                             _%tl5070550737%_)
                      (letrec ((_%loop5070650740%_
                                (lambda (_%hd5070450744%_ _%arg5071050747%_)
                                  (if (gx#stx-pair? _%hd5070450744%_)
                                      (let ((_%e5070750750%_
                                             (gx#syntax-e _%hd5070450744%_)))
                                        (let ((_%lp-tl5070950757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5070750750%_)))
                                              (_%lp-hd5070850754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5070750750%_))))
                                          (_%loop5070650740%_
                                           _%lp-tl5070950757%_
                                           (cons _%lp-hd5070850754%_
                                                 _%arg5071050747%_))))
                                      (let ((_%arg5071150760%_
                                             (reverse _%arg5071050747%_)))
                                        (_%__kont7946979470%_
                                         _%arg5071150760%_))))))
                        (_%loop5070650740%_ _%target5070350734%_ '()))))
                   (_%__match7953179532%_
                    (lambda (_%e5067850795%_
                             _%hd5067950799%_
                             _%tl5068050802%_
                             _%e5068150805%_
                             _%hd5068250809%_
                             _%tl5068350812%_
                             _%e5068450815%_
                             _%hd5068550819%_
                             _%tl5068650822%_
                             _%e5068750825%_
                             _%hd5068850829%_
                             _%tl5068950832%_
                             _%__splice7946779468%_
                             _%target5069050835%_
                             _%tl5069250838%_)
                      (letrec ((_%loop5069350841%_
                                (lambda (_%hd5069150845%_ _%rand5069750848%_)
                                  (if (gx#stx-pair? _%hd5069150845%_)
                                      (let ((_%e5069450851%_
                                             (gx#syntax-e _%hd5069150845%_)))
                                        (let ((_%lp-tl5069650858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5069450851%_)))
                                              (_%lp-hd5069550855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5069450851%_))))
                                          (_%loop5069350841%_
                                           _%lp-tl5069650858%_
                                           (cons _%lp-hd5069550855%_
                                                 _%rand5069750848%_))))
                                      (let ((_%rand5069850861%_
                                             (reverse _%rand5069750848%_)))
                                        (_%__kont7946579466%_
                                         _%rand5069850861%_
                                         _%hd5068850829%_))))))
                        (_%loop5069350841%_ _%target5069050835%_ '()))))
                   (_%__match7950579506%_
                    (lambda (_%e5067850795%_
                             _%hd5067950799%_
                             _%tl5068050802%_
                             _%e5068150805%_
                             _%hd5068250809%_
                             _%tl5068350812%_)
                      (if (gx#stx-pair? _%hd5068250809%_)
                          (let ((_%e5068450815%_
                                 (gx#syntax-e _%hd5068250809%_)))
                            (let ((_%tl5068650822%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5068450815%_)))
                                  (_%hd5068550819%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5068450815%_))))
                              (if (gx#identifier? _%hd5068550819%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84087_|
                                       _%hd5068550819%_)
                                      (if (gx#stx-pair? _%tl5068650822%_)
                                          (let ((_%e5068750825%_
                                                 (gx#syntax-e
                                                  _%tl5068650822%_)))
                                            (let ((_%tl5068950832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5068750825%_)))
                                                  (_%hd5068850829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5068750825%_))))
                                              (if (gx#stx-null?
                                                   _%tl5068950832%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5068350812%_)
                                                      (let ((_%__splice7946779468%_
                                                             (gx#syntax-split-splice
                                                              _%tl5068350812%_
                                                              '0)))
                                                        (let ((_%tl5069250838%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7946779468%_ '1)))
                      (_%target5069050835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7946779468%_ '0))))
                  (if (gx#stx-null? _%tl5069250838%_)
                      (_%__match7953179532%_
                       _%e5067850795%_
                       _%hd5067950799%_
                       _%tl5068050802%_
                       _%e5068150805%_
                       _%hd5068250809%_
                       _%tl5068350812%_
                       _%e5068450815%_
                       _%hd5068550819%_
                       _%tl5068650822%_
                       _%e5068750825%_
                       _%hd5068850829%_
                       _%tl5068950832%_
                       _%__splice7946779468%_
                       _%target5069050835%_
                       _%tl5069250838%_)
                      (if (gx#stx-pair/null? _%tl5068050802%_)
                          (let ((_%__splice7947179472%_
                                 (gx#syntax-split-splice _%tl5068050802%_ '0)))
                            (let ((_%tl5070550737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7947179472%_ '1)))
                                  (_%target5070350734%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7947179472%_
                                      '0))))
                              (if (gx#stx-null? _%tl5070550737%_)
                                  (_%__match7954579546%_
                                   _%e5067850795%_
                                   _%hd5067950799%_
                                   _%tl5068050802%_
                                   _%__splice7947179472%_
                                   _%target5070350734%_
                                   _%tl5070550737%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5065750717%_)))))
                          (let () (declare (not safe)) (_%g5065750717%_))))))
              (if (gx#stx-pair/null? _%tl5068050802%_)
                  (let ((_%__splice7947179472%_
                         (gx#syntax-split-splice _%tl5068050802%_ '0)))
                    (let ((_%tl5070550737%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '1)))
                          (_%target5070350734%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '0))))
                      (if (gx#stx-null? _%tl5070550737%_)
                          (_%__match7954579546%_
                           _%e5067850795%_
                           _%hd5067950799%_
                           _%tl5068050802%_
                           _%__splice7947179472%_
                           _%target5070350734%_
                           _%tl5070550737%_)
                          (let () (declare (not safe)) (_%g5065750717%_)))))
                  (let () (declare (not safe)) (_%g5065750717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5068050802%_)
                                                      (let ((_%__splice7947179472%_
                                                             (gx#syntax-split-splice
                                                              _%tl5068050802%_
                                                              '0)))
                                                        (let ((_%tl5070550737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7947179472%_ '1)))
                      (_%target5070350734%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7947179472%_ '0))))
                  (if (gx#stx-null? _%tl5070550737%_)
                      (_%__match7954579546%_
                       _%e5067850795%_
                       _%hd5067950799%_
                       _%tl5068050802%_
                       _%__splice7947179472%_
                       _%target5070350734%_
                       _%tl5070550737%_)
                      (let () (declare (not safe)) (_%g5065750717%_)))))
              (let () (declare (not safe)) (_%g5065750717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5068050802%_)
                                              (let ((_%__splice7947179472%_
                                                     (gx#syntax-split-splice
                                                      _%tl5068050802%_
                                                      '0)))
                                                (let ((_%tl5070550737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7947179472%_
                                                          '1)))
                                                      (_%target5070350734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7947179472%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5070550737%_)
                                                      (_%__match7954579546%_
                                                       _%e5067850795%_
                                                       _%hd5067950799%_
                                                       _%tl5068050802%_
                                                       _%__splice7947179472%_
                                                       _%target5070350734%_
                                                       _%tl5070550737%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5065750717%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5065750717%_))))
                                      (if (gx#stx-pair/null? _%tl5068050802%_)
                                          (let ((_%__splice7947179472%_
                                                 (gx#syntax-split-splice
                                                  _%tl5068050802%_
                                                  '0)))
                                            (let ((_%tl5070550737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7947179472%_
                                                      '1)))
                                                  (_%target5070350734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7947179472%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5070550737%_)
                                                  (_%__match7954579546%_
                                                   _%e5067850795%_
                                                   _%hd5067950799%_
                                                   _%tl5068050802%_
                                                   _%__splice7947179472%_
                                                   _%target5070350734%_
                                                   _%tl5070550737%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5065750717%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5065750717%_))))
                                  (if (gx#stx-pair/null? _%tl5068050802%_)
                                      (let ((_%__splice7947179472%_
                                             (gx#syntax-split-splice
                                              _%tl5068050802%_
                                              '0)))
                                        (let ((_%tl5070550737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7947179472%_
                                                  '1)))
                                              (_%target5070350734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7947179472%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5070550737%_)
                                              (_%__match7954579546%_
                                               _%e5067850795%_
                                               _%hd5067950799%_
                                               _%tl5068050802%_
                                               _%__splice7947179472%_
                                               _%target5070350734%_
                                               _%tl5070550737%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5065750717%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5065750717%_))))))
                          (if (gx#stx-pair/null? _%tl5068050802%_)
                              (let ((_%__splice7947179472%_
                                     (gx#syntax-split-splice
                                      _%tl5068050802%_
                                      '0)))
                                (let ((_%tl5070550737%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '1)))
                                      (_%target5070350734%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5070550737%_)
                                      (_%__match7954579546%_
                                       _%e5067850795%_
                                       _%hd5067950799%_
                                       _%tl5068050802%_
                                       _%__splice7947179472%_
                                       _%target5070350734%_
                                       _%tl5070550737%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5065750717%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5065750717%_))))))
                   (_%__match7949379494%_
                    (lambda (_%e5066151229%_
                             _%hd5066251233%_
                             _%tl5066351236%_
                             _%e5066451239%_
                             _%hd5066551243%_
                             _%tl5066651246%_
                             _%__splice7946379464%_
                             _%target5066751249%_
                             _%tl5066951252%_)
                      (letrec ((_%loop5067051255%_
                                (lambda (_%hd5066851259%_ _%rand5067451262%_)
                                  (if (gx#stx-pair? _%hd5066851259%_)
                                      (let ((_%e5067151265%_
                                             (gx#syntax-e _%hd5066851259%_)))
                                        (let ((_%lp-tl5067351272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5067151265%_)))
                                              (_%lp-hd5067251269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5067151265%_))))
                                          (_%loop5067051255%_
                                           _%lp-tl5067351272%_
                                           (cons _%lp-hd5067251269%_
                                                 _%rand5067451262%_))))
                                      (let ((_%rand5067551275%_
                                             (reverse _%rand5067451262%_)))
                                        (let ((_%L51279%_ _%rand5067551275%_)
                                              (_%L51281%_ _%hd5066551243%_))
                                          (if (gx#identifier? _%L51281%_)
                                              (_%__kont7946179462%_
                                               _%L51279%_
                                               _%L51281%_)
                                              (_%__match7950579506%_
                                               _%e5066151229%_
                                               _%hd5066251233%_
                                               _%tl5066351236%_
                                               _%e5066451239%_
                                               _%hd5066551243%_
                                               _%tl5066651246%_))))))))
                        (_%loop5067051255%_ _%target5066751249%_ '())))))
              (if (gx#stx-pair? _%__stx7945879459%_)
                  (let ((_%e5066151229%_ (gx#syntax-e _%__stx7945879459%_)))
                    (let ((_%tl5066351236%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5066151229%_)))
                          (_%hd5066251233%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5066151229%_))))
                      (if (gx#stx-pair? _%tl5066351236%_)
                          (let ((_%e5066451239%_
                                 (gx#syntax-e _%tl5066351236%_)))
                            (let ((_%tl5066651246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5066451239%_)))
                                  (_%hd5066551243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5066451239%_))))
                              (if (gx#stx-pair/null? _%tl5066651246%_)
                                  (let ((_%__splice7946379464%_
                                         (gx#syntax-split-splice
                                          _%tl5066651246%_
                                          '0)))
                                    (let ((_%tl5066951252%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7946379464%_
                                              '1)))
                                          (_%target5066751249%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7946379464%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5066951252%_)
                                          (_%__match7949379494%_
                                           _%e5066151229%_
                                           _%hd5066251233%_
                                           _%tl5066351236%_
                                           _%e5066451239%_
                                           _%hd5066551243%_
                                           _%tl5066651246%_
                                           _%__splice7946379464%_
                                           _%target5066751249%_
                                           _%tl5066951252%_)
                                          (if (gx#stx-pair? _%hd5066551243%_)
                                              (let ((_%e5068450815%_
                                                     (gx#syntax-e
                                                      _%hd5066551243%_)))
                                                (let ((_%tl5068650822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5068450815%_)))
                                                      (_%hd5068550819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5068450815%_))))
                                                  (if (gx#identifier?
                                                       _%hd5068550819%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84087_|
                                                           _%hd5068550819%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5068650822%_)
                                                              (let ((_%e5068750825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5068650822%_)))
                        (let ((_%tl5068950832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5068750825%_)))
                              (_%hd5068850829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5068750825%_))))
                          (if (gx#stx-pair/null? _%tl5066351236%_)
                              (let ((_%__splice7947179472%_
                                     (gx#syntax-split-splice
                                      _%tl5066351236%_
                                      '0)))
                                (let ((_%tl5070550737%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '1)))
                                      (_%target5070350734%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5070550737%_)
                                      (_%__match7954579546%_
                                       _%e5066151229%_
                                       _%hd5066251233%_
                                       _%tl5066351236%_
                                       _%__splice7947179472%_
                                       _%target5070350734%_
                                       _%tl5070550737%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5065750717%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5065750717%_)))))
                      (if (gx#stx-pair/null? _%tl5066351236%_)
                          (let ((_%__splice7947179472%_
                                 (gx#syntax-split-splice _%tl5066351236%_ '0)))
                            (let ((_%tl5070550737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7947179472%_ '1)))
                                  (_%target5070350734%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7947179472%_
                                      '0))))
                              (if (gx#stx-null? _%tl5070550737%_)
                                  (_%__match7954579546%_
                                   _%e5066151229%_
                                   _%hd5066251233%_
                                   _%tl5066351236%_
                                   _%__splice7947179472%_
                                   _%target5070350734%_
                                   _%tl5070550737%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5065750717%_)))))
                          (let () (declare (not safe)) (_%g5065750717%_))))
                  (if (gx#stx-pair/null? _%tl5066351236%_)
                      (let ((_%__splice7947179472%_
                             (gx#syntax-split-splice _%tl5066351236%_ '0)))
                        (let ((_%tl5070550737%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7947179472%_ '1)))
                              (_%target5070350734%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7947179472%_ '0))))
                          (if (gx#stx-null? _%tl5070550737%_)
                              (_%__match7954579546%_
                               _%e5066151229%_
                               _%hd5066251233%_
                               _%tl5066351236%_
                               _%__splice7947179472%_
                               _%target5070350734%_
                               _%tl5070550737%_)
                              (let ()
                                (declare (not safe))
                                (_%g5065750717%_)))))
                      (let () (declare (not safe)) (_%g5065750717%_))))
              (if (gx#stx-pair/null? _%tl5066351236%_)
                  (let ((_%__splice7947179472%_
                         (gx#syntax-split-splice _%tl5066351236%_ '0)))
                    (let ((_%tl5070550737%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '1)))
                          (_%target5070350734%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '0))))
                      (if (gx#stx-null? _%tl5070550737%_)
                          (_%__match7954579546%_
                           _%e5066151229%_
                           _%hd5066251233%_
                           _%tl5066351236%_
                           _%__splice7947179472%_
                           _%target5070350734%_
                           _%tl5070550737%_)
                          (let () (declare (not safe)) (_%g5065750717%_)))))
                  (let () (declare (not safe)) (_%g5065750717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5066351236%_)
                                                  (let ((_%__splice7947179472%_
                                                         (gx#syntax-split-splice
                                                          _%tl5066351236%_
                                                          '0)))
                                                    (let ((_%tl5070550737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7947179472%_
                                                              '1)))
                                                          (_%target5070350734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7947179472%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5070550737%_)
                                                          (_%__match7954579546%_
                                                           _%e5066151229%_
                                                           _%hd5066251233%_
                                                           _%tl5066351236%_
                                                           _%__splice7947179472%_
                                                           _%target5070350734%_
                                                           _%tl5070550737%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5065750717%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5065750717%_)))))))
                                  (if (gx#stx-pair? _%hd5066551243%_)
                                      (let ((_%e5068450815%_
                                             (gx#syntax-e _%hd5066551243%_)))
                                        (let ((_%tl5068650822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5068450815%_)))
                                              (_%hd5068550819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5068450815%_))))
                                          (if (gx#identifier? _%hd5068550819%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g84087_|
                                                   _%hd5068550819%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5068650822%_)
                                                      (let ((_%e5068750825%_
                                                             (gx#syntax-e
                                                              _%tl5068650822%_)))
                                                        (let ((_%tl5068950832%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5068750825%_)))
                      (_%hd5068850829%_
                       (let () (declare (not safe)) (##car _%e5068750825%_))))
                  (if (gx#stx-pair/null? _%tl5066351236%_)
                      (let ((_%__splice7947179472%_
                             (gx#syntax-split-splice _%tl5066351236%_ '0)))
                        (let ((_%tl5070550737%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7947179472%_ '1)))
                              (_%target5070350734%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7947179472%_ '0))))
                          (if (gx#stx-null? _%tl5070550737%_)
                              (_%__match7954579546%_
                               _%e5066151229%_
                               _%hd5066251233%_
                               _%tl5066351236%_
                               _%__splice7947179472%_
                               _%target5070350734%_
                               _%tl5070550737%_)
                              (let ()
                                (declare (not safe))
                                (_%g5065750717%_)))))
                      (let () (declare (not safe)) (_%g5065750717%_)))))
              (if (gx#stx-pair/null? _%tl5066351236%_)
                  (let ((_%__splice7947179472%_
                         (gx#syntax-split-splice _%tl5066351236%_ '0)))
                    (let ((_%tl5070550737%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '1)))
                          (_%target5070350734%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7947179472%_ '0))))
                      (if (gx#stx-null? _%tl5070550737%_)
                          (_%__match7954579546%_
                           _%e5066151229%_
                           _%hd5066251233%_
                           _%tl5066351236%_
                           _%__splice7947179472%_
                           _%target5070350734%_
                           _%tl5070550737%_)
                          (let () (declare (not safe)) (_%g5065750717%_)))))
                  (let () (declare (not safe)) (_%g5065750717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5066351236%_)
                                                      (let ((_%__splice7947179472%_
                                                             (gx#syntax-split-splice
                                                              _%tl5066351236%_
                                                              '0)))
                                                        (let ((_%tl5070550737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7947179472%_ '1)))
                      (_%target5070350734%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7947179472%_ '0))))
                  (if (gx#stx-null? _%tl5070550737%_)
                      (_%__match7954579546%_
                       _%e5066151229%_
                       _%hd5066251233%_
                       _%tl5066351236%_
                       _%__splice7947179472%_
                       _%target5070350734%_
                       _%tl5070550737%_)
                      (let () (declare (not safe)) (_%g5065750717%_)))))
              (let () (declare (not safe)) (_%g5065750717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5066351236%_)
                                                  (let ((_%__splice7947179472%_
                                                         (gx#syntax-split-splice
                                                          _%tl5066351236%_
                                                          '0)))
                                                    (let ((_%tl5070550737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7947179472%_
                                                              '1)))
                                                          (_%target5070350734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7947179472%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5070550737%_)
                                                          (_%__match7954579546%_
                                                           _%e5066151229%_
                                                           _%hd5066251233%_
                                                           _%tl5066351236%_
                                                           _%__splice7947179472%_
                                                           _%target5070350734%_
                                                           _%tl5070550737%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5065750717%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5065750717%_))))))
                                      (if (gx#stx-pair/null? _%tl5066351236%_)
                                          (let ((_%__splice7947179472%_
                                                 (gx#syntax-split-splice
                                                  _%tl5066351236%_
                                                  '0)))
                                            (let ((_%tl5070550737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7947179472%_
                                                      '1)))
                                                  (_%target5070350734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7947179472%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5070550737%_)
                                                  (_%__match7954579546%_
                                                   _%e5066151229%_
                                                   _%hd5066251233%_
                                                   _%tl5066351236%_
                                                   _%__splice7947179472%_
                                                   _%target5070350734%_
                                                   _%tl5070550737%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5065750717%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5065750717%_)))))))
                          (if (gx#stx-pair/null? _%tl5066351236%_)
                              (let ((_%__splice7947179472%_
                                     (gx#syntax-split-splice
                                      _%tl5066351236%_
                                      '0)))
                                (let ((_%tl5070550737%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '1)))
                                      (_%target5070350734%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7947179472%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5070550737%_)
                                      (_%__match7954579546%_
                                       _%e5066151229%_
                                       _%hd5066251233%_
                                       _%tl5066351236%_
                                       _%__splice7947179472%_
                                       _%target5070350734%_
                                       _%tl5070550737%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5065750717%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5065750717%_))))))
                  (let () (declare (not safe)) (_%g5065750717%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51313%_)
        (let* ((_%__stx7954879549%_ _%stx51313%_)
               (_%g5131751338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7954879549%_))))
          (let ((_%__kont7955179552%_
                 (lambda (_%L51406%_)
                   (let* ((_%g5141851425%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51313%_
                            _%L51406%_))
                          (_%E5142051431%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5141851425%_
                                    '([var . parts]))
                             (void)))
                          (_%K5142151647%_
                           (lambda (_%parts51435%_ _%var51437%_)
                             (let ((_%$e51439%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51437%_))))
                               (if _%$e51439%_
                                   ((lambda (_%te51443%_)
                                      (let _%loop51446%_ ((_%parts51449%_
                                                           _%parts51435%_)
                                                          (_%type51451%_
                                                           (##direct-structure-ref
                                                            _%te51443%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51452%_
                                                           _%var51437%_)
                                                          (_%nil-check?51453%_
                                                           '#f))
                                        (let* ((_%parts5145451462%_
                                                _%parts51449%_)
                                               (_%else5145651474%_
                                                (lambda () _%object51452%_))
                                               (_%K5145851629%_
                                                (lambda (_%rest51478%_
                                                         _%part51480%_)
                                                  (if (and (not _%nil-check?51453%_)
                                                           (let ((__tmp84088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51480%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84088)))
              (let ((_%str51484%_ (symbol->string _%part51480%_)))
                (_%loop51446%_
                 (cons (let ((__tmp84089
                              (substring
                               _%str51484%_
                               '1
                               (string-length _%str51484%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84089))
                       _%rest51478%_)
                 _%type51451%_
                 _%object51452%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51451%_))
                  (let* ((_%g5148951504%_
                          (lambda (_%g5149051500%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5149051500%_)))
                         (_%g5148851621%_
                          (lambda (_%g5149051508%_)
                            (if (gx#stx-pair? _%g5149051508%_)
                                (let ((_%e5149351511%_
                                       (gx#syntax-e _%g5149051508%_)))
                                  (let ((_%hd5149451515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5149351511%_)))
                                        (_%tl5149551518%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5149351511%_))))
                                    (if (gx#stx-pair? _%tl5149551518%_)
                                        (let ((_%e5149651521%_
                                               (gx#syntax-e _%tl5149551518%_)))
                                          (let ((_%hd5149751525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5149651521%_)))
                                                (_%tl5149851528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5149651521%_))))
                                            (if (gx#stx-null? _%tl5149851528%_)
                                                ((lambda (_%L51531%_
                                                          _%L51533%_)
                                                   (if (null? _%rest51478%_)
                                                       (let ((_%$e51563%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51451%_
                                                               _%part51480%_)))
                                                         (if _%$e51563%_
                                                             ((lambda (_%slot-type51567%_)
                                                                (let* ((_%g5157051578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5157151574%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5157151574%_)))
                               (_%g5156951601%_
                                (lambda (_%g5157151582%_)
                                  ((lambda (_%L51585%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51585%_ '()))
                                                 (cons (cons _%L51531%_
                                                             (cons _%L51533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5157151582%_))))
                          (_%g5156951601%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51313%_
                              _%slot-type51567%_)))))
                      _%$e51563%_)
                     (if _%nil-check?51453%_
                         (cons _%L51531%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51533%_ '()))
                                     '()))
                         (cons _%L51531%_ (cons _%L51533%_ '())))))
               (let ((_%$e51609%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51451%_
                       _%part51480%_)))
                 (if _%$e51609%_
                     ((lambda (_%type51613%_)
                        (let ((_%type51616%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51313%_
                                  _%type51613%_))))
                          (if _%nil-check?51453%_
                              (_%loop51446%_
                               _%rest51478%_
                               _%type51616%_
                               (cons _%L51531%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51533%_ '()))
                                           '()))
                               '#f)
                              (_%loop51446%_
                               _%rest51478%_
                               _%type51616%_
                               (cons _%L51531%_ (cons _%L51533%_ '()))
                               '#f))))
                      _%$e51609%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51313%_
                      _%L51406%_
                      _%part51480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5149751525%_
                                                 _%hd5149451515%_)
                                                (_%g5148951504%_
                                                 _%g5149051508%_))))
                                        (_%g5148951504%_ _%g5149051508%_))))
                                (_%g5148951504%_ _%g5149051508%_)))))
                    (_%g5148851621%_
                     (list (if _%nil-check?51453%_
                               (cons 'check-nil! (cons _%object51452%_ '()))
                               _%object51452%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51313%_
                            _%type51451%_
                            _%part51480%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51451%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51313%_
                       _%type51451%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5145451462%_)
                                              (let ((_%hd5145951633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5145451462%_)))
                                                    (_%tl5146051636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5145451462%_))))
                                                (let* ((_%part51639%_
                                                        _%hd5145951633%_)
                                                       (_%rest51642%_
                                                        _%tl5146051636%_))
                                                  (_%K5145851629%_
                                                   _%rest51642%_
                                                   _%part51639%_)))
                                              (_%else5145651474%_)))))
                                    _%$e51439%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51406%_ '())))))))
                     (if (pair? _%g5141851425%_)
                         (let ((_%hd5142251651%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5141851425%_)))
                               (_%tl5142351654%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5141851425%_))))
                           (let* ((_%var51657%_ _%hd5142251651%_)
                                  (_%parts51660%_ _%tl5142351654%_))
                             (_%K5142151647%_ _%parts51660%_ _%var51657%_)))
                         (_%E5142051431%_)))))
                (_%__kont7955379554%_
                 (lambda (_%L51365%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51365%_ '())))))
            (let ((_%__match7956979570%_
                   (lambda (_%e5132051386%_
                            _%hd5132151390%_
                            _%tl5132251393%_
                            _%e5132351396%_
                            _%hd5132451400%_
                            _%tl5132551403%_)
                     (let ((_%L51406%_ _%hd5132451400%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51406%_)
                           (_%__kont7955179552%_ _%L51406%_)
                           (_%__kont7955379554%_ _%hd5132451400%_))))))
              (if (gx#stx-pair? _%__stx7954879549%_)
                  (let ((_%e5132051386%_ (gx#syntax-e _%__stx7954879549%_)))
                    (let ((_%tl5132251393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5132051386%_)))
                          (_%hd5132151390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5132051386%_))))
                      (if (gx#stx-pair? _%tl5132251393%_)
                          (let ((_%e5132351396%_
                                 (gx#syntax-e _%tl5132251393%_)))
                            (let ((_%tl5132551403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5132351396%_)))
                                  (_%hd5132451400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5132351396%_))))
                              (if (gx#stx-null? _%tl5132551403%_)
                                  (_%__match7956979570%_
                                   _%e5132051386%_
                                   _%hd5132151390%_
                                   _%tl5132251393%_
                                   _%e5132351396%_
                                   _%hd5132451400%_
                                   _%tl5132551403%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5131751338%_)))))
                          (let () (declare (not safe)) (_%g5131751338%_)))))
                  (let () (declare (not safe)) (_%g5131751338%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51667%_)
        (let* ((_%__stx7958679587%_ _%stx51667%_)
               (_%g5167151700%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7958679587%_))))
          (let ((_%__kont7958979590%_
                 (lambda (_%L51792%_ _%L51794%_)
                   (let* ((_%g5180851815%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51667%_
                            _%L51794%_))
                          (_%E5181051821%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5180851815%_
                                    '([var . parts]))
                             (void)))
                          (_%K5181152051%_
                           (lambda (_%parts51825%_ _%var51827%_)
                             (let ((_%$e51829%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51827%_))))
                               (if _%$e51829%_
                                   ((lambda (_%te51833%_)
                                      (let _%loop51836%_ ((_%parts51839%_
                                                           _%parts51825%_)
                                                          (_%type51841%_
                                                           (##direct-structure-ref
                                                            _%te51833%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51842%_
                                                           _%var51827%_)
                                                          (_%checked-mutator?51843%_
                                                           (##direct-structure-ref
                                                            _%te51833%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51844%_
                                                           '#f))
                                        (let* ((_%parts5184551852%_
                                                _%parts51839%_)
                                               (_%E5184751858%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5184551852%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5184852033%_
                                                (lambda (_%rest51862%_
                                                         _%part51864%_)
                                                  (if (and (not _%nil-check?51844%_)
                                                           (let ((__tmp84090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51864%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84090)))
              (let ((_%str51868%_ (symbol->string _%part51864%_)))
                (_%loop51836%_
                 (cons (let ((__tmp84091
                              (substring
                               _%str51868%_
                               '1
                               (string-length _%str51868%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84091))
                       _%rest51862%_)
                 _%type51841%_
                 _%object51842%_
                 _%checked-mutator?51843%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51841%_))
                  (if (null? _%rest51862%_)
                      (let* ((_%g5187551890%_
                              (lambda (_%g5187651886%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5187651886%_)))
                             (_%g5187451947%_
                              (lambda (_%g5187651894%_)
                                (if (gx#stx-pair? _%g5187651894%_)
                                    (let ((_%e5187951897%_
                                           (gx#syntax-e _%g5187651894%_)))
                                      (let ((_%hd5188051901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5187951897%_)))
                                            (_%tl5188151904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5187951897%_))))
                                        (if (gx#stx-pair? _%tl5188151904%_)
                                            (let ((_%e5188251907%_
                                                   (gx#syntax-e
                                                    _%tl5188151904%_)))
                                              (let ((_%hd5188351911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5188251907%_)))
                                                    (_%tl5188451914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5188251907%_))))
                                                (if (gx#stx-null?
                                                     _%tl5188451914%_)
                                                    ((lambda (_%L51917%_
                                                              _%L51919%_)
                                                       (if _%nil-check?51844%_
                                                           (cons _%L51917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51919%_ '()))
                               (cons _%L51792%_ '())))
                   (cons _%L51917%_ (cons _%L51919%_ (cons _%L51792%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5188351911%_
                                                     _%hd5188051901%_)
                                                    (_%g5187551890%_
                                                     _%g5187651894%_))))
                                            (_%g5187551890%_
                                             _%g5187651894%_))))
                                    (_%g5187551890%_ _%g5187651894%_)))))
                        (_%g5187451947%_
                         (list _%object51842%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51667%_
                                _%type51841%_
                                _%part51864%_
                                (if _%checked-mutator?51843%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51841%_
                                     _%part51864%_)
                                    '#f)))))
                      (let ((_%$e51951%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51841%_
                              _%part51864%_)))
                        (if _%$e51951%_
                            ((lambda (_%type51955%_)
                               (let* ((_%type51958%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51667%_
                                          _%type51955%_)))
                                      (_%g5196151976%_
                                       (lambda (_%g5196251972%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5196251972%_)))
                                      (_%g5196052023%_
                                       (lambda (_%g5196251980%_)
                                         (if (gx#stx-pair? _%g5196251980%_)
                                             (let ((_%e5196551983%_
                                                    (gx#syntax-e
                                                     _%g5196251980%_)))
                                               (let ((_%hd5196651987%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5196551983%_)))
                                                     (_%tl5196751990%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5196551983%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5196751990%_)
                                                     (let ((_%e5196851993%_
                                                            (gx#syntax-e
                                                             _%tl5196751990%_)))
                                                       (let ((_%hd5196951997%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5196851993%_)))
                     (_%tl5197052000%_
                      (let () (declare (not safe)) (##cdr _%e5196851993%_))))
                 (if (gx#stx-null? _%tl5197052000%_)
                     ((lambda (_%L52003%_ _%L52005%_)
                        (_%loop51836%_
                         _%rest51862%_
                         _%type51958%_
                         (cons _%L52003%_ (cons _%L52005%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51958%_
                          _%part51864%_)
                         '#f))
                      _%hd5196951997%_
                      _%hd5196651987%_)
                     (_%g5196151976%_ _%g5196251980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5196151976%_
                                                      _%g5196251980%_))))
                                             (_%g5196151976%_
                                              _%g5196251980%_)))))
                                 (_%g5196052023%_
                                  (list (if _%nil-check?51844%_
                                            (cons 'check-nil!
                                                  (cons _%object51842%_ '()))
                                            _%object51842%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51667%_
                                         _%type51958%_
                                         _%part51864%_)))))
                             _%$e51951%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51667%_
                             _%L51794%_
                             _%part51864%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51841%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51667%_
                       _%type51841%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5184551852%_)
                                              (let ((_%hd5184952037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5184551852%_)))
                                                    (_%tl5185052040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5184551852%_))))
                                                (let* ((_%part52043%_
                                                        _%hd5184952037%_)
                                                       (_%rest52046%_
                                                        _%tl5185052040%_))
                                                  (_%K5184852033%_
                                                   _%rest52046%_
                                                   _%part52043%_)))
                                              (_%E5184751858%_)))))
                                    _%$e51829%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51667%_)))))))
                     (if (pair? _%g5180851815%_)
                         (let ((_%hd5181252055%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5180851815%_)))
                               (_%tl5181352058%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5180851815%_))))
                           (let* ((_%var52061%_ _%hd5181252055%_)
                                  (_%parts52064%_ _%tl5181352058%_))
                             (_%K5181152051%_ _%parts52064%_ _%var52061%_)))
                         (_%E5181051821%_)))))
                (_%__kont7959179592%_
                 (lambda (_%L51737%_ _%L51739%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51667%_)))))
            (let ((_%__match7961379614%_
                   (lambda (_%e5167551762%_
                            _%hd5167651766%_
                            _%tl5167751769%_
                            _%e5167851772%_
                            _%hd5167951776%_
                            _%tl5168051779%_
                            _%e5168151782%_
                            _%hd5168251786%_
                            _%tl5168351789%_)
                     (let ((_%L51792%_ _%hd5168251786%_)
                           (_%L51794%_ _%hd5167951776%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51794%_)
                           (_%__kont7958979590%_ _%L51792%_ _%L51794%_)
                           (_%__kont7959179592%_
                            _%hd5168251786%_
                            _%hd5167951776%_))))))
              (if (gx#stx-pair? _%__stx7958679587%_)
                  (let ((_%e5167551762%_ (gx#syntax-e _%__stx7958679587%_)))
                    (let ((_%tl5167751769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5167551762%_)))
                          (_%hd5167651766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5167551762%_))))
                      (if (gx#stx-pair? _%tl5167751769%_)
                          (let ((_%e5167851772%_
                                 (gx#syntax-e _%tl5167751769%_)))
                            (let ((_%tl5168051779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5167851772%_)))
                                  (_%hd5167951776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5167851772%_))))
                              (if (gx#stx-pair? _%tl5168051779%_)
                                  (let ((_%e5168151782%_
                                         (gx#syntax-e _%tl5168051779%_)))
                                    (let ((_%tl5168351789%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5168151782%_)))
                                          (_%hd5168251786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5168151782%_))))
                                      (if (gx#stx-null? _%tl5168351789%_)
                                          (_%__match7961379614%_
                                           _%e5167551762%_
                                           _%hd5167651766%_
                                           _%tl5167751769%_
                                           _%e5167851772%_
                                           _%hd5167951776%_
                                           _%tl5168051779%_
                                           _%e5168151782%_
                                           _%hd5168251786%_
                                           _%tl5168351789%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5167151700%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5167151700%_)))))
                          (let () (declare (not safe)) (_%g5167151700%_)))))
                  (let () (declare (not safe)) (_%g5167151700%_))))))))))

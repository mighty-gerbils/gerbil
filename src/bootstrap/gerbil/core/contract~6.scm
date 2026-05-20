(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g101301_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101302_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101303_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101306_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101307_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101310_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101311_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101312_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101313_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101317_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101318_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101319_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101320_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101324_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx52006%_)
        (let* ((_%__stx9462794628%_ _%stx52006%_)
               (_%g5201552224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9462794628%_))))
          (let ((_%__kont9463094631%_
                 (lambda (_%g5201753116%_
                          _%g5201853118%_
                          _%g5201953119%_
                          _%g5202053120%_
                          _%g5202153121%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5202153121%_
                                     (cons _%g5202053120%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5202153121%_
                                                       (cons _%g5201953119%_
                                                             (cons _%g5201853118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5316453167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5316553170%_)
                  (cons _%g5316453167%_ _%g5316553170%_))
                '()
                _%g5201753116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9463494635%_
                 (lambda (_%g5204952962%_
                          _%g5205052964%_
                          _%g5205152965%_
                          _%g5205252966%_
                          _%g5205352967%_
                          _%g5205452968%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5205452968%_
                                     (cons _%g5205352967%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5205452968%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5205252966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5205452968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5205152965%_
                                       (cons _%g5205052964%_ '())))
                           (foldr (lambda (_%g5301253015%_ _%g5301353018%_)
                                    (cons _%g5301253015%_ _%g5301353018%_))
                                  '()
                                  _%g5204952962%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9463894639%_
                 (lambda (_%g5208852781%_
                          _%g5208952783%_
                          _%g5209052784%_
                          _%g5209152785%_)
                   (let ((_%meta52822%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx52006%_
                             _%g5208952783%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52822%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5209152785%_
                                           (cons _%g5209052784%_
                                                 (cons _%g5208952783%_ '())))
                                     (foldr (lambda (_%g5282652829%_
                                                     _%g5282752832%_)
                                              (cons _%g5282652829%_
                                                    _%g5282752832%_))
                                            '()
                                            _%g5208852781%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52822%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5209152785%_
                                               (cons _%g5209052784%_
                                                     (cons _%g5208952783%_
                                                           '())))
                                         (foldr (lambda (_%g5283652839%_
                                                         _%g5283752842%_)
                                                  (cons _%g5283652839%_
                                                        _%g5283752842%_))
                                                '()
                                                _%g5208852781%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx52006%_
                              _%g5208952783%_
                              _%meta52822%_))))))
                (_%__kont9464294643%_
                 (lambda (_%g5211652661%_ _%g5211752663%_ _%g5211852664%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5211852664%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5211752663%_ '())))
                               (foldr (lambda (_%g5268752690%_ _%g5268852693%_)
                                        (cons _%g5268752690%_ _%g5268852693%_))
                                      '()
                                      _%g5211652661%_)))))
                (_%__kont9464694647%_
                 (lambda (_%g5214352521%_
                          _%g5214452523%_
                          _%g5214552524%_
                          _%g5214652525%_
                          _%g5214752526%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5214752526%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5214652525%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5214752526%_
                                                       (cons _%g5214552524%_
                                                             (cons _%g5214452523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5256752570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5256852573%_)
                  (cons _%g5256752570%_ _%g5256852573%_))
                '()
                _%g5214352521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9465094651%_
                 (lambda (_%g5217852381%_
                          _%g5217952383%_
                          _%g5218052384%_
                          _%g5218152385%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5218152385%_ _%g5218052384%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5217952383%_
                                                 (foldr (lambda (_%g5240752410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5240852413%_)
                  (cons _%g5240752410%_ _%g5240852413%_))
                '()
                _%g5217852381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9465494655%_
                 (lambda (_%g5220352279%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5229752300%_ _%g5229852303%_)
                                        (cons _%g5229752300%_ _%g5229852303%_))
                                      '()
                                      _%g5220352279%_))))))
            (let* ((_%__match9496094961%_
                    (lambda (_%e5220452231%_
                             _%hd5220552235%_
                             _%tl5220652238%_
                             _%e5220752241%_
                             _%hd5220852245%_
                             _%tl5220952248%_
                             _%__splice9465694657%_
                             _%target5221052251%_
                             _%tl5221252254%_)
                      (letrec ((_%loop5221352257%_
                                (lambda (_%hd5221152261%_ _%body5221752264%_)
                                  (if (gx#stx-pair? _%hd5221152261%_)
                                      (let ((_%e5221452266%_
                                             (gx#syntax-e _%hd5221152261%_)))
                                        (let ((_%lp-tl5221652273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5221452266%_)))
                                              (_%lp-hd5221552270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5221452266%_))))
                                          (_%loop5221352257%_
                                           _%lp-tl5221652273%_
                                           (cons _%lp-hd5221552270%_
                                                 _%body5221752264%_))))
                                      (let ((_%body5221852276%_
                                             (reverse _%body5221752264%_)))
                                        (_%__kont9465494655%_
                                         _%body5221852276%_))))))
                        (_%loop5221352257%_ _%target5221052251%_ '()))))
                   (_%__match9493894939%_
                    (lambda (_%e5218252313%_
                             _%hd5218352317%_
                             _%tl5218452320%_
                             _%e5218552323%_
                             _%hd5218652327%_
                             _%tl5218752330%_
                             _%e5218852333%_
                             _%hd5218952337%_
                             _%tl5219052340%_
                             _%e5219152343%_
                             _%hd5219252347%_
                             _%tl5219352350%_
                             _%__splice9465294653%_
                             _%target5219452353%_
                             _%tl5219652356%_)
                      (letrec ((_%loop5219752359%_
                                (lambda (_%hd5219552363%_ _%body5220152366%_)
                                  (if (gx#stx-pair? _%hd5219552363%_)
                                      (let ((_%e5219852368%_
                                             (gx#syntax-e _%hd5219552363%_)))
                                        (let ((_%lp-tl5220052375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219852368%_)))
                                              (_%lp-hd5219952372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219852368%_))))
                                          (_%loop5219752359%_
                                           _%lp-tl5220052375%_
                                           (cons _%lp-hd5219952372%_
                                                 _%body5220152366%_))))
                                      (let ((_%body5220252378%_
                                             (reverse _%body5220152366%_)))
                                        (let ((_%g5217852381%_
                                               _%body5220252378%_)
                                              (_%g5217952383%_
                                               _%tl5219052340%_)
                                              (_%g5218052384%_
                                               _%tl5219352350%_)
                                              (_%g5218152385%_
                                               _%hd5219252347%_))
                                          (if (gx#identifier? _%g5218152385%_)
                                              (_%__kont9465094651%_
                                               _%g5217852381%_
                                               _%g5217952383%_
                                               _%g5218052384%_
                                               _%g5218152385%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_)))))))))
                        (_%loop5219752359%_ _%target5219452353%_ '()))))
                   (_%__match9492494925%_
                    (lambda (_%e5218252313%_
                             _%hd5218352317%_
                             _%tl5218452320%_
                             _%e5218552323%_
                             _%hd5218652327%_
                             _%tl5218752330%_
                             _%e5218852333%_
                             _%hd5218952337%_
                             _%tl5219052340%_)
                      (if (gx#stx-pair? _%hd5218952337%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5218952337%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (if (gx#stx-pair/null? _%tl5218752330%_)
                                  (let ((_%__splice9465294653%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5218752330%_
                                          '0)))
                                    (let ((_%tl5219652356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '1)))
                                          (_%target5219452353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5219652356%_)
                                          (_%__match9493894939%_
                                           _%e5218252313%_
                                           _%hd5218352317%_
                                           _%tl5218452320%_
                                           _%e5218552323%_
                                           _%hd5218652327%_
                                           _%tl5218752330%_
                                           _%e5218852333%_
                                           _%hd5218952337%_
                                           _%tl5219052340%_
                                           _%e5219152343%_
                                           _%hd5219252347%_
                                           _%tl5219352350%_
                                           _%__splice9465294653%_
                                           _%target5219452353%_
                                           _%tl5219652356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                   (_%__match9490694907%_
                    (lambda (_%e5214852423%_
                             _%hd5214952427%_
                             _%tl5215052430%_
                             _%e5215152433%_
                             _%hd5215252437%_
                             _%tl5215352440%_
                             _%e5215452443%_
                             _%hd5215552447%_
                             _%tl5215652450%_
                             _%e5215752453%_
                             _%hd5215852457%_
                             _%tl5215952460%_
                             _%e5216052463%_
                             _%hd5216152467%_
                             _%tl5216252470%_
                             _%e5216352473%_
                             _%hd5216452477%_
                             _%tl5216552480%_
                             _%e5216652483%_
                             _%hd5216752487%_
                             _%tl5216852490%_
                             _%__splice9464894649%_
                             _%target5216952493%_
                             _%tl5217152496%_)
                      (letrec ((_%loop5217252499%_
                                (lambda (_%hd5217052503%_ _%body5217652506%_)
                                  (if (gx#stx-pair? _%hd5217052503%_)
                                      (let ((_%e5217352508%_
                                             (gx#syntax-e _%hd5217052503%_)))
                                        (let ((_%lp-tl5217552515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5217352508%_)))
                                              (_%lp-hd5217452512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5217352508%_))))
                                          (_%loop5217252499%_
                                           _%lp-tl5217552515%_
                                           (cons _%lp-hd5217452512%_
                                                 _%body5217652506%_))))
                                      (let ((_%body5217752518%_
                                             (reverse _%body5217652506%_)))
                                        (let ((_%g5214352521%_
                                               _%body5217752518%_)
                                              (_%g5214452523%_
                                               _%hd5216752487%_)
                                              (_%g5214552524%_
                                               _%hd5216452477%_)
                                              (_%g5214652525%_
                                               _%hd5216152467%_)
                                              (_%g5214752526%_
                                               _%hd5215552447%_))
                                          (if (and (gx#identifier?
                                                    _%g5214752526%_)
                                                   (gx#identifier?
                                                    _%g5214452523%_)
                                                   (gx#identifier?
                                                    _%g5214552524%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5214552524%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5214552524%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5214552524%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5214552524%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9464694647%_
                                               _%g5214352521%_
                                               _%g5214452523%_
                                               _%g5214552524%_
                                               _%g5214652525%_
                                               _%g5214752526%_)
                                              (_%__match9492494925%_
                                               _%e5214852423%_
                                               _%hd5214952427%_
                                               _%tl5215052430%_
                                               _%e5215152433%_
                                               _%hd5215252437%_
                                               _%tl5215352440%_
                                               _%e5215452443%_
                                               _%hd5215552447%_
                                               _%tl5215652450%_))))))))
                        (_%loop5217252499%_ _%target5216952493%_ '()))))
                   (_%__match9485094851%_
                    (lambda (_%e5211952583%_
                             _%hd5212052587%_
                             _%tl5212152590%_
                             _%e5212252593%_
                             _%hd5212352597%_
                             _%tl5212452600%_
                             _%e5212552603%_
                             _%hd5212652607%_
                             _%tl5212752610%_
                             _%e5212852613%_
                             _%hd5212952617%_
                             _%tl5213052620%_
                             _%e5213152623%_
                             _%hd5213252627%_
                             _%tl5213352630%_
                             _%__splice9464494645%_
                             _%target5213452633%_
                             _%tl5213652636%_)
                      (letrec ((_%loop5213752639%_
                                (lambda (_%hd5213552643%_ _%body5214152646%_)
                                  (if (gx#stx-pair? _%hd5213552643%_)
                                      (let ((_%e5213852648%_
                                             (gx#syntax-e _%hd5213552643%_)))
                                        (let ((_%lp-tl5214052655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5213852648%_)))
                                              (_%lp-hd5213952652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5213852648%_))))
                                          (_%loop5213752639%_
                                           _%lp-tl5214052655%_
                                           (cons _%lp-hd5213952652%_
                                                 _%body5214152646%_))))
                                      (let ((_%body5214252658%_
                                             (reverse _%body5214152646%_)))
                                        (let ((_%g5211652661%_
                                               _%body5214252658%_)
                                              (_%g5211752663%_
                                               _%hd5213252627%_)
                                              (_%g5211852664%_
                                               _%hd5212652607%_))
                                          (if (gx#identifier? _%g5211852664%_)
                                              (_%__kont9464294643%_
                                               _%g5211652661%_
                                               _%g5211752663%_
                                               _%g5211852664%_)
                                              (_%__match9492494925%_
                                               _%e5211952583%_
                                               _%hd5212052587%_
                                               _%tl5212152590%_
                                               _%e5212252593%_
                                               _%hd5212352597%_
                                               _%tl5212452600%_
                                               _%e5212552603%_
                                               _%hd5212652607%_
                                               _%tl5212752610%_))))))))
                        (_%loop5213752639%_ _%target5213452633%_ '()))))
                   (_%__match9483094831%_
                    (lambda (_%e5211952583%_
                             _%hd5212052587%_
                             _%tl5212152590%_
                             _%e5212252593%_
                             _%hd5212352597%_
                             _%tl5212452600%_
                             _%e5212552603%_
                             _%hd5212652607%_
                             _%tl5212752610%_
                             _%e5212852613%_
                             _%hd5212952617%_
                             _%tl5213052620%_)
                      (if (gx#identifier? _%hd5212952617%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101301_|
                               _%hd5212952617%_)
                              (if (gx#stx-pair? _%tl5213052620%_)
                                  (let ((_%e5213152623%_
                                         (gx#syntax-e _%tl5213052620%_)))
                                    (let ((_%tl5213352630%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5213152623%_)))
                                          (_%hd5213252627%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5213152623%_))))
                                      (if (gx#stx-null? _%tl5213352630%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5212452600%_)
                                              (let ((_%__splice9464494645%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5212452600%_
                                                      '0)))
                                                (let ((_%tl5213652636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9464494645%_
                                                          '1)))
                                                      (_%target5213452633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9464494645%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5213652636%_)
                                                      (_%__match9485094851%_
                                                       _%e5211952583%_
                                                       _%hd5212052587%_
                                                       _%tl5212152590%_
                                                       _%e5212252593%_
                                                       _%hd5212352597%_
                                                       _%tl5212452600%_
                                                       _%e5212552603%_
                                                       _%hd5212652607%_
                                                       _%tl5212752610%_
                                                       _%e5212852613%_
                                                       _%hd5212952617%_
                                                       _%tl5213052620%_
                                                       _%e5213152623%_
                                                       _%hd5213252627%_
                                                       _%tl5213352630%_
                                                       _%__splice9464494645%_
                                                       _%target5213452633%_
                                                       _%tl5213652636%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5212652607%_)
                                                          (let ((_%e5219152343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5212652607%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5212652607%_)
                                                  (let ((_%e5219152343%_
                                                         (gx#syntax-e
                                                          _%hd5212652607%_)))
                                                    (let ((_%tl5219352350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219152343%_)))
                                                          (_%hd5219252347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219152343%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5201552224%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))
                                          (if (gx#stx-pair? _%tl5213352630%_)
                                              (let ((_%e5216352473%_
                                                     (gx#syntax-e
                                                      _%tl5213352630%_)))
                                                (let ((_%tl5216552480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5216352473%_)))
                                                      (_%hd5216452477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5216352473%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5216552480%_)
                                                      (let ((_%e5216652483%_
                                                             (gx#syntax-e
                                                              _%tl5216552480%_)))
                                                        (let ((_%tl5216852490%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5216652483%_)))
                      (_%hd5216752487%_
                       (let () (declare (not safe)) (##car _%e5216652483%_))))
                  (if (gx#stx-null? _%tl5216852490%_)
                      (if (gx#stx-pair/null? _%tl5212452600%_)
                          (let ((_%__splice9464894649%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5212452600%_
                                  '0)))
                            (let ((_%tl5217152496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9464894649%_ '1)))
                                  (_%target5216952493%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9464894649%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217152496%_)
                                  (_%__match9490694907%_
                                   _%e5211952583%_
                                   _%hd5212052587%_
                                   _%tl5212152590%_
                                   _%e5212252593%_
                                   _%hd5212352597%_
                                   _%tl5212452600%_
                                   _%e5212552603%_
                                   _%hd5212652607%_
                                   _%tl5212752610%_
                                   _%e5212852613%_
                                   _%hd5212952617%_
                                   _%tl5213052620%_
                                   _%e5213152623%_
                                   _%hd5213252627%_
                                   _%tl5213352630%_
                                   _%e5216352473%_
                                   _%hd5216452477%_
                                   _%tl5216552480%_
                                   _%e5216652483%_
                                   _%hd5216752487%_
                                   _%tl5216852490%_
                                   _%__splice9464894649%_
                                   _%target5216952493%_
                                   _%tl5217152496%_)
                                  (if (gx#stx-pair? _%hd5212652607%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5212652607%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))
                          (if (gx#stx-pair? _%hd5212652607%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5212652607%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                      (if (gx#stx-pair? _%hd5212652607%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5212652607%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (if (gx#stx-pair/null? _%tl5212452600%_)
                                  (let ((_%__splice9465294653%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5212452600%_
                                          '0)))
                                    (let ((_%tl5219652356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '1)))
                                          (_%target5219452353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5219652356%_)
                                          (_%__match9493894939%_
                                           _%e5211952583%_
                                           _%hd5212052587%_
                                           _%tl5212152590%_
                                           _%e5212252593%_
                                           _%hd5212352597%_
                                           _%tl5212452600%_
                                           _%e5212552603%_
                                           _%hd5212652607%_
                                           _%tl5212752610%_
                                           _%e5219152343%_
                                           _%hd5219252347%_
                                           _%tl5219352350%_
                                           _%__splice9465294653%_
                                           _%target5219452353%_
                                           _%tl5219652356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_))))))
              (if (gx#stx-pair? _%hd5212652607%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5212652607%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5212452600%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5212452600%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5211952583%_
                                   _%hd5212052587%_
                                   _%tl5212152590%_
                                   _%e5212252593%_
                                   _%hd5212352597%_
                                   _%tl5212452600%_
                                   _%e5212552603%_
                                   _%hd5212652607%_
                                   _%tl5212752610%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5212652607%_)
                                                  (let ((_%e5219152343%_
                                                         (gx#syntax-e
                                                          _%hd5212652607%_)))
                                                    (let ((_%tl5219352350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219152343%_)))
                                                          (_%hd5219252347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219152343%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5212452600%_)
                                                          (let ((_%__splice9465294653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5212452600%_ '0)))
                    (let ((_%tl5219652356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '1)))
                          (_%target5219452353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '0))))
                      (if (gx#stx-null? _%tl5219652356%_)
                          (_%__match9493894939%_
                           _%e5211952583%_
                           _%hd5212052587%_
                           _%tl5212152590%_
                           _%e5212252593%_
                           _%hd5212352597%_
                           _%tl5212452600%_
                           _%e5212552603%_
                           _%hd5212652607%_
                           _%tl5212752610%_
                           _%e5219152343%_
                           _%hd5219252347%_
                           _%tl5219352350%_
                           _%__splice9465294653%_
                           _%target5219452353%_
                           _%tl5219652356%_)
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))))
                                  (if (gx#stx-pair? _%hd5212652607%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5212652607%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5212452600%_)
                                              (let ((_%__splice9465294653%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5212452600%_
                                                      '0)))
                                                (let ((_%tl5219652356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '1)))
                                                      (_%target5219452353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5219652356%_)
                                                      (_%__match9493894939%_
                                                       _%e5211952583%_
                                                       _%hd5212052587%_
                                                       _%tl5212152590%_
                                                       _%e5212252593%_
                                                       _%hd5212352597%_
                                                       _%tl5212452600%_
                                                       _%e5212552603%_
                                                       _%hd5212652607%_
                                                       _%tl5212752610%_
                                                       _%e5219152343%_
                                                       _%hd5219252347%_
                                                       _%tl5219352350%_
                                                       _%__splice9465294653%_
                                                       _%target5219452353%_
                                                       _%tl5219652356%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5201552224%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                              (if (gx#stx-pair? _%hd5212652607%_)
                                  (let ((_%e5219152343%_
                                         (gx#syntax-e _%hd5212652607%_)))
                                    (let ((_%tl5219352350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219152343%_)))
                                          (_%hd5219252347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219152343%_))))
                                      (if (gx#stx-pair/null? _%tl5212452600%_)
                                          (let ((_%__splice9465294653%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5212452600%_
                                                  '0)))
                                            (let ((_%tl5219652356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9465294653%_
                                                      '1)))
                                                  (_%target5219452353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9465294653%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5219652356%_)
                                                  (_%__match9493894939%_
                                                   _%e5211952583%_
                                                   _%hd5212052587%_
                                                   _%tl5212152590%_
                                                   _%e5212252593%_
                                                   _%hd5212352597%_
                                                   _%tl5212452600%_
                                                   _%e5212552603%_
                                                   _%hd5212652607%_
                                                   _%tl5212752610%_
                                                   _%e5219152343%_
                                                   _%hd5219252347%_
                                                   _%tl5219352350%_
                                                   _%__splice9465294653%_
                                                   _%target5219452353%_
                                                   _%tl5219652356%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                          (if (gx#stx-pair? _%hd5212652607%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5212652607%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (if (gx#stx-pair/null? _%tl5212452600%_)
                                      (let ((_%__splice9465294653%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5212452600%_
                                              '0)))
                                        (let ((_%tl5219652356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9465294653%_
                                                  '1)))
                                              (_%target5219452353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9465294653%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5219652356%_)
                                              (_%__match9493894939%_
                                               _%e5211952583%_
                                               _%hd5212052587%_
                                               _%tl5212152590%_
                                               _%e5212252593%_
                                               _%hd5212352597%_
                                               _%tl5212452600%_
                                               _%e5212552603%_
                                               _%hd5212652607%_
                                               _%tl5212752610%_
                                               _%e5219152343%_
                                               _%hd5219252347%_
                                               _%tl5219352350%_
                                               _%__splice9465294653%_
                                               _%target5219452353%_
                                               _%tl5219652356%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_))))))
                   (_%__match9480694807%_
                    (lambda (_%e5209252703%_
                             _%hd5209352707%_
                             _%tl5209452710%_
                             _%e5209552713%_
                             _%hd5209652717%_
                             _%tl5209752720%_
                             _%e5209852723%_
                             _%hd5209952727%_
                             _%tl5210052730%_
                             _%e5210152733%_
                             _%hd5210252737%_
                             _%tl5210352740%_
                             _%e5210452743%_
                             _%hd5210552747%_
                             _%tl5210652750%_
                             _%__splice9464094641%_
                             _%target5210752753%_
                             _%tl5210952756%_)
                      (letrec ((_%loop5211052759%_
                                (lambda (_%hd5210852763%_ _%body5211452766%_)
                                  (if (gx#stx-pair? _%hd5210852763%_)
                                      (let ((_%e5211152768%_
                                             (gx#syntax-e _%hd5210852763%_)))
                                        (let ((_%lp-tl5211352775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5211152768%_)))
                                              (_%lp-hd5211252772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5211152768%_))))
                                          (_%loop5211052759%_
                                           _%lp-tl5211352775%_
                                           (cons _%lp-hd5211252772%_
                                                 _%body5211452766%_))))
                                      (let ((_%body5211552778%_
                                             (reverse _%body5211452766%_)))
                                        (let ((_%g5208852781%_
                                               _%body5211552778%_)
                                              (_%g5208952783%_
                                               _%hd5210552747%_)
                                              (_%g5209052784%_
                                               _%hd5210252737%_)
                                              (_%g5209152785%_
                                               _%hd5209952727%_))
                                          (if (and (gx#identifier?
                                                    _%g5209152785%_)
                                                   (gx#identifier?
                                                    _%g5208952783%_)
                                                   (gx#identifier?
                                                    _%g5209052784%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5209052784%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5209052784%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5209052784%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5209052784%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9463894639%_
                                               _%g5208852781%_
                                               _%g5208952783%_
                                               _%g5209052784%_
                                               _%g5209152785%_)
                                              (_%__match9483094831%_
                                               _%e5209252703%_
                                               _%hd5209352707%_
                                               _%tl5209452710%_
                                               _%e5209552713%_
                                               _%hd5209652717%_
                                               _%tl5209752720%_
                                               _%e5209852723%_
                                               _%hd5209952727%_
                                               _%tl5210052730%_
                                               _%e5210152733%_
                                               _%hd5210252737%_
                                               _%tl5210352740%_))))))))
                        (_%loop5211052759%_ _%target5210752753%_ '()))))
                   (_%__match9476694767%_
                    (lambda (_%e5205552854%_
                             _%hd5205652858%_
                             _%tl5205752861%_
                             _%e5205852864%_
                             _%hd5205952868%_
                             _%tl5206052871%_
                             _%e5206152874%_
                             _%hd5206252878%_
                             _%tl5206352881%_
                             _%e5206452884%_
                             _%hd5206552888%_
                             _%tl5206652891%_
                             _%e5206752894%_
                             _%hd5206852898%_
                             _%tl5206952901%_
                             _%e5207052904%_
                             _%hd5207152908%_
                             _%tl5207252911%_
                             _%e5207352914%_
                             _%hd5207452918%_
                             _%tl5207552921%_
                             _%e5207652924%_
                             _%hd5207752928%_
                             _%tl5207852931%_
                             _%__splice9463694637%_
                             _%target5207952934%_
                             _%tl5208152937%_)
                      (letrec ((_%loop5208252940%_
                                (lambda (_%hd5208052944%_ _%body5208652947%_)
                                  (if (gx#stx-pair? _%hd5208052944%_)
                                      (let ((_%e5208352949%_
                                             (gx#syntax-e _%hd5208052944%_)))
                                        (let ((_%lp-tl5208552956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5208352949%_)))
                                              (_%lp-hd5208452953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5208352949%_))))
                                          (_%loop5208252940%_
                                           _%lp-tl5208552956%_
                                           (cons _%lp-hd5208452953%_
                                                 _%body5208652947%_))))
                                      (let ((_%body5208752959%_
                                             (reverse _%body5208652947%_)))
                                        (let ((_%g5204952962%_
                                               _%body5208752959%_)
                                              (_%g5205052964%_
                                               _%hd5207752928%_)
                                              (_%g5205152965%_
                                               _%hd5207452918%_)
                                              (_%g5205252966%_
                                               _%hd5207152908%_)
                                              (_%g5205352967%_
                                               _%hd5206552888%_)
                                              (_%g5205452968%_
                                               _%hd5206252878%_))
                                          (if (and (gx#identifier?
                                                    _%g5205452968%_)
                                                   (gx#identifier?
                                                    _%g5205052964%_)
                                                   (gx#identifier?
                                                    _%g5205152965%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5205152965%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5205152965%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5205152965%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5205152965%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9463494635%_
                                               _%g5204952962%_
                                               _%g5205052964%_
                                               _%g5205152965%_
                                               _%g5205252966%_
                                               _%g5205352967%_
                                               _%g5205452968%_)
                                              (_%__match9483094831%_
                                               _%e5205552854%_
                                               _%hd5205652858%_
                                               _%tl5205752861%_
                                               _%e5205852864%_
                                               _%hd5205952868%_
                                               _%tl5206052871%_
                                               _%e5206152874%_
                                               _%hd5206252878%_
                                               _%tl5206352881%_
                                               _%e5206452884%_
                                               _%hd5206552888%_
                                               _%tl5206652891%_))))))))
                        (_%loop5208252940%_ _%target5207952934%_ '()))))
                   (_%__match9473494735%_
                    (lambda (_%e5205552854%_
                             _%hd5205652858%_
                             _%tl5205752861%_
                             _%e5205852864%_
                             _%hd5205952868%_
                             _%tl5206052871%_
                             _%e5206152874%_
                             _%hd5206252878%_
                             _%tl5206352881%_
                             _%e5206452884%_
                             _%hd5206552888%_
                             _%tl5206652891%_
                             _%e5206752894%_
                             _%hd5206852898%_
                             _%tl5206952901%_)
                      (if (gx#identifier? _%hd5206852898%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101302_|
                               _%hd5206852898%_)
                              (if (gx#stx-pair? _%tl5206952901%_)
                                  (let ((_%e5207052904%_
                                         (gx#syntax-e _%tl5206952901%_)))
                                    (let ((_%tl5207252911%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5207052904%_)))
                                          (_%hd5207152908%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5207052904%_))))
                                      (if (gx#stx-pair? _%tl5207252911%_)
                                          (let ((_%e5207352914%_
                                                 (gx#syntax-e
                                                  _%tl5207252911%_)))
                                            (let ((_%tl5207552921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5207352914%_)))
                                                  (_%hd5207452918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5207352914%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5207552921%_)
                                                  (let ((_%e5207652924%_
                                                         (gx#syntax-e
                                                          _%tl5207552921%_)))
                                                    (let ((_%tl5207852931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5207652924%_)))
                                                          (_%hd5207752928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5207652924%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5207852931%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5206052871%_)
                                                              (let ((_%__splice9463694637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5206052871%_
                              '0)))
                        (let ((_%tl5208152937%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9463694637%_ '1)))
                              (_%target5207952934%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9463694637%_ '0))))
                          (if (gx#stx-null? _%tl5208152937%_)
                              (_%__match9476694767%_
                               _%e5205552854%_
                               _%hd5205652858%_
                               _%tl5205752861%_
                               _%e5205852864%_
                               _%hd5205952868%_
                               _%tl5206052871%_
                               _%e5206152874%_
                               _%hd5206252878%_
                               _%tl5206352881%_
                               _%e5206452884%_
                               _%hd5206552888%_
                               _%tl5206652891%_
                               _%e5206752894%_
                               _%hd5206852898%_
                               _%tl5206952901%_
                               _%e5207052904%_
                               _%hd5207152908%_
                               _%tl5207252911%_
                               _%e5207352914%_
                               _%hd5207452918%_
                               _%tl5207552921%_
                               _%e5207652924%_
                               _%hd5207752928%_
                               _%tl5207852931%_
                               _%__splice9463694637%_
                               _%target5207952934%_
                               _%tl5208152937%_)
                              (if (gx#stx-pair? _%hd5206252878%_)
                                  (let ((_%e5219152343%_
                                         (gx#syntax-e _%hd5206252878%_)))
                                    (let ((_%tl5219352350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219152343%_)))
                                          (_%hd5219252347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219152343%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))))
                      (if (gx#stx-pair? _%hd5206252878%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5206252878%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                  (if (gx#stx-pair? _%hd5206252878%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5206252878%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (if (gx#stx-pair/null? _%tl5206052871%_)
                              (let ((_%__splice9465294653%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206052871%_
                                      '0)))
                                (let ((_%tl5219652356%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '1)))
                                      (_%target5219452353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5219652356%_)
                                      (_%__match9493894939%_
                                       _%e5205552854%_
                                       _%hd5205652858%_
                                       _%tl5205752861%_
                                       _%e5205852864%_
                                       _%hd5205952868%_
                                       _%tl5206052871%_
                                       _%e5206152874%_
                                       _%hd5206252878%_
                                       _%tl5206352881%_
                                       _%e5219152343%_
                                       _%hd5219252347%_
                                       _%tl5219352350%_
                                       _%__splice9465294653%_
                                       _%target5219452353%_
                                       _%tl5219652356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5206552888%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101301_|
                                                           _%hd5206552888%_)
                                                          (if (gx#stx-null?
                                                               _%tl5207552921%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5206052871%_)
                          (let ((_%__splice9464894649%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206052871%_
                                  '0)))
                            (let ((_%tl5217152496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9464894649%_ '1)))
                                  (_%target5216952493%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9464894649%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217152496%_)
                                  (_%__match9490694907%_
                                   _%e5205552854%_
                                   _%hd5205652858%_
                                   _%tl5205752861%_
                                   _%e5205852864%_
                                   _%hd5205952868%_
                                   _%tl5206052871%_
                                   _%e5206152874%_
                                   _%hd5206252878%_
                                   _%tl5206352881%_
                                   _%e5206452884%_
                                   _%hd5206552888%_
                                   _%tl5206652891%_
                                   _%e5206752894%_
                                   _%hd5206852898%_
                                   _%tl5206952901%_
                                   _%e5207052904%_
                                   _%hd5207152908%_
                                   _%tl5207252911%_
                                   _%e5207352914%_
                                   _%hd5207452918%_
                                   _%tl5207552921%_
                                   _%__splice9464894649%_
                                   _%target5216952493%_
                                   _%tl5217152496%_)
                                  (if (gx#stx-pair? _%hd5206252878%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5206252878%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))
                          (if (gx#stx-pair? _%hd5206252878%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5206252878%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                      (if (gx#stx-pair? _%hd5206252878%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5206252878%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (if (gx#stx-pair/null? _%tl5206052871%_)
                                  (let ((_%__splice9465294653%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206052871%_
                                          '0)))
                                    (let ((_%tl5219652356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '1)))
                                          (_%target5219452353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5219652356%_)
                                          (_%__match9493894939%_
                                           _%e5205552854%_
                                           _%hd5205652858%_
                                           _%tl5205752861%_
                                           _%e5205852864%_
                                           _%hd5205952868%_
                                           _%tl5206052871%_
                                           _%e5206152874%_
                                           _%hd5206252878%_
                                           _%tl5206352881%_
                                           _%e5219152343%_
                                           _%hd5219252347%_
                                           _%tl5219352350%_
                                           _%__splice9465294653%_
                                           _%target5219452353%_
                                           _%tl5219652356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                  (if (gx#stx-pair? _%hd5206252878%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5206252878%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (if (gx#stx-pair/null? _%tl5206052871%_)
                              (let ((_%__splice9465294653%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206052871%_
                                      '0)))
                                (let ((_%tl5219652356%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '1)))
                                      (_%target5219452353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5219652356%_)
                                      (_%__match9493894939%_
                                       _%e5205552854%_
                                       _%hd5205652858%_
                                       _%tl5205752861%_
                                       _%e5205852864%_
                                       _%hd5205952868%_
                                       _%tl5206052871%_
                                       _%e5206152874%_
                                       _%hd5206252878%_
                                       _%tl5206352881%_
                                       _%e5219152343%_
                                       _%hd5219252347%_
                                       _%tl5219352350%_
                                       _%__splice9465294653%_
                                       _%target5219452353%_
                                       _%tl5219652356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
              (if (gx#stx-pair? _%hd5206252878%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5206252878%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5206052871%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206052871%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5205552854%_
                                   _%hd5205652858%_
                                   _%tl5205752861%_
                                   _%e5205852864%_
                                   _%hd5205952868%_
                                   _%tl5206052871%_
                                   _%e5206152874%_
                                   _%hd5206252878%_
                                   _%tl5206352881%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206252878%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5206252878%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206052871%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206052871%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5205552854%_
                       _%hd5205652858%_
                       _%tl5205752861%_
                       _%e5205852864%_
                       _%hd5205952868%_
                       _%tl5206052871%_
                       _%e5206152874%_
                       _%hd5206252878%_
                       _%tl5206352881%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))))
                                  (if (gx#stx-null? _%tl5206952901%_)
                                      (if (gx#stx-pair/null? _%tl5206052871%_)
                                          (let ((_%__splice9464094641%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5206052871%_
                                                  '0)))
                                            (let ((_%tl5210952756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9464094641%_
                                                      '1)))
                                                  (_%target5210752753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9464094641%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5210952756%_)
                                                  (_%__match9480694807%_
                                                   _%e5205552854%_
                                                   _%hd5205652858%_
                                                   _%tl5205752861%_
                                                   _%e5205852864%_
                                                   _%hd5205952868%_
                                                   _%tl5206052871%_
                                                   _%e5206152874%_
                                                   _%hd5206252878%_
                                                   _%tl5206352881%_
                                                   _%e5206452884%_
                                                   _%hd5206552888%_
                                                   _%tl5206652891%_
                                                   _%e5206752894%_
                                                   _%hd5206852898%_
                                                   _%tl5206952901%_
                                                   _%__splice9464094641%_
                                                   _%target5210752753%_
                                                   _%tl5210952756%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5206252878%_)
                                                      (let ((_%e5219152343%_
                                                             (gx#syntax-e
                                                              _%hd5206252878%_)))
                                                        (let ((_%tl5219352350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219152343%_)))
                      (_%hd5219252347%_
                       (let () (declare (not safe)) (##car _%e5219152343%_))))
                  (let () (declare (not safe)) (_%g5201552224%_))))
              (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206252878%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5206252878%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                      (if (gx#stx-pair? _%hd5206252878%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5206252878%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206052871%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206052871%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5205552854%_
                                                           _%hd5205652858%_
                                                           _%tl5205752861%_
                                                           _%e5205852864%_
                                                           _%hd5205952868%_
                                                           _%tl5206052871%_
                                                           _%e5206152874%_
                                                           _%hd5206252878%_
                                                           _%tl5206352881%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                              (if (gx#stx-null? _%tl5206952901%_)
                                  (if (gx#stx-pair/null? _%tl5206052871%_)
                                      (let ((_%__splice9464094641%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5206052871%_
                                              '0)))
                                        (let ((_%tl5210952756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9464094641%_
                                                  '1)))
                                              (_%target5210752753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9464094641%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5210952756%_)
                                              (_%__match9480694807%_
                                               _%e5205552854%_
                                               _%hd5205652858%_
                                               _%tl5205752861%_
                                               _%e5205852864%_
                                               _%hd5205952868%_
                                               _%tl5206052871%_
                                               _%e5206152874%_
                                               _%hd5206252878%_
                                               _%tl5206352881%_
                                               _%e5206452884%_
                                               _%hd5206552888%_
                                               _%tl5206652891%_
                                               _%e5206752894%_
                                               _%hd5206852898%_
                                               _%tl5206952901%_
                                               _%__splice9464094641%_
                                               _%target5210752753%_
                                               _%tl5210952756%_)
                                              (if (gx#stx-pair?
                                                   _%hd5206252878%_)
                                                  (let ((_%e5219152343%_
                                                         (gx#syntax-e
                                                          _%hd5206252878%_)))
                                                    (let ((_%tl5219352350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219152343%_)))
                                                          (_%hd5219252347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219152343%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5201552224%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))))
                                      (if (gx#stx-pair? _%hd5206252878%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5206252878%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                  (if (gx#identifier? _%hd5206552888%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101301_|
                                           _%hd5206552888%_)
                                          (if (gx#stx-pair? _%tl5206952901%_)
                                              (let ((_%e5216352473%_
                                                     (gx#syntax-e
                                                      _%tl5206952901%_)))
                                                (let ((_%tl5216552480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5216352473%_)))
                                                      (_%hd5216452477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5216352473%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5216552480%_)
                                                      (let ((_%e5216652483%_
                                                             (gx#syntax-e
                                                              _%tl5216552480%_)))
                                                        (let ((_%tl5216852490%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5216652483%_)))
                      (_%hd5216752487%_
                       (let () (declare (not safe)) (##car _%e5216652483%_))))
                  (if (gx#stx-null? _%tl5216852490%_)
                      (if (gx#stx-pair/null? _%tl5206052871%_)
                          (let ((_%__splice9464894649%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206052871%_
                                  '0)))
                            (let ((_%tl5217152496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9464894649%_ '1)))
                                  (_%target5216952493%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9464894649%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217152496%_)
                                  (_%__match9490694907%_
                                   _%e5205552854%_
                                   _%hd5205652858%_
                                   _%tl5205752861%_
                                   _%e5205852864%_
                                   _%hd5205952868%_
                                   _%tl5206052871%_
                                   _%e5206152874%_
                                   _%hd5206252878%_
                                   _%tl5206352881%_
                                   _%e5206452884%_
                                   _%hd5206552888%_
                                   _%tl5206652891%_
                                   _%e5206752894%_
                                   _%hd5206852898%_
                                   _%tl5206952901%_
                                   _%e5216352473%_
                                   _%hd5216452477%_
                                   _%tl5216552480%_
                                   _%e5216652483%_
                                   _%hd5216752487%_
                                   _%tl5216852490%_
                                   _%__splice9464894649%_
                                   _%target5216952493%_
                                   _%tl5217152496%_)
                                  (if (gx#stx-pair? _%hd5206252878%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5206252878%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))
                          (if (gx#stx-pair? _%hd5206252878%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5206252878%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                      (if (gx#stx-pair? _%hd5206252878%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5206252878%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (if (gx#stx-pair/null? _%tl5206052871%_)
                                  (let ((_%__splice9465294653%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206052871%_
                                          '0)))
                                    (let ((_%tl5219652356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '1)))
                                          (_%target5219452353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5219652356%_)
                                          (_%__match9493894939%_
                                           _%e5205552854%_
                                           _%hd5205652858%_
                                           _%tl5205752861%_
                                           _%e5205852864%_
                                           _%hd5205952868%_
                                           _%tl5206052871%_
                                           _%e5206152874%_
                                           _%hd5206252878%_
                                           _%tl5206352881%_
                                           _%e5219152343%_
                                           _%hd5219252347%_
                                           _%tl5219352350%_
                                           _%__splice9465294653%_
                                           _%target5219452353%_
                                           _%tl5219652356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_))))))
              (if (gx#stx-pair? _%hd5206252878%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5206252878%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5206052871%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206052871%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5205552854%_
                                   _%hd5205652858%_
                                   _%tl5205752861%_
                                   _%e5205852864%_
                                   _%hd5205952868%_
                                   _%tl5206052871%_
                                   _%e5206152874%_
                                   _%hd5206252878%_
                                   _%tl5206352881%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5206252878%_)
                                                  (let ((_%e5219152343%_
                                                         (gx#syntax-e
                                                          _%hd5206252878%_)))
                                                    (let ((_%tl5219352350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219152343%_)))
                                                          (_%hd5219252347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219152343%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5206052871%_)
                                                          (let ((_%__splice9465294653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5206052871%_ '0)))
                    (let ((_%tl5219652356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '1)))
                          (_%target5219452353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '0))))
                      (if (gx#stx-null? _%tl5219652356%_)
                          (_%__match9493894939%_
                           _%e5205552854%_
                           _%hd5205652858%_
                           _%tl5205752861%_
                           _%e5205852864%_
                           _%hd5205952868%_
                           _%tl5206052871%_
                           _%e5206152874%_
                           _%hd5206252878%_
                           _%tl5206352881%_
                           _%e5219152343%_
                           _%hd5219252347%_
                           _%tl5219352350%_
                           _%__splice9465294653%_
                           _%target5219452353%_
                           _%tl5219652356%_)
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))
                                          (if (gx#stx-pair? _%hd5206252878%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5206252878%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206052871%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206052871%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5205552854%_
                       _%hd5205652858%_
                       _%tl5205752861%_
                       _%e5205852864%_
                       _%hd5205952868%_
                       _%tl5206052871%_
                       _%e5206152874%_
                       _%hd5206252878%_
                       _%tl5206352881%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                      (if (gx#stx-pair? _%hd5206252878%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5206252878%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206052871%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206052871%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5205552854%_
                                                           _%hd5205652858%_
                                                           _%tl5205752861%_
                                                           _%e5205852864%_
                                                           _%hd5205952868%_
                                                           _%tl5206052871%_
                                                           _%e5206152874%_
                                                           _%hd5206252878%_
                                                           _%tl5206352881%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))))
                          (if (gx#stx-null? _%tl5206952901%_)
                              (if (gx#stx-pair/null? _%tl5206052871%_)
                                  (let ((_%__splice9464094641%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206052871%_
                                          '0)))
                                    (let ((_%tl5210952756%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9464094641%_
                                              '1)))
                                          (_%target5210752753%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9464094641%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5210952756%_)
                                          (_%__match9480694807%_
                                           _%e5205552854%_
                                           _%hd5205652858%_
                                           _%tl5205752861%_
                                           _%e5205852864%_
                                           _%hd5205952868%_
                                           _%tl5206052871%_
                                           _%e5206152874%_
                                           _%hd5206252878%_
                                           _%tl5206352881%_
                                           _%e5206452884%_
                                           _%hd5206552888%_
                                           _%tl5206652891%_
                                           _%e5206752894%_
                                           _%hd5206852898%_
                                           _%tl5206952901%_
                                           _%__splice9464094641%_
                                           _%target5210752753%_
                                           _%tl5210952756%_)
                                          (if (gx#stx-pair? _%hd5206252878%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5206252878%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))))
                                  (if (gx#stx-pair? _%hd5206252878%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5206252878%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                              (if (gx#identifier? _%hd5206552888%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101301_|
                                       _%hd5206552888%_)
                                      (if (gx#stx-pair? _%tl5206952901%_)
                                          (let ((_%e5216352473%_
                                                 (gx#syntax-e
                                                  _%tl5206952901%_)))
                                            (let ((_%tl5216552480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5216352473%_)))
                                                  (_%hd5216452477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5216352473%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5216552480%_)
                                                  (let ((_%e5216652483%_
                                                         (gx#syntax-e
                                                          _%tl5216552480%_)))
                                                    (let ((_%tl5216852490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5216652483%_)))
                                                          (_%hd5216752487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5216652483%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5216852490%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5206052871%_)
                                                              (let ((_%__splice9464894649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5206052871%_
                              '0)))
                        (let ((_%tl5217152496%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9464894649%_ '1)))
                              (_%target5216952493%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9464894649%_ '0))))
                          (if (gx#stx-null? _%tl5217152496%_)
                              (_%__match9490694907%_
                               _%e5205552854%_
                               _%hd5205652858%_
                               _%tl5205752861%_
                               _%e5205852864%_
                               _%hd5205952868%_
                               _%tl5206052871%_
                               _%e5206152874%_
                               _%hd5206252878%_
                               _%tl5206352881%_
                               _%e5206452884%_
                               _%hd5206552888%_
                               _%tl5206652891%_
                               _%e5206752894%_
                               _%hd5206852898%_
                               _%tl5206952901%_
                               _%e5216352473%_
                               _%hd5216452477%_
                               _%tl5216552480%_
                               _%e5216652483%_
                               _%hd5216752487%_
                               _%tl5216852490%_
                               _%__splice9464894649%_
                               _%target5216952493%_
                               _%tl5217152496%_)
                              (if (gx#stx-pair? _%hd5206252878%_)
                                  (let ((_%e5219152343%_
                                         (gx#syntax-e _%hd5206252878%_)))
                                    (let ((_%tl5219352350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219152343%_)))
                                          (_%hd5219252347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219152343%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))))
                      (if (gx#stx-pair? _%hd5206252878%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5206252878%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                  (if (gx#stx-pair? _%hd5206252878%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5206252878%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (if (gx#stx-pair/null? _%tl5206052871%_)
                              (let ((_%__splice9465294653%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206052871%_
                                      '0)))
                                (let ((_%tl5219652356%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '1)))
                                      (_%target5219452353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5219652356%_)
                                      (_%__match9493894939%_
                                       _%e5205552854%_
                                       _%hd5205652858%_
                                       _%tl5205752861%_
                                       _%e5205852864%_
                                       _%hd5205952868%_
                                       _%tl5206052871%_
                                       _%e5206152874%_
                                       _%hd5206252878%_
                                       _%tl5206352881%_
                                       _%e5219152343%_
                                       _%hd5219252347%_
                                       _%tl5219352350%_
                                       _%__splice9465294653%_
                                       _%target5219452353%_
                                       _%tl5219652356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5206252878%_)
                                                      (let ((_%e5219152343%_
                                                             (gx#syntax-e
                                                              _%hd5206252878%_)))
                                                        (let ((_%tl5219352350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219152343%_)))
                      (_%hd5219252347%_
                       (let () (declare (not safe)) (##car _%e5219152343%_))))
                  (if (gx#stx-pair/null? _%tl5206052871%_)
                      (let ((_%__splice9465294653%_
                             (gx#syntax-split-splice->vector
                              _%tl5206052871%_
                              '0)))
                        (let ((_%tl5219652356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '1)))
                              (_%target5219452353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '0))))
                          (if (gx#stx-null? _%tl5219652356%_)
                              (_%__match9493894939%_
                               _%e5205552854%_
                               _%hd5205652858%_
                               _%tl5205752861%_
                               _%e5205852864%_
                               _%hd5205952868%_
                               _%tl5206052871%_
                               _%e5206152874%_
                               _%hd5206252878%_
                               _%tl5206352881%_
                               _%e5219152343%_
                               _%hd5219252347%_
                               _%tl5219352350%_
                               _%__splice9465294653%_
                               _%target5219452353%_
                               _%tl5219652356%_)
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206252878%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5206252878%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206052871%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206052871%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5205552854%_
                       _%hd5205652858%_
                       _%tl5205752861%_
                       _%e5205852864%_
                       _%hd5205952868%_
                       _%tl5206052871%_
                       _%e5206152874%_
                       _%hd5206252878%_
                       _%tl5206352881%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                      (if (gx#stx-pair? _%hd5206252878%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5206252878%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206052871%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206052871%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5205552854%_
                                                           _%hd5205652858%_
                                                           _%tl5205752861%_
                                                           _%e5205852864%_
                                                           _%hd5205952868%_
                                                           _%tl5206052871%_
                                                           _%e5206152874%_
                                                           _%hd5206252878%_
                                                           _%tl5206352881%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                  (if (gx#stx-pair? _%hd5206252878%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5206252878%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5206052871%_)
                                              (let ((_%__splice9465294653%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5206052871%_
                                                      '0)))
                                                (let ((_%tl5219652356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '1)))
                                                      (_%target5219452353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5219652356%_)
                                                      (_%__match9493894939%_
                                                       _%e5205552854%_
                                                       _%hd5205652858%_
                                                       _%tl5205752861%_
                                                       _%e5205852864%_
                                                       _%hd5205952868%_
                                                       _%tl5206052871%_
                                                       _%e5206152874%_
                                                       _%hd5206252878%_
                                                       _%tl5206352881%_
                                                       _%e5219152343%_
                                                       _%hd5219252347%_
                                                       _%tl5219352350%_
                                                       _%__splice9465294653%_
                                                       _%target5219452353%_
                                                       _%tl5219652356%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5201552224%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))))
                   (_%__match9470494705%_
                    (lambda (_%e5202253028%_
                             _%hd5202353032%_
                             _%tl5202453035%_
                             _%e5202553038%_
                             _%hd5202653042%_
                             _%tl5202753045%_
                             _%e5202853048%_
                             _%hd5202953052%_
                             _%tl5203053055%_
                             _%e5203153058%_
                             _%hd5203253062%_
                             _%tl5203353065%_
                             _%e5203453068%_
                             _%hd5203553072%_
                             _%tl5203653075%_
                             _%e5203753078%_
                             _%hd5203853082%_
                             _%tl5203953085%_
                             _%__splice9463294633%_
                             _%target5204053088%_
                             _%tl5204253091%_)
                      (letrec ((_%loop5204353094%_
                                (lambda (_%hd5204153098%_ _%body5204753101%_)
                                  (if (gx#stx-pair? _%hd5204153098%_)
                                      (let ((_%e5204453103%_
                                             (gx#syntax-e _%hd5204153098%_)))
                                        (let ((_%lp-tl5204653110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5204453103%_)))
                                              (_%lp-hd5204553107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5204453103%_))))
                                          (_%loop5204353094%_
                                           _%lp-tl5204653110%_
                                           (cons _%lp-hd5204553107%_
                                                 _%body5204753101%_))))
                                      (let ((_%body5204853113%_
                                             (reverse _%body5204753101%_)))
                                        (let ((_%g5201753116%_
                                               _%body5204853113%_)
                                              (_%g5201853118%_
                                               _%hd5203853082%_)
                                              (_%g5201953119%_
                                               _%hd5203553072%_)
                                              (_%g5202053120%_
                                               _%hd5203253062%_)
                                              (_%g5202153121%_
                                               _%hd5202953052%_))
                                          (if (and (gx#identifier?
                                                    _%g5202153121%_)
                                                   (gx#identifier?
                                                    _%g5201953119%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5201953119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5201953119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5201953119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5201953119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5201953119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9463094631%_
                                               _%g5201753116%_
                                               _%g5201853118%_
                                               _%g5201953119%_
                                               _%g5202053120%_
                                               _%g5202153121%_)
                                              (_%__match9473494735%_
                                               _%e5202253028%_
                                               _%hd5202353032%_
                                               _%tl5202453035%_
                                               _%e5202553038%_
                                               _%hd5202653042%_
                                               _%tl5202753045%_
                                               _%e5202853048%_
                                               _%hd5202953052%_
                                               _%tl5203053055%_
                                               _%e5203153058%_
                                               _%hd5203253062%_
                                               _%tl5203353065%_
                                               _%e5203453068%_
                                               _%hd5203553072%_
                                               _%tl5203653075%_))))))))
                        (_%loop5204353094%_ _%target5204053088%_ '())))))
              (if (gx#stx-pair? _%__stx9462794628%_)
                  (let ((_%e5202253028%_ (gx#syntax-e _%__stx9462794628%_)))
                    (let ((_%tl5202453035%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5202253028%_)))
                          (_%hd5202353032%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5202253028%_))))
                      (if (gx#stx-pair? _%tl5202453035%_)
                          (let ((_%e5202553038%_
                                 (gx#syntax-e _%tl5202453035%_)))
                            (let ((_%tl5202753045%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5202553038%_)))
                                  (_%hd5202653042%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5202553038%_))))
                              (if (gx#stx-pair? _%hd5202653042%_)
                                  (let ((_%e5202853048%_
                                         (gx#syntax-e _%hd5202653042%_)))
                                    (let ((_%tl5203053055%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5202853048%_)))
                                          (_%hd5202953052%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5202853048%_))))
                                      (if (gx#stx-pair? _%tl5203053055%_)
                                          (let ((_%e5203153058%_
                                                 (gx#syntax-e
                                                  _%tl5203053055%_)))
                                            (let ((_%tl5203353065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5203153058%_)))
                                                  (_%hd5203253062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5203153058%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5203353065%_)
                                                  (let ((_%e5203453068%_
                                                         (gx#syntax-e
                                                          _%tl5203353065%_)))
                                                    (let ((_%tl5203653075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5203453068%_)))
                                                          (_%hd5203553072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5203453068%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5203653075%_)
                                                          (let ((_%e5203753078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5203653075%_)))
                    (let ((_%tl5203953085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5203753078%_)))
                          (_%hd5203853082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5203753078%_))))
                      (if (gx#stx-null? _%tl5203953085%_)
                          (if (gx#stx-pair/null? _%tl5202753045%_)
                              (let ((_%__splice9463294633%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5202753045%_
                                      '0)))
                                (let ((_%tl5204253091%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9463294633%_
                                          '1)))
                                      (_%target5204053088%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9463294633%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5204253091%_)
                                      (_%__match9470494705%_
                                       _%e5202253028%_
                                       _%hd5202353032%_
                                       _%tl5202453035%_
                                       _%e5202553038%_
                                       _%hd5202653042%_
                                       _%tl5202753045%_
                                       _%e5202853048%_
                                       _%hd5202953052%_
                                       _%tl5203053055%_
                                       _%e5203153058%_
                                       _%hd5203253062%_
                                       _%tl5203353065%_
                                       _%e5203453068%_
                                       _%hd5203553072%_
                                       _%tl5203653075%_
                                       _%e5203753078%_
                                       _%hd5203853082%_
                                       _%tl5203953085%_
                                       _%__splice9463294633%_
                                       _%target5204053088%_
                                       _%tl5204253091%_)
                                      (if (gx#stx-pair? _%hd5202953052%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5202953052%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))))
                              (if (gx#stx-pair? _%hd5202953052%_)
                                  (let ((_%e5219152343%_
                                         (gx#syntax-e _%hd5202953052%_)))
                                    (let ((_%tl5219352350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219152343%_)))
                                          (_%hd5219252347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219152343%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                          (if (gx#identifier? _%hd5203553072%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g101302_|
                                   _%hd5203553072%_)
                                  (if (gx#stx-pair? _%tl5203953085%_)
                                      (let ((_%e5207352914%_
                                             (gx#syntax-e _%tl5203953085%_)))
                                        (let ((_%tl5207552921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5207352914%_)))
                                              (_%hd5207452918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5207352914%_))))
                                          (if (gx#stx-pair? _%tl5207552921%_)
                                              (let ((_%e5207652924%_
                                                     (gx#syntax-e
                                                      _%tl5207552921%_)))
                                                (let ((_%tl5207852931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5207652924%_)))
                                                      (_%hd5207752928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5207652924%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5207852931%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5202753045%_)
                                                          (let ((_%__splice9463694637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5202753045%_ '0)))
                    (let ((_%tl5208152937%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9463694637%_ '1)))
                          (_%target5207952934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9463694637%_ '0))))
                      (if (gx#stx-null? _%tl5208152937%_)
                          (_%__match9476694767%_
                           _%e5202253028%_
                           _%hd5202353032%_
                           _%tl5202453035%_
                           _%e5202553038%_
                           _%hd5202653042%_
                           _%tl5202753045%_
                           _%e5202853048%_
                           _%hd5202953052%_
                           _%tl5203053055%_
                           _%e5203153058%_
                           _%hd5203253062%_
                           _%tl5203353065%_
                           _%e5203453068%_
                           _%hd5203553072%_
                           _%tl5203653075%_
                           _%e5203753078%_
                           _%hd5203853082%_
                           _%tl5203953085%_
                           _%e5207352914%_
                           _%hd5207452918%_
                           _%tl5207552921%_
                           _%e5207652924%_
                           _%hd5207752928%_
                           _%tl5207852931%_
                           _%__splice9463694637%_
                           _%target5207952934%_
                           _%tl5208152937%_)
                          (if (gx#stx-pair? _%hd5202953052%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5202953052%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_))))))
                  (if (gx#stx-pair? _%hd5202953052%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
              (if (gx#stx-pair? _%hd5202953052%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5202753045%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5202753045%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5202253028%_
                                   _%hd5202353032%_
                                   _%tl5202453035%_
                                   _%e5202553038%_
                                   _%hd5202653042%_
                                   _%tl5202753045%_
                                   _%e5202853048%_
                                   _%hd5202953052%_
                                   _%tl5203053055%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5203253062%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g101301_|
                                                       _%hd5203253062%_)
                                                      (if (gx#stx-null?
                                                           _%tl5207552921%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5202753045%_)
                                                              (let ((_%__splice9464894649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5202753045%_
                              '0)))
                        (let ((_%tl5217152496%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9464894649%_ '1)))
                              (_%target5216952493%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9464894649%_ '0))))
                          (if (gx#stx-null? _%tl5217152496%_)
                              (_%__match9490694907%_
                               _%e5202253028%_
                               _%hd5202353032%_
                               _%tl5202453035%_
                               _%e5202553038%_
                               _%hd5202653042%_
                               _%tl5202753045%_
                               _%e5202853048%_
                               _%hd5202953052%_
                               _%tl5203053055%_
                               _%e5203153058%_
                               _%hd5203253062%_
                               _%tl5203353065%_
                               _%e5203453068%_
                               _%hd5203553072%_
                               _%tl5203653075%_
                               _%e5203753078%_
                               _%hd5203853082%_
                               _%tl5203953085%_
                               _%e5207352914%_
                               _%hd5207452918%_
                               _%tl5207552921%_
                               _%__splice9464894649%_
                               _%target5216952493%_
                               _%tl5217152496%_)
                              (if (gx#stx-pair? _%hd5202953052%_)
                                  (let ((_%e5219152343%_
                                         (gx#syntax-e _%hd5202953052%_)))
                                    (let ((_%tl5219352350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219152343%_)))
                                          (_%hd5219252347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219152343%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))))
                      (if (gx#stx-pair? _%hd5202953052%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5202953052%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                  (if (gx#stx-pair? _%hd5202953052%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (if (gx#stx-pair/null? _%tl5202753045%_)
                              (let ((_%__splice9465294653%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5202753045%_
                                      '0)))
                                (let ((_%tl5219652356%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '1)))
                                      (_%target5219452353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9465294653%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5219652356%_)
                                      (_%__match9493894939%_
                                       _%e5202253028%_
                                       _%hd5202353032%_
                                       _%tl5202453035%_
                                       _%e5202553038%_
                                       _%hd5202653042%_
                                       _%tl5202753045%_
                                       _%e5202853048%_
                                       _%hd5202953052%_
                                       _%tl5203053055%_
                                       _%e5219152343%_
                                       _%hd5219252347%_
                                       _%tl5219352350%_
                                       _%__splice9465294653%_
                                       _%target5219452353%_
                                       _%tl5219652356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
              (if (gx#stx-pair? _%hd5202953052%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5202753045%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5202753045%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5202253028%_
                                   _%hd5202353032%_
                                   _%tl5202453035%_
                                   _%e5202553038%_
                                   _%hd5202653042%_
                                   _%tl5202753045%_
                                   _%e5202853048%_
                                   _%hd5202953052%_
                                   _%tl5203053055%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5202953052%_)
                                                      (let ((_%e5219152343%_
                                                             (gx#syntax-e
                                                              _%hd5202953052%_)))
                                                        (let ((_%tl5219352350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219152343%_)))
                      (_%hd5219252347%_
                       (let () (declare (not safe)) (##car _%e5219152343%_))))
                  (if (gx#stx-pair/null? _%tl5202753045%_)
                      (let ((_%__splice9465294653%_
                             (gx#syntax-split-splice->vector
                              _%tl5202753045%_
                              '0)))
                        (let ((_%tl5219652356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '1)))
                              (_%target5219452353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '0))))
                          (if (gx#stx-null? _%tl5219652356%_)
                              (_%__match9493894939%_
                               _%e5202253028%_
                               _%hd5202353032%_
                               _%tl5202453035%_
                               _%e5202553038%_
                               _%hd5202653042%_
                               _%tl5202753045%_
                               _%e5202853048%_
                               _%hd5202953052%_
                               _%tl5203053055%_
                               _%e5219152343%_
                               _%hd5219252347%_
                               _%tl5219352350%_
                               _%__splice9465294653%_
                               _%target5219452353%_
                               _%tl5219652356%_)
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5202953052%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5202953052%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5202753045%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5202753045%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5202253028%_
                                                           _%hd5202353032%_
                                                           _%tl5202453035%_
                                                           _%e5202553038%_
                                                           _%hd5202653042%_
                                                           _%tl5202753045%_
                                                           _%e5202853048%_
                                                           _%hd5202953052%_
                                                           _%tl5203053055%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                  (if (gx#identifier? _%hd5203253062%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101301_|
                                           _%hd5203253062%_)
                                          (if (gx#stx-pair? _%tl5203953085%_)
                                              (let ((_%e5216652483%_
                                                     (gx#syntax-e
                                                      _%tl5203953085%_)))
                                                (let ((_%tl5216852490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5216652483%_)))
                                                      (_%hd5216752487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5216652483%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5216852490%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5202753045%_)
                                                          (let ((_%__splice9464894649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5202753045%_ '0)))
                    (let ((_%tl5217152496%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9464894649%_ '1)))
                          (_%target5216952493%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9464894649%_ '0))))
                      (if (gx#stx-null? _%tl5217152496%_)
                          (_%__match9490694907%_
                           _%e5202253028%_
                           _%hd5202353032%_
                           _%tl5202453035%_
                           _%e5202553038%_
                           _%hd5202653042%_
                           _%tl5202753045%_
                           _%e5202853048%_
                           _%hd5202953052%_
                           _%tl5203053055%_
                           _%e5203153058%_
                           _%hd5203253062%_
                           _%tl5203353065%_
                           _%e5203453068%_
                           _%hd5203553072%_
                           _%tl5203653075%_
                           _%e5203753078%_
                           _%hd5203853082%_
                           _%tl5203953085%_
                           _%e5216652483%_
                           _%hd5216752487%_
                           _%tl5216852490%_
                           _%__splice9464894649%_
                           _%target5216952493%_
                           _%tl5217152496%_)
                          (if (gx#stx-pair? _%hd5202953052%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5202953052%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_))))))
                  (if (gx#stx-pair? _%hd5202953052%_)
                      (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                        (let ((_%tl5219352350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219152343%_)))
                              (_%hd5219252347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219152343%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
              (if (gx#stx-pair? _%hd5202953052%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (if (gx#stx-pair/null? _%tl5202753045%_)
                          (let ((_%__splice9465294653%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5202753045%_
                                  '0)))
                            (let ((_%tl5219652356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9465294653%_ '1)))
                                  (_%target5219452353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9465294653%_
                                      '0))))
                              (if (gx#stx-null? _%tl5219652356%_)
                                  (_%__match9493894939%_
                                   _%e5202253028%_
                                   _%hd5202353032%_
                                   _%tl5202453035%_
                                   _%e5202553038%_
                                   _%hd5202653042%_
                                   _%tl5202753045%_
                                   _%e5202853048%_
                                   _%hd5202953052%_
                                   _%tl5203053055%_
                                   _%e5219152343%_
                                   _%hd5219252347%_
                                   _%tl5219352350%_
                                   _%__splice9465294653%_
                                   _%target5219452353%_
                                   _%tl5219652356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5202953052%_)
                                                  (let ((_%e5219152343%_
                                                         (gx#syntax-e
                                                          _%hd5202953052%_)))
                                                    (let ((_%tl5219352350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219152343%_)))
                                                          (_%hd5219252347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219152343%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5202753045%_)
                                                          (let ((_%__splice9465294653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5202753045%_ '0)))
                    (let ((_%tl5219652356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '1)))
                          (_%target5219452353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9465294653%_ '0))))
                      (if (gx#stx-null? _%tl5219652356%_)
                          (_%__match9493894939%_
                           _%e5202253028%_
                           _%hd5202353032%_
                           _%tl5202453035%_
                           _%e5202553038%_
                           _%hd5202653042%_
                           _%tl5202753045%_
                           _%e5202853048%_
                           _%hd5202953052%_
                           _%tl5203053055%_
                           _%e5219152343%_
                           _%hd5219252347%_
                           _%tl5219352350%_
                           _%__splice9465294653%_
                           _%target5219452353%_
                           _%tl5219652356%_)
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_))))
                                          (if (gx#stx-pair? _%hd5202953052%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5202953052%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5202753045%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5202753045%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5202253028%_
                       _%hd5202353032%_
                       _%tl5202453035%_
                       _%e5202553038%_
                       _%hd5202653042%_
                       _%tl5202753045%_
                       _%e5202853048%_
                       _%hd5202953052%_
                       _%tl5203053055%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                      (if (gx#stx-pair? _%hd5202953052%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5202953052%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5202753045%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5202753045%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5202253028%_
                                                           _%hd5202353032%_
                                                           _%tl5202453035%_
                                                           _%e5202553038%_
                                                           _%hd5202653042%_
                                                           _%tl5202753045%_
                                                           _%e5202853048%_
                                                           _%hd5202953052%_
                                                           _%tl5203053055%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                              (if (gx#identifier? _%hd5203253062%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101301_|
                                       _%hd5203253062%_)
                                      (if (gx#stx-pair? _%tl5203953085%_)
                                          (let ((_%e5216652483%_
                                                 (gx#syntax-e
                                                  _%tl5203953085%_)))
                                            (let ((_%tl5216852490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5216652483%_)))
                                                  (_%hd5216752487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5216652483%_))))
                                              (if (gx#stx-null?
                                                   _%tl5216852490%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5202753045%_)
                                                      (let ((_%__splice9464894649%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5202753045%_
                                                              '0)))
                                                        (let ((_%tl5217152496%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9464894649%_ '1)))
                      (_%target5216952493%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9464894649%_ '0))))
                  (if (gx#stx-null? _%tl5217152496%_)
                      (_%__match9490694907%_
                       _%e5202253028%_
                       _%hd5202353032%_
                       _%tl5202453035%_
                       _%e5202553038%_
                       _%hd5202653042%_
                       _%tl5202753045%_
                       _%e5202853048%_
                       _%hd5202953052%_
                       _%tl5203053055%_
                       _%e5203153058%_
                       _%hd5203253062%_
                       _%tl5203353065%_
                       _%e5203453068%_
                       _%hd5203553072%_
                       _%tl5203653075%_
                       _%e5203753078%_
                       _%hd5203853082%_
                       _%tl5203953085%_
                       _%e5216652483%_
                       _%hd5216752487%_
                       _%tl5216852490%_
                       _%__splice9464894649%_
                       _%target5216952493%_
                       _%tl5217152496%_)
                      (if (gx#stx-pair? _%hd5202953052%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5202953052%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                          (let () (declare (not safe)) (_%g5201552224%_))))))
              (if (gx#stx-pair? _%hd5202953052%_)
                  (let ((_%e5219152343%_ (gx#syntax-e _%hd5202953052%_)))
                    (let ((_%tl5219352350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219152343%_)))
                          (_%hd5219252347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219152343%_))))
                      (let () (declare (not safe)) (_%g5201552224%_))))
                  (let () (declare (not safe)) (_%g5201552224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5202953052%_)
                                                      (let ((_%e5219152343%_
                                                             (gx#syntax-e
                                                              _%hd5202953052%_)))
                                                        (let ((_%tl5219352350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219152343%_)))
                      (_%hd5219252347%_
                       (let () (declare (not safe)) (##car _%e5219152343%_))))
                  (if (gx#stx-pair/null? _%tl5202753045%_)
                      (let ((_%__splice9465294653%_
                             (gx#syntax-split-splice->vector
                              _%tl5202753045%_
                              '0)))
                        (let ((_%tl5219652356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '1)))
                              (_%target5219452353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '0))))
                          (if (gx#stx-null? _%tl5219652356%_)
                              (_%__match9493894939%_
                               _%e5202253028%_
                               _%hd5202353032%_
                               _%tl5202453035%_
                               _%e5202553038%_
                               _%hd5202653042%_
                               _%tl5202753045%_
                               _%e5202853048%_
                               _%hd5202953052%_
                               _%tl5203053055%_
                               _%e5219152343%_
                               _%hd5219252347%_
                               _%tl5219352350%_
                               _%__splice9465294653%_
                               _%target5219452353%_
                               _%tl5219652356%_)
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5202953052%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5202953052%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5202753045%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5202753045%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5202253028%_
                       _%hd5202353032%_
                       _%tl5202453035%_
                       _%e5202553038%_
                       _%hd5202653042%_
                       _%tl5202753045%_
                       _%e5202853048%_
                       _%hd5202953052%_
                       _%tl5203053055%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))
                                      (if (gx#stx-pair? _%hd5202953052%_)
                                          (let ((_%e5219152343%_
                                                 (gx#syntax-e
                                                  _%hd5202953052%_)))
                                            (let ((_%tl5219352350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219152343%_)))
                                                  (_%hd5219252347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219152343%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5202753045%_)
                                                  (let ((_%__splice9465294653%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5202753045%_
                                                          '0)))
                                                    (let ((_%tl5219652356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '1)))
                                                          (_%target5219452353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9465294653%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5219652356%_)
                                                          (_%__match9493894939%_
                                                           _%e5202253028%_
                                                           _%hd5202353032%_
                                                           _%tl5202453035%_
                                                           _%e5202553038%_
                                                           _%hd5202653042%_
                                                           _%tl5202753045%_
                                                           _%e5202853048%_
                                                           _%hd5202953052%_
                                                           _%tl5203053055%_
                                                           _%e5219152343%_
                                                           _%hd5219252347%_
                                                           _%tl5219352350%_
                                                           _%__splice9465294653%_
                                                           _%target5219452353%_
                                                           _%tl5219652356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5201552224%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                  (if (gx#stx-pair? _%hd5202953052%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5202953052%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5202753045%_)
                                              (let ((_%__splice9465294653%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5202753045%_
                                                      '0)))
                                                (let ((_%tl5219652356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '1)))
                                                      (_%target5219452353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9465294653%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5219652356%_)
                                                      (_%__match9493894939%_
                                                       _%e5202253028%_
                                                       _%hd5202353032%_
                                                       _%tl5202453035%_
                                                       _%e5202553038%_
                                                       _%hd5202653042%_
                                                       _%tl5202753045%_
                                                       _%e5202853048%_
                                                       _%hd5202953052%_
                                                       _%tl5203053055%_
                                                       _%e5219152343%_
                                                       _%hd5219252347%_
                                                       _%tl5219352350%_
                                                       _%__splice9465294653%_
                                                       _%target5219452353%_
                                                       _%tl5219652356%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5201552224%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))))
                  (if (gx#stx-null? _%tl5203653075%_)
                      (if (gx#stx-pair/null? _%tl5202753045%_)
                          (let ((_%__splice9464094641%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5202753045%_
                                  '0)))
                            (let ((_%tl5210952756%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9464094641%_ '1)))
                                  (_%target5210752753%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9464094641%_
                                      '0))))
                              (if (gx#stx-null? _%tl5210952756%_)
                                  (_%__match9480694807%_
                                   _%e5202253028%_
                                   _%hd5202353032%_
                                   _%tl5202453035%_
                                   _%e5202553038%_
                                   _%hd5202653042%_
                                   _%tl5202753045%_
                                   _%e5202853048%_
                                   _%hd5202953052%_
                                   _%tl5203053055%_
                                   _%e5203153058%_
                                   _%hd5203253062%_
                                   _%tl5203353065%_
                                   _%e5203453068%_
                                   _%hd5203553072%_
                                   _%tl5203653075%_
                                   _%__splice9464094641%_
                                   _%target5210752753%_
                                   _%tl5210952756%_)
                                  (if (gx#stx-pair? _%hd5202953052%_)
                                      (let ((_%e5219152343%_
                                             (gx#syntax-e _%hd5202953052%_)))
                                        (let ((_%tl5219352350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219152343%_)))
                                              (_%hd5219252347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219152343%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))
                          (if (gx#stx-pair? _%hd5202953052%_)
                              (let ((_%e5219152343%_
                                     (gx#syntax-e _%hd5202953052%_)))
                                (let ((_%tl5219352350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219152343%_)))
                                      (_%hd5219252347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219152343%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_))))
                              (let () (declare (not safe)) (_%g5201552224%_))))
                      (if (gx#stx-pair? _%hd5202953052%_)
                          (let ((_%e5219152343%_
                                 (gx#syntax-e _%hd5202953052%_)))
                            (let ((_%tl5219352350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219152343%_)))
                                  (_%hd5219252347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219152343%_))))
                              (if (gx#stx-pair/null? _%tl5202753045%_)
                                  (let ((_%__splice9465294653%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5202753045%_
                                          '0)))
                                    (let ((_%tl5219652356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '1)))
                                          (_%target5219452353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9465294653%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5219652356%_)
                                          (_%__match9493894939%_
                                           _%e5202253028%_
                                           _%hd5202353032%_
                                           _%tl5202453035%_
                                           _%e5202553038%_
                                           _%hd5202653042%_
                                           _%tl5202753045%_
                                           _%e5202853048%_
                                           _%hd5202953052%_
                                           _%tl5203053055%_
                                           _%e5219152343%_
                                           _%hd5219252347%_
                                           _%tl5219352350%_
                                           _%__splice9465294653%_
                                           _%target5219452353%_
                                           _%tl5219652356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201552224%_)))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5202953052%_)
                                                      (let ((_%e5219152343%_
                                                             (gx#syntax-e
                                                              _%hd5202953052%_)))
                                                        (let ((_%tl5219352350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219152343%_)))
                      (_%hd5219252347%_
                       (let () (declare (not safe)) (##car _%e5219152343%_))))
                  (if (gx#stx-pair/null? _%tl5202753045%_)
                      (let ((_%__splice9465294653%_
                             (gx#syntax-split-splice->vector
                              _%tl5202753045%_
                              '0)))
                        (let ((_%tl5219652356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '1)))
                              (_%target5219452353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9465294653%_ '0))))
                          (if (gx#stx-null? _%tl5219652356%_)
                              (_%__match9493894939%_
                               _%e5202253028%_
                               _%hd5202353032%_
                               _%tl5202453035%_
                               _%e5202553038%_
                               _%hd5202653042%_
                               _%tl5202753045%_
                               _%e5202853048%_
                               _%hd5202953052%_
                               _%tl5203053055%_
                               _%e5219152343%_
                               _%hd5219252347%_
                               _%tl5219352350%_
                               _%__splice9465294653%_
                               _%target5219452353%_
                               _%tl5219652356%_)
                              (let ()
                                (declare (not safe))
                                (_%g5201552224%_)))))
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5202953052%_)
                                              (let ((_%e5219152343%_
                                                     (gx#syntax-e
                                                      _%hd5202953052%_)))
                                                (let ((_%tl5219352350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219152343%_)))
                                                      (_%hd5219252347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219152343%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5202753045%_)
                                                      (let ((_%__splice9465294653%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5202753045%_
                                                              '0)))
                                                        (let ((_%tl5219652356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '1)))
                      (_%target5219452353%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9465294653%_ '0))))
                  (if (gx#stx-null? _%tl5219652356%_)
                      (_%__match9493894939%_
                       _%e5202253028%_
                       _%hd5202353032%_
                       _%tl5202453035%_
                       _%e5202553038%_
                       _%hd5202653042%_
                       _%tl5202753045%_
                       _%e5202853048%_
                       _%hd5202953052%_
                       _%tl5203053055%_
                       _%e5219152343%_
                       _%hd5219252347%_
                       _%tl5219352350%_
                       _%__splice9465294653%_
                       _%target5219452353%_
                       _%tl5219652356%_)
                      (let () (declare (not safe)) (_%g5201552224%_)))))
              (let () (declare (not safe)) (_%g5201552224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5201552224%_))))))
                                  (if (gx#stx-null? _%hd5202653042%_)
                                      (if (gx#stx-pair/null? _%tl5202753045%_)
                                          (let ((_%__splice9465694657%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5202753045%_
                                                  '0)))
                                            (let ((_%tl5221252254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9465694657%_
                                                      '1)))
                                                  (_%target5221052251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9465694657%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5221252254%_)
                                                  (_%__match9496094961%_
                                                   _%e5202253028%_
                                                   _%hd5202353032%_
                                                   _%tl5202453035%_
                                                   _%e5202553038%_
                                                   _%hd5202653042%_
                                                   _%tl5202753045%_
                                                   _%__splice9465694657%_
                                                   _%target5221052251%_
                                                   _%tl5221252254%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5201552224%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201552224%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201552224%_))))))
                          (let () (declare (not safe)) (_%g5201552224%_)))))
                  (let () (declare (not safe)) (_%g5201552224%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx53184%_)
        (let* ((_%g5318853222%_
                (lambda (_%g5318953218%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5318953218%_)))
               (_%g5318753343%_
                (lambda (_%g5318953226%_)
                  (if (gx#stx-pair? _%g5318953226%_)
                      (let ((_%e5319353229%_ (gx#syntax-e _%g5318953226%_)))
                        (let ((_%hd5319453233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5319353229%_)))
                              (_%tl5319553236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5319353229%_))))
                          (if (gx#stx-pair? _%tl5319553236%_)
                              (let ((_%e5319653239%_
                                     (gx#syntax-e _%tl5319553236%_)))
                                (let ((_%hd5319753243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5319653239%_)))
                                      (_%tl5319853246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5319653239%_))))
                                  (if (gx#stx-pair? _%hd5319753243%_)
                                      (let ((_%e5319953249%_
                                             (gx#syntax-e _%hd5319753243%_)))
                                        (let ((_%hd5320053253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5319953249%_)))
                                              (_%tl5320153256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5319953249%_))))
                                          (if (gx#stx-pair? _%tl5320153256%_)
                                              (let ((_%e5320253259%_
                                                     (gx#syntax-e
                                                      _%tl5320153256%_)))
                                                (let ((_%hd5320353263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5320253259%_)))
                                                      (_%tl5320453266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5320253259%_))))
                                                  (if (gx#identifier?
                                                       _%hd5320353263%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101303_|
                                                           _%hd5320353263%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5320453266%_)
                                                              (let ((_%e5320553269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5320453266%_)))
                        (let ((_%hd5320653273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5320553269%_)))
                              (_%tl5320753276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5320553269%_))))
                          (if (gx#stx-null? _%tl5320753276%_)
                              (if (gx#stx-pair/null? _%tl5319853246%_)
                                  (let ((_g101304_
                                         (gx#syntax-split-splice
                                          _%tl5319853246%_
                                          '0)))
                                    (begin
                                      (let ((_g101305_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g101304_)
                                                   (##values-length _g101304_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g101305_ 2)))
                                            (error "Context expects 2 values"
                                                   _g101305_)))
                                      (let ((_%target5320853279%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101304_ 0)))
                                            (_%tl5321053282%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101304_ 1))))
                                        (if (gx#stx-null? _%tl5321053282%_)
                                            (letrec ((_%loop5321153285%_
                                                      (lambda (_%hd5320953289%_
                                                               _%body5321553292%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5320953289%_)
                                                            (let ((_%e5321253294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5320953289%_)))
                      (let ((_%lp-hd5321353298%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5321253294%_)))
                            (_%lp-tl5321453301%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5321253294%_))))
                        (_%loop5321153285%_
                         _%lp-tl5321453301%_
                         (cons _%lp-hd5321353298%_ _%body5321553292%_))))
                    (let ((_%body5321653304%_ (reverse _%body5321553292%_)))
                      (if (gx#identifier? _%hd5320053253%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%hd5320653273%_
                                            (cons _%hd5320053253%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%g5333453337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g5333553340%_)
                         (cons _%g5333453337%_ _%g5333553340%_))
                       '()
                       _%body5321653304%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%hd5320053253%_
                                                              (cons _%hd5320653273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd5320053253%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%g5318853222%_ _%g5318953226%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5321153285%_
                                               _%target5320853279%_
                                               '()))
                                            (_%g5318853222%_
                                             _%g5318953226%_)))))
                                  (_%g5318853222%_ _%g5318953226%_))
                              (_%g5318853222%_ _%g5318953226%_))))
                      (_%g5318853222%_ _%g5318953226%_))
                  (_%g5318853222%_ _%g5318953226%_))
              (_%g5318853222%_ _%g5318953226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5318853222%_
                                               _%g5318953226%_))))
                                      (_%g5318853222%_ _%g5318953226%_))))
                              (_%g5318853222%_ _%g5318953226%_))))
                      (_%g5318853222%_ _%g5318953226%_)))))
          (_%g5318753343%_ _%$stx53184%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass54101%_ _%slot54103%_)
        (let ((_%$e54105%_
               (let ((__obj101099 _%klass54101%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101099
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101099 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101099
                      'slot-types)))))
          (if _%$e54105%_ (agetq _%slot54103%_ _%$e54105%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass54082%_ _%slot54084%_)
        (let ((_%$e54086%_
               (let ((__obj101100 _%klass54082%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101100
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101100 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101100
                      'slot-defaults)))))
          (if _%$e54086%_
              (let ((_%$e54093%_ (agetq _%slot54084%_ _%$e54086%_)))
                (if _%$e54093%_ (gx#syntax-local-introduce _%$e54093%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass54063%_ _%slot54065%_)
        (let ((_%$e54067%_
               (let ((__obj101101 _%klass54063%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101101
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101101 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101101
                      'slot-defaults)))))
          (if _%$e54067%_
              (let ((_%$e54074%_ (agetq _%slot54065%_ _%$e54067%_)))
                (if _%$e54074%_ (gx#syntax-local-introduce _%$e54074%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53832%_ _%slot53834%_)
        (let ((_%contract5383553837%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53832%_
                _%slot53834%_)))
          (if _%contract5383553837%_
              (let* ((_%contract53840%_ _%contract5383553837%_)
                     (_%__stx9496394964%_ _%contract53840%_)
                     (_%g5384553882%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9496394964%_))))
                (let ((_%__kont9496694967%_
                       (lambda (_%g5384754032%_ _%g5384854034%_)
                         (not (gx#free-identifier=?
                               _%g5384854034%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9496894969%_
                       (lambda (_%g5385553972%_
                                _%g5385653974%_
                                _%g5385753975%_)
                         (not (gx#free-identifier=?
                               _%g5385653974%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9497094971%_ (lambda (_%g5387053909%_) '#f)))
                  (let* ((_%__match9501695017%_
                          (lambda (_%e5385853932%_
                                   _%hd5385953936%_
                                   _%tl5386053939%_
                                   _%e5386153942%_
                                   _%hd5386253946%_
                                   _%tl5386353949%_
                                   _%e5386453952%_
                                   _%hd5386553956%_
                                   _%tl5386653959%_
                                   _%e5386753962%_
                                   _%hd5386853966%_
                                   _%tl5386953969%_)
                            (let ((_%g5385553972%_ _%hd5386853966%_)
                                  (_%g5385653974%_ _%hd5386553956%_)
                                  (_%g5385753975%_ _%hd5386253946%_))
                              (if (and (gx#identifier? _%g5385653974%_)
                                       (or (gx#free-identifier=?
                                            _%g5385653974%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5385653974%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5385653974%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5385653974%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9496894969%_
                                   _%g5385553972%_
                                   _%g5385653974%_
                                   _%g5385753975%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5384553882%_))))))
                         (_%__match9498694987%_
                          (lambda (_%e5384954012%_
                                   _%hd5385054016%_
                                   _%tl5385154019%_
                                   _%e5385254022%_
                                   _%hd5385354026%_
                                   _%tl5385454029%_)
                            (let ((_%g5384754032%_ _%hd5385354026%_)
                                  (_%g5384854034%_ _%hd5385054016%_))
                              (if (and (gx#identifier? _%g5384854034%_)
                                       (or (gx#free-identifier=?
                                            _%g5384854034%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5384854034%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5384854034%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5384854034%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9496694967%_
                                   _%g5384754032%_
                                   _%g5384854034%_)
                                  (if (gx#identifier? _%hd5385054016%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101306_|
                                           _%hd5385054016%_)
                                          (_%__kont9497094971%_
                                           _%hd5385354026%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5384553882%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5384553882%_))))))))
                    (if (gx#stx-pair? _%__stx9496394964%_)
                        (let ((_%e5384954012%_
                               (gx#syntax-e _%__stx9496394964%_)))
                          (let ((_%tl5385154019%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5384954012%_)))
                                (_%hd5385054016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5384954012%_))))
                            (if (gx#stx-pair? _%tl5385154019%_)
                                (let ((_%e5385254022%_
                                       (gx#syntax-e _%tl5385154019%_)))
                                  (let ((_%tl5385454029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5385254022%_)))
                                        (_%hd5385354026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5385254022%_))))
                                    (if (gx#stx-null? _%tl5385454029%_)
                                        (_%__match9498694987%_
                                         _%e5384954012%_
                                         _%hd5385054016%_
                                         _%tl5385154019%_
                                         _%e5385254022%_
                                         _%hd5385354026%_
                                         _%tl5385454029%_)
                                        (if (gx#identifier? _%hd5385054016%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101306_|
                                                 _%hd5385054016%_)
                                                (if (gx#stx-pair?
                                                     _%tl5385454029%_)
                                                    (let ((_%e5386453952%_
                                                           (gx#syntax-e
                                                            _%tl5385454029%_)))
                                                      (let ((_%tl5386653959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5386453952%_)))
                    (_%hd5386553956%_
                     (let () (declare (not safe)) (##car _%e5386453952%_))))
                (if (gx#stx-pair? _%tl5386653959%_)
                    (let ((_%e5386753962%_ (gx#syntax-e _%tl5386653959%_)))
                      (let ((_%tl5386953969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5386753962%_)))
                            (_%hd5386853966%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5386753962%_))))
                        (if (gx#stx-null? _%tl5386953969%_)
                            (_%__match9501695017%_
                             _%e5384954012%_
                             _%hd5385054016%_
                             _%tl5385154019%_
                             _%e5385254022%_
                             _%hd5385354026%_
                             _%tl5385454029%_
                             _%e5386453952%_
                             _%hd5386553956%_
                             _%tl5386653959%_
                             _%e5386753962%_
                             _%hd5386853966%_
                             _%tl5386953969%_)
                            (let () (declare (not safe)) (_%g5384553882%_)))))
                    (let () (declare (not safe)) (_%g5384553882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5384553882%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5384553882%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5384553882%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5384553882%_)))))
                        (let () (declare (not safe)) (_%g5384553882%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53601%_ _%slot53603%_)
        (let ((_%contract5360453606%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53601%_
                _%slot53603%_)))
          (if _%contract5360453606%_
              (let* ((_%contract53609%_ _%contract5360453606%_)
                     (_%__stx9503795038%_ _%contract53609%_)
                     (_%g5361453651%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9503795038%_))))
                (let ((_%__kont9504095041%_
                       (lambda (_%g5361653801%_ _%g5361753803%_)
                         (not (gx#free-identifier=?
                               _%g5361753803%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9504295043%_
                       (lambda (_%g5362453741%_
                                _%g5362553743%_
                                _%g5362653744%_)
                         '#t))
                      (_%__kont9504495045%_ (lambda (_%g5363953678%_) '#t)))
                  (let* ((_%__match9509095091%_
                          (lambda (_%e5362753701%_
                                   _%hd5362853705%_
                                   _%tl5362953708%_
                                   _%e5363053711%_
                                   _%hd5363153715%_
                                   _%tl5363253718%_
                                   _%e5363353721%_
                                   _%hd5363453725%_
                                   _%tl5363553728%_
                                   _%e5363653731%_
                                   _%hd5363753735%_
                                   _%tl5363853738%_)
                            (let ((_%g5362453741%_ _%hd5363753735%_)
                                  (_%g5362553743%_ _%hd5363453725%_)
                                  (_%g5362653744%_ _%hd5363153715%_))
                              (if (and (gx#identifier? _%g5362553743%_)
                                       (or (gx#free-identifier=?
                                            _%g5362553743%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5362553743%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5362553743%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5362553743%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9504295043%_
                                   _%g5362453741%_
                                   _%g5362553743%_
                                   _%g5362653744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5361453651%_))))))
                         (_%__match9506095061%_
                          (lambda (_%e5361853781%_
                                   _%hd5361953785%_
                                   _%tl5362053788%_
                                   _%e5362153791%_
                                   _%hd5362253795%_
                                   _%tl5362353798%_)
                            (let ((_%g5361653801%_ _%hd5362253795%_)
                                  (_%g5361753803%_ _%hd5361953785%_))
                              (if (and (gx#identifier? _%g5361753803%_)
                                       (or (gx#free-identifier=?
                                            _%g5361753803%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5361753803%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5361753803%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5361753803%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9504095041%_
                                   _%g5361653801%_
                                   _%g5361753803%_)
                                  (if (gx#identifier? _%hd5361953785%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101307_|
                                           _%hd5361953785%_)
                                          (_%__kont9504495045%_
                                           _%hd5362253795%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5361453651%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5361453651%_))))))))
                    (if (gx#stx-pair? _%__stx9503795038%_)
                        (let ((_%e5361853781%_
                               (gx#syntax-e _%__stx9503795038%_)))
                          (let ((_%tl5362053788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5361853781%_)))
                                (_%hd5361953785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5361853781%_))))
                            (if (gx#stx-pair? _%tl5362053788%_)
                                (let ((_%e5362153791%_
                                       (gx#syntax-e _%tl5362053788%_)))
                                  (let ((_%tl5362353798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5362153791%_)))
                                        (_%hd5362253795%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5362153791%_))))
                                    (if (gx#stx-null? _%tl5362353798%_)
                                        (_%__match9506095061%_
                                         _%e5361853781%_
                                         _%hd5361953785%_
                                         _%tl5362053788%_
                                         _%e5362153791%_
                                         _%hd5362253795%_
                                         _%tl5362353798%_)
                                        (if (gx#identifier? _%hd5361953785%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101307_|
                                                 _%hd5361953785%_)
                                                (if (gx#stx-pair?
                                                     _%tl5362353798%_)
                                                    (let ((_%e5363353721%_
                                                           (gx#syntax-e
                                                            _%tl5362353798%_)))
                                                      (let ((_%tl5363553728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5363353721%_)))
                    (_%hd5363453725%_
                     (let () (declare (not safe)) (##car _%e5363353721%_))))
                (if (gx#stx-pair? _%tl5363553728%_)
                    (let ((_%e5363653731%_ (gx#syntax-e _%tl5363553728%_)))
                      (let ((_%tl5363853738%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5363653731%_)))
                            (_%hd5363753735%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5363653731%_))))
                        (if (gx#stx-null? _%tl5363853738%_)
                            (_%__match9509095091%_
                             _%e5361853781%_
                             _%hd5361953785%_
                             _%tl5362053788%_
                             _%e5362153791%_
                             _%hd5362253795%_
                             _%tl5362353798%_
                             _%e5363353721%_
                             _%hd5363453725%_
                             _%tl5363553728%_
                             _%e5363653731%_
                             _%hd5363753735%_
                             _%tl5363853738%_)
                            (let () (declare (not safe)) (_%g5361453651%_)))))
                    (let () (declare (not safe)) (_%g5361453651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5361453651%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5361453651%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5361453651%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5361453651%_)))))
                        (let () (declare (not safe)) (_%g5361453651%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53588%_)
        (if (gx#identifier? _%id53588%_)
            (let* ((_%str53591%_ (symbol->string (gx#stx-e _%id53588%_)))
                   (_%index5359353595%_ (string-index _%str53591%_ '#\.)))
              (if _%index5359353595%_
                  (let ((_%index53598%_ _%index5359353595%_))
                    (if (let () (declare (not safe)) (##fx> _%index53598%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53591%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53581%_ _%id53583%_)
        (let ((_%parts53585%_
               (string-split (symbol->string (gx#stx-e _%id53583%_)) '#\.)))
          (if (find string-empty? _%parts53585%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53581%_
               _%id53583%_)
              (cons (gx#stx-identifier _%id53583%_ (car _%parts53585%_))
                    (map string->symbol (cdr _%parts53585%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53467%_ _%klass-or-id53469%_ _%slot53470%_)
        (let* ((_%klass53472%_
                (if (gx#identifier? _%klass-or-id53469%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53467%_
                       _%klass-or-id53469%_))
                    _%klass-or-id53469%_))
               (_%$e53477%_
                (agetq _%slot53470%_
                       (let ((__obj101102 _%klass53472%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj101102
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj101102
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj101102
                              'unchecked-accessors))))))
          (if _%$e53477%_
              _%$e53477%_
              (let ((_%$e53485%_
                     (agetq _%slot53470%_
                            (let ((_%$e53481%_
                                   (let ((__obj101103 _%klass53472%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101103
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101103
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101103
                                          'slot-offsets)))))
                              (if _%$e53481%_ _%$e53481%_ '())))))
                (if _%$e53485%_
                    (let* ((_%g5349253511%_
                            (lambda (_%g5349353507%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5349353507%_)))
                           (_%g5349153575%_
                            (lambda (_%g5349353515%_)
                              (if (gx#stx-pair? _%g5349353515%_)
                                  (let ((_%e5349753518%_
                                         (gx#syntax-e _%g5349353515%_)))
                                    (let ((_%hd5349853522%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5349753518%_)))
                                          (_%tl5349953525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5349753518%_))))
                                      (if (gx#stx-pair? _%tl5349953525%_)
                                          (let ((_%e5350053528%_
                                                 (gx#syntax-e
                                                  _%tl5349953525%_)))
                                            (let ((_%hd5350153532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5350053528%_)))
                                                  (_%tl5350253535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5350053528%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5350253535%_)
                                                  (let ((_%e5350353538%_
                                                         (gx#syntax-e
                                                          _%tl5350253535%_)))
                                                    (let ((_%hd5350453542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5350353538%_)))
                                                          (_%tl5350553545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5350353538%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5350553545%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%hd5350453542%_
                                                       (cons _%hd5349853522%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%hd5350153532%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53467%_))
                  (_%g5349253511%_ _%g5349353515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5349253511%_
                                                   _%g5349353515%_))))
                                          (_%g5349253511%_ _%g5349353515%_))))
                                  (_%g5349253511%_ _%g5349353515%_)))))
                      (_%g5349153575%_
                       (list (let ((__obj101104 _%klass53472%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101104
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101104
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101104
                                    'type-descriptor)))
                             _%slot53470%_
                             _%$e53485%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53467%_
                     _%klass53472%_
                     _%slot53470%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx53348%_
               _%klass-or-id53350%_
               _%slot53351%_
               _%checked?53352%_)
        (let* ((_%klass53354%_
                (if (gx#identifier? _%klass-or-id53350%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53348%_
                       _%klass-or-id53350%_))
                    _%klass-or-id53350%_))
               (_%mutators53357%_
                (if _%checked?53352%_
                    (let ((__obj101105 _%klass53354%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101105
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101105
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101105
                           'mutators)))
                    (let ((__obj101106 _%klass53354%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101106
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101106
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101106
                           'unchecked-mutators)))))
               (_%$e53362%_ (agetq _%slot53351%_ _%mutators53357%_)))
          (if _%$e53362%_
              _%$e53362%_
              (let ((_%$e53370%_
                     (agetq _%slot53351%_
                            (let ((_%$e53366%_
                                   (let ((__obj101107 _%klass53354%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101107
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101107
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101107
                                          'slot-offsets)))))
                              (if _%$e53366%_ _%$e53366%_ '())))))
                (if _%$e53370%_
                    (let* ((_%g5337753396%_
                            (lambda (_%g5337853392%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5337853392%_)))
                           (_%g5337653461%_
                            (lambda (_%g5337853400%_)
                              (if (gx#stx-pair? _%g5337853400%_)
                                  (let ((_%e5338253403%_
                                         (gx#syntax-e _%g5337853400%_)))
                                    (let ((_%hd5338353407%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5338253403%_)))
                                          (_%tl5338453410%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5338253403%_))))
                                      (if (gx#stx-pair? _%tl5338453410%_)
                                          (let ((_%e5338553413%_
                                                 (gx#syntax-e
                                                  _%tl5338453410%_)))
                                            (let ((_%hd5338653417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5338553413%_)))
                                                  (_%tl5338753420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5338553413%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5338753420%_)
                                                  (let ((_%e5338853423%_
                                                         (gx#syntax-e
                                                          _%tl5338753420%_)))
                                                    (let ((_%hd5338953427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5338853423%_)))
                                                          (_%tl5339053430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5338853423%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5339053430%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%hd5338953427%_
                                                             (cons _%hd5338353407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%hd5338653417%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53348%_))
                  (_%g5337753396%_ _%g5337853400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5337753396%_
                                                   _%g5337853400%_))))
                                          (_%g5337753396%_ _%g5337853400%_))))
                                  (_%g5337753396%_ _%g5337853400%_)))))
                      (_%g5337653461%_
                       (list (let ((__obj101108 _%klass53354%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101108
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101108
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101108
                                    'type-descriptor)))
                             _%slot53351%_
                             _%$e53370%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx53348%_
                     _%klass53354%_
                     _%slot53351%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx54114%_)
        (letrec ((_%expand-body54117%_
                  (lambda (_%klass55015%_
                           _%var55017%_
                           _%Type55018%_
                           _%body55019%_
                           _%checked?55020%_)
                    (let* ((_%g5502255066%_
                            (lambda (_%g5502355062%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5502355062%_)))
                           (_%g5502155221%_
                            (lambda (_%g5502355070%_)
                              (if (gx#stx-pair? _%g5502355070%_)
                                  (let ((_%e5503155073%_
                                         (gx#syntax-e _%g5502355070%_)))
                                    (let ((_%hd5503255077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5503155073%_)))
                                          (_%tl5503355080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5503155073%_))))
                                      (if (gx#stx-pair? _%tl5503355080%_)
                                          (let ((_%e5503455083%_
                                                 (gx#syntax-e
                                                  _%tl5503355080%_)))
                                            (let ((_%hd5503555087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5503455083%_)))
                                                  (_%tl5503655090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5503455083%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5503655090%_)
                                                  (let ((_%e5503755093%_
                                                         (gx#syntax-e
                                                          _%tl5503655090%_)))
                                                    (let ((_%hd5503855097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5503755093%_)))
                                                          (_%tl5503955100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5503755093%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5503955100%_)
                                                          (let ((_%e5504055103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5503955100%_)))
                    (let ((_%hd5504155107%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5504055103%_)))
                          (_%tl5504255110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5504055103%_))))
                      (if (gx#stx-pair? _%tl5504255110%_)
                          (let ((_%e5504355113%_
                                 (gx#syntax-e _%tl5504255110%_)))
                            (let ((_%hd5504455117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5504355113%_)))
                                  (_%tl5504555120%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5504355113%_))))
                              (if (gx#stx-pair? _%tl5504555120%_)
                                  (let ((_%e5504655123%_
                                         (gx#syntax-e _%tl5504555120%_)))
                                    (let ((_%hd5504755127%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5504655123%_)))
                                          (_%tl5504855130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5504655123%_))))
                                      (if (gx#stx-pair? _%tl5504855130%_)
                                          (let ((_%e5504955133%_
                                                 (gx#syntax-e
                                                  _%tl5504855130%_)))
                                            (let ((_%hd5505055137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5504955133%_)))
                                                  (_%tl5505155140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5504955133%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5505055137%_)
                                                  (let ((_g101308_
                                                         (gx#syntax-split-splice
                                                          _%hd5505055137%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101308_)
                           (##values-length _g101308_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101309_ 2)))
                    (error "Context expects 2 values" _g101309_)))
              (let ((_%target5505255143%_
                     (let () (declare (not safe)) (##values-ref _g101308_ 0)))
                    (_%tl5505455146%_
                     (let () (declare (not safe)) (##values-ref _g101308_ 1))))
                (if (gx#stx-null? _%tl5505455146%_)
                    (letrec ((_%loop5505555149%_
                              (lambda (_%hd5505355153%_ _%body5505955156%_)
                                (if (gx#stx-pair? _%hd5505355153%_)
                                    (let ((_%e5505655158%_
                                           (gx#syntax-e _%hd5505355153%_)))
                                      (let ((_%lp-hd5505755162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5505655158%_)))
                                            (_%lp-tl5505855165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5505655158%_))))
                                        (_%loop5505555149%_
                                         _%lp-tl5505855165%_
                                         (cons _%lp-hd5505755162%_
                                               _%body5505955156%_))))
                                    (let ((_%body5506055168%_
                                           (reverse _%body5505955156%_)))
                                      (if (gx#stx-null? _%tl5505155140%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%hd5503855097%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%hd5503555087%_ '()))
                                      (cons _%hd5503855097%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%hd5503255077%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%hd5503855097%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%hd5504155107%_ '()))
                            (cons _%hd5504455117%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%hd5504755127%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%g5521255215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5521355218%_)
                   (cons _%g5521255215%_ _%g5521355218%_))
                 '()
                 _%body5506055168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g5502255066%_
                                           _%g5502355070%_)))))))
                      (_%loop5505555149%_ _%target5505255143%_ '()))
                    (_%g5502255066%_ _%g5502355070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5502255066%_
                                                   _%g5502355070%_))))
                                          (_%g5502255066%_ _%g5502355070%_))))
                                  (_%g5502255066%_ _%g5502355070%_))))
                          (_%g5502255066%_ _%g5502355070%_))))
                  (_%g5502255066%_ _%g5502355070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5502255066%_
                                                   _%g5502355070%_))))
                                          (_%g5502255066%_ _%g5502355070%_))))
                                  (_%g5502255066%_ _%g5502355070%_)))))
                      (_%g5502155221%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj101109 _%klass55015%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101109
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101109
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj101109
                                    'type-descriptor)))
                             _%var55017%_
                             _%klass55015%_
                             _%checked?55020%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55019%_)))))
                 (_%expand54119%_
                  (lambda (_%var54907%_
                           _%Type54909%_
                           _%body54910%_
                           _%checked?54911%_
                           _%checked-mutators?54912%_
                           _%maybe?54913%_)
                    (let* ((_%klass54915%_
                            (gx#syntax-local-value _%Type54909%_ false))
                           (_%expr-body54922%_
                            (_%expand-body54117%_
                             _%klass54915%_
                             _%var54907%_
                             _%Type54909%_
                             _%body54910%_
                             (let ((_%$e54918%_ _%checked?54911%_))
                               (if _%$e54918%_
                                   _%$e54918%_
                                   _%checked-mutators?54912%_)))))
                      (if _%checked?54911%_
                          (let* ((_%g5492754946%_
                                  (lambda (_%g5492854942%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5492854942%_)))
                                 (_%g5492655008%_
                                  (lambda (_%g5492854950%_)
                                    (if (gx#stx-pair? _%g5492854950%_)
                                        (let ((_%e5493254953%_
                                               (gx#syntax-e _%g5492854950%_)))
                                          (let ((_%hd5493354957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5493254953%_)))
                                                (_%tl5493454960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5493254953%_))))
                                            (if (gx#stx-pair? _%tl5493454960%_)
                                                (let ((_%e5493554963%_
                                                       (gx#syntax-e
                                                        _%tl5493454960%_)))
                                                  (let ((_%hd5493654967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5493554963%_)))
                                                        (_%tl5493754970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5493554963%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5493754970%_)
                                                        (let ((_%e5493854973%_
                                                               (gx#syntax-e
                                                                _%tl5493754970%_)))
                                                          (let ((_%hd5493954977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5493854973%_)))
                        (_%tl5494054980%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5493854973%_))))
                    (if (gx#stx-null? _%tl5494054980%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%hd5493654967%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%hd5493354957%_ '())))
                                    (cons _%hd5493954977%_ '())))
                        (_%g5492754946%_ _%g5492854950%_))))
                (_%g5492754946%_ _%g5492854950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5492754946%_
                                                 _%g5492854950%_))))
                                        (_%g5492754946%_ _%g5492854950%_)))))
                            (_%g5492655008%_
                             (list (let ((_%instance?55012%_
                                          (let ((__obj101110 _%klass54915%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj101110
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj101110
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj101110
                                                 'predicate)))))
                                     (if _%maybe?54913%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?55012%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?55012%_))
                                   _%var54907%_
                                   _%expr-body54922%_)))
                          _%expr-body54922%_)))))
          (let* ((_%__stx9511195112%_ _%stx54114%_)
                 (_%g5412554268%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9511195112%_))))
            (let ((_%__kont9511495115%_
                   (lambda (_%g5412754835%_
                            _%g5412854837%_
                            _%g5412954838%_
                            _%g5413054839%_)
                     (let* ((_%g5486454872%_
                             (lambda (_%g5486554868%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5486554868%_)))
                            (_%g5486354899%_
                             (lambda (_%g5486554876%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%g5413054839%_
                                                 (cons _%g5412954838%_
                                                       (cons _%g5486554876%_
                                                             '())))
                                           (foldr (lambda (_%g5489054893%_
                                                           _%g5489154896%_)
                                                    (cons _%g5489054893%_
                                                          _%g5489154896%_))
                                                  '()
                                                  _%g5412754835%_))))))
                       (_%g5486354899%_
                        (let ((__obj101111
                               (gx#syntax-local-value _%g5412854837%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101111
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101111
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101111
                               'identifier)))))))
                  (_%__kont9511895119%_
                   (lambda (_%g5415554715%_ _%g5415654717%_ _%g5415754718%_)
                     (_%expand54119%_
                      _%g5415754718%_
                      _%g5415654717%_
                      (foldr (lambda (_%g5474154744%_ _%g5474254747%_)
                               (cons _%g5474154744%_ _%g5474254747%_))
                             '()
                             _%g5415554715%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9512295123%_
                   (lambda (_%g5418254595%_ _%g5418354597%_ _%g5418454598%_)
                     (_%expand54119%_
                      _%g5418454598%_
                      _%g5418354597%_
                      (foldr (lambda (_%g5462154624%_ _%g5462254627%_)
                               (cons _%g5462154624%_ _%g5462254627%_))
                             '()
                             _%g5418254595%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9512695127%_
                   (lambda (_%g5420954475%_ _%g5421054477%_ _%g5421154478%_)
                     (_%expand54119%_
                      _%g5421154478%_
                      _%g5421054477%_
                      (foldr (lambda (_%g5450154504%_ _%g5450254507%_)
                               (cons _%g5450154504%_ _%g5450254507%_))
                             '()
                             _%g5420954475%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9513095131%_
                   (lambda (_%g5423654353%_ _%g5423754355%_ _%g5423854356%_)
                     (_%expand54119%_
                      _%g5423854356%_
                      _%g5423754355%_
                      (foldr (lambda (_%g5438154384%_ _%g5438254387%_)
                               (cons _%g5438154384%_ _%g5438254387%_))
                             '()
                             _%g5423654353%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9535095351%_
                      (lambda (_%e5423954275%_
                               _%hd5424054279%_
                               _%tl5424154282%_
                               _%e5424254285%_
                               _%hd5424354289%_
                               _%tl5424454292%_
                               _%e5424554295%_
                               _%hd5424654299%_
                               _%tl5424754302%_
                               _%e5424854305%_
                               _%hd5424954309%_
                               _%tl5425054312%_
                               _%e5425154315%_
                               _%hd5425254319%_
                               _%tl5425354322%_
                               _%__splice9513295133%_
                               _%target5425454325%_
                               _%tl5425654328%_)
                        (letrec ((_%loop5425754331%_
                                  (lambda (_%hd5425554335%_ _%body5426154338%_)
                                    (if (gx#stx-pair? _%hd5425554335%_)
                                        (let ((_%e5425854340%_
                                               (gx#syntax-e _%hd5425554335%_)))
                                          (let ((_%lp-tl5426054347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5425854340%_)))
                                                (_%lp-hd5425954344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5425854340%_))))
                                            (_%loop5425754331%_
                                             _%lp-tl5426054347%_
                                             (cons _%lp-hd5425954344%_
                                                   _%body5426154338%_))))
                                        (let ((_%body5426254350%_
                                               (reverse _%body5426154338%_)))
                                          (let ((_%g5423654353%_
                                                 _%body5426254350%_)
                                                (_%g5423754355%_
                                                 _%hd5425254319%_)
                                                (_%g5423854356%_
                                                 _%hd5424654299%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5423754355%_))
                                                (_%__kont9513095131%_
                                                 _%g5423654353%_
                                                 _%g5423754355%_
                                                 _%g5423854356%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))))))))
                          (_%loop5425754331%_ _%target5425454325%_ '()))))
                     (_%__match9530695307%_
                      (lambda (_%e5421254397%_
                               _%hd5421354401%_
                               _%tl5421454404%_
                               _%e5421554407%_
                               _%hd5421654411%_
                               _%tl5421754414%_
                               _%e5421854417%_
                               _%hd5421954421%_
                               _%tl5422054424%_
                               _%e5422154427%_
                               _%hd5422254431%_
                               _%tl5422354434%_
                               _%e5422454437%_
                               _%hd5422554441%_
                               _%tl5422654444%_
                               _%__splice9512895129%_
                               _%target5422754447%_
                               _%tl5422954450%_)
                        (letrec ((_%loop5423054453%_
                                  (lambda (_%hd5422854457%_ _%body5423454460%_)
                                    (if (gx#stx-pair? _%hd5422854457%_)
                                        (let ((_%e5423154462%_
                                               (gx#syntax-e _%hd5422854457%_)))
                                          (let ((_%lp-tl5423354469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5423154462%_)))
                                                (_%lp-hd5423254466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5423154462%_))))
                                            (_%loop5423054453%_
                                             _%lp-tl5423354469%_
                                             (cons _%lp-hd5423254466%_
                                                   _%body5423454460%_))))
                                        (let ((_%body5423554472%_
                                               (reverse _%body5423454460%_)))
                                          (let ((_%g5420954475%_
                                                 _%body5423554472%_)
                                                (_%g5421054477%_
                                                 _%hd5422554441%_)
                                                (_%g5421154478%_
                                                 _%hd5421954421%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5421054477%_))
                                                (_%__kont9512695127%_
                                                 _%g5420954475%_
                                                 _%g5421054477%_
                                                 _%g5421154478%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))))))))
                          (_%loop5423054453%_ _%target5422754447%_ '()))))
                     (_%__match9526295263%_
                      (lambda (_%e5418554517%_
                               _%hd5418654521%_
                               _%tl5418754524%_
                               _%e5418854527%_
                               _%hd5418954531%_
                               _%tl5419054534%_
                               _%e5419154537%_
                               _%hd5419254541%_
                               _%tl5419354544%_
                               _%e5419454547%_
                               _%hd5419554551%_
                               _%tl5419654554%_
                               _%e5419754557%_
                               _%hd5419854561%_
                               _%tl5419954564%_
                               _%__splice9512495125%_
                               _%target5420054567%_
                               _%tl5420254570%_)
                        (letrec ((_%loop5420354573%_
                                  (lambda (_%hd5420154577%_ _%body5420754580%_)
                                    (if (gx#stx-pair? _%hd5420154577%_)
                                        (let ((_%e5420454582%_
                                               (gx#syntax-e _%hd5420154577%_)))
                                          (let ((_%lp-tl5420654589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5420454582%_)))
                                                (_%lp-hd5420554586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5420454582%_))))
                                            (_%loop5420354573%_
                                             _%lp-tl5420654589%_
                                             (cons _%lp-hd5420554586%_
                                                   _%body5420754580%_))))
                                        (let ((_%body5420854592%_
                                               (reverse _%body5420754580%_)))
                                          (let ((_%g5418254595%_
                                                 _%body5420854592%_)
                                                (_%g5418354597%_
                                                 _%hd5419854561%_)
                                                (_%g5418454598%_
                                                 _%hd5419254541%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5418354597%_))
                                                (_%__kont9512295123%_
                                                 _%g5418254595%_
                                                 _%g5418354597%_
                                                 _%g5418454598%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))))))))
                          (_%loop5420354573%_ _%target5420054567%_ '()))))
                     (_%__match9521895219%_
                      (lambda (_%e5415854637%_
                               _%hd5415954641%_
                               _%tl5416054644%_
                               _%e5416154647%_
                               _%hd5416254651%_
                               _%tl5416354654%_
                               _%e5416454657%_
                               _%hd5416554661%_
                               _%tl5416654664%_
                               _%e5416754667%_
                               _%hd5416854671%_
                               _%tl5416954674%_
                               _%e5417054677%_
                               _%hd5417154681%_
                               _%tl5417254684%_
                               _%__splice9512095121%_
                               _%target5417354687%_
                               _%tl5417554690%_)
                        (letrec ((_%loop5417654693%_
                                  (lambda (_%hd5417454697%_ _%body5418054700%_)
                                    (if (gx#stx-pair? _%hd5417454697%_)
                                        (let ((_%e5417754702%_
                                               (gx#syntax-e _%hd5417454697%_)))
                                          (let ((_%lp-tl5417954709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5417754702%_)))
                                                (_%lp-hd5417854706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5417754702%_))))
                                            (_%loop5417654693%_
                                             _%lp-tl5417954709%_
                                             (cons _%lp-hd5417854706%_
                                                   _%body5418054700%_))))
                                        (let ((_%body5418154712%_
                                               (reverse _%body5418054700%_)))
                                          (let ((_%g5415554715%_
                                                 _%body5418154712%_)
                                                (_%g5415654717%_
                                                 _%hd5417154681%_)
                                                (_%g5415754718%_
                                                 _%hd5416554661%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5415654717%_))
                                                (_%__kont9511895119%_
                                                 _%g5415554715%_
                                                 _%g5415654717%_
                                                 _%g5415754718%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))))))))
                          (_%loop5417654693%_ _%target5417354687%_ '()))))
                     (_%__match9519895199%_
                      (lambda (_%e5415854637%_
                               _%hd5415954641%_
                               _%tl5416054644%_
                               _%e5416154647%_
                               _%hd5416254651%_
                               _%tl5416354654%_
                               _%e5416454657%_
                               _%hd5416554661%_
                               _%tl5416654664%_
                               _%e5416754667%_
                               _%hd5416854671%_
                               _%tl5416954674%_)
                        (if (gx#identifier? _%hd5416854671%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101310_|
                                 _%hd5416854671%_)
                                (if (gx#stx-pair? _%tl5416954674%_)
                                    (let ((_%e5417054677%_
                                           (gx#syntax-e _%tl5416954674%_)))
                                      (let ((_%tl5417254684%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5417054677%_)))
                                            (_%hd5417154681%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5417054677%_))))
                                        (if (gx#stx-null? _%tl5417254684%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5416354654%_)
                                                (let ((_%__splice9512095121%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5416354654%_
                                                        '0)))
                                                  (let ((_%tl5417554690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9512095121%_
                                                            '1)))
                                                        (_%target5417354687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9512095121%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5417554690%_)
                                                        (_%__match9521895219%_
                                                         _%e5415854637%_
                                                         _%hd5415954641%_
                                                         _%tl5416054644%_
                                                         _%e5416154647%_
                                                         _%hd5416254651%_
                                                         _%tl5416354654%_
                                                         _%e5416454657%_
                                                         _%hd5416554661%_
                                                         _%tl5416654664%_
                                                         _%e5416754667%_
                                                         _%hd5416854671%_
                                                         _%tl5416954674%_
                                                         _%e5417054677%_
                                                         _%hd5417154681%_
                                                         _%tl5417254684%_
                                                         _%__splice9512095121%_
                                                         _%target5417354687%_
                                                         _%tl5417554690%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5412554268%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5412554268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5412554268%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101311_|
                                     _%hd5416854671%_)
                                    (if (gx#stx-pair? _%tl5416954674%_)
                                        (let ((_%e5419754557%_
                                               (gx#syntax-e _%tl5416954674%_)))
                                          (let ((_%tl5419954564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5419754557%_)))
                                                (_%hd5419854561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5419754557%_))))
                                            (if (gx#stx-null? _%tl5419954564%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5416354654%_)
                                                    (let ((_%__splice9512495125%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5416354654%_
                                                            '0)))
                                                      (let ((_%tl5420254570%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9512495125%_ '1)))
                    (_%target5420054567%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9512495125%_ '0))))
                (if (gx#stx-null? _%tl5420254570%_)
                    (_%__match9526295263%_
                     _%e5415854637%_
                     _%hd5415954641%_
                     _%tl5416054644%_
                     _%e5416154647%_
                     _%hd5416254651%_
                     _%tl5416354654%_
                     _%e5416454657%_
                     _%hd5416554661%_
                     _%tl5416654664%_
                     _%e5416754667%_
                     _%hd5416854671%_
                     _%tl5416954674%_
                     _%e5419754557%_
                     _%hd5419854561%_
                     _%tl5419954564%_
                     _%__splice9512495125%_
                     _%target5420054567%_
                     _%tl5420254570%_)
                    (let () (declare (not safe)) (_%g5412554268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5412554268%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5412554268%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101312_|
                                         _%hd5416854671%_)
                                        (if (gx#stx-pair? _%tl5416954674%_)
                                            (let ((_%e5422454437%_
                                                   (gx#syntax-e
                                                    _%tl5416954674%_)))
                                              (let ((_%tl5422654444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5422454437%_)))
                                                    (_%hd5422554441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5422454437%_))))
                                                (if (gx#stx-null?
                                                     _%tl5422654444%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5416354654%_)
                                                        (let ((_%__splice9512895129%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5416354654%_
                                                                '0)))
                                                          (let ((_%tl5422954450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9512895129%_ '1)))
                        (_%target5422754447%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9512895129%_ '0))))
                    (if (gx#stx-null? _%tl5422954450%_)
                        (_%__match9530695307%_
                         _%e5415854637%_
                         _%hd5415954641%_
                         _%tl5416054644%_
                         _%e5416154647%_
                         _%hd5416254651%_
                         _%tl5416354654%_
                         _%e5416454657%_
                         _%hd5416554661%_
                         _%tl5416654664%_
                         _%e5416754667%_
                         _%hd5416854671%_
                         _%tl5416954674%_
                         _%e5422454437%_
                         _%hd5422554441%_
                         _%tl5422654444%_
                         _%__splice9512895129%_
                         _%target5422754447%_
                         _%tl5422954450%_)
                        (let () (declare (not safe)) (_%g5412554268%_)))))
                (let () (declare (not safe)) (_%g5412554268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5412554268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5412554268%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101313_|
                                             _%hd5416854671%_)
                                            (if (gx#stx-pair? _%tl5416954674%_)
                                                (let ((_%e5425154315%_
                                                       (gx#syntax-e
                                                        _%tl5416954674%_)))
                                                  (let ((_%tl5425354322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5425154315%_)))
                                                        (_%hd5425254319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5425154315%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5425354322%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5416354654%_)
                                                            (let ((_%__splice9513295133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5416354654%_
                            '0)))
                      (let ((_%tl5425654328%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9513295133%_ '1)))
                            (_%target5425454325%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9513295133%_ '0))))
                        (if (gx#stx-null? _%tl5425654328%_)
                            (_%__match9535095351%_
                             _%e5415854637%_
                             _%hd5415954641%_
                             _%tl5416054644%_
                             _%e5416154647%_
                             _%hd5416254651%_
                             _%tl5416354654%_
                             _%e5416454657%_
                             _%hd5416554661%_
                             _%tl5416654664%_
                             _%e5416754667%_
                             _%hd5416854671%_
                             _%tl5416954674%_
                             _%e5425154315%_
                             _%hd5425254319%_
                             _%tl5425354322%_
                             _%__splice9513295133%_
                             _%target5425454325%_
                             _%tl5425654328%_)
                            (let () (declare (not safe)) (_%g5412554268%_)))))
                    (let () (declare (not safe)) (_%g5412554268%_)))
                (let () (declare (not safe)) (_%g5412554268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5412554268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5412554268%_))))))
                            (let () (declare (not safe)) (_%g5412554268%_)))))
                     (_%__match9517495175%_
                      (lambda (_%e5413154757%_
                               _%hd5413254761%_
                               _%tl5413354764%_
                               _%e5413454767%_
                               _%hd5413554771%_
                               _%tl5413654774%_
                               _%e5413754777%_
                               _%hd5413854781%_
                               _%tl5413954784%_
                               _%e5414054787%_
                               _%hd5414154791%_
                               _%tl5414254794%_
                               _%e5414354797%_
                               _%hd5414454801%_
                               _%tl5414554804%_
                               _%__splice9511695117%_
                               _%target5414654807%_
                               _%tl5414854810%_)
                        (letrec ((_%loop5414954813%_
                                  (lambda (_%hd5414754817%_ _%body5415354820%_)
                                    (if (gx#stx-pair? _%hd5414754817%_)
                                        (let ((_%e5415054822%_
                                               (gx#syntax-e _%hd5414754817%_)))
                                          (let ((_%lp-tl5415254829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5415054822%_)))
                                                (_%lp-hd5415154826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5415054822%_))))
                                            (_%loop5414954813%_
                                             _%lp-tl5415254829%_
                                             (cons _%lp-hd5415154826%_
                                                   _%body5415354820%_))))
                                        (let ((_%body5415454832%_
                                               (reverse _%body5415354820%_)))
                                          (let ((_%g5412754835%_
                                                 _%body5415454832%_)
                                                (_%g5412854837%_
                                                 _%hd5414454801%_)
                                                (_%g5412954838%_
                                                 _%hd5414154791%_)
                                                (_%g5413054839%_
                                                 _%hd5413854781%_))
                                            (if (let ((__tmp101314
                                                       (gx#syntax-local-value
                                                        _%g5412854837%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101314))
                                                (_%__kont9511495115%_
                                                 _%g5412754835%_
                                                 _%g5412854837%_
                                                 _%g5412954838%_
                                                 _%g5413054839%_)
                                                (_%__match9519895199%_
                                                 _%e5413154757%_
                                                 _%hd5413254761%_
                                                 _%tl5413354764%_
                                                 _%e5413454767%_
                                                 _%hd5413554771%_
                                                 _%tl5413654774%_
                                                 _%e5413754777%_
                                                 _%hd5413854781%_
                                                 _%tl5413954784%_
                                                 _%e5414054787%_
                                                 _%hd5414154791%_
                                                 _%tl5414254794%_))))))))
                          (_%loop5414954813%_ _%target5414654807%_ '())))))
                (if (gx#stx-pair? _%__stx9511195112%_)
                    (let ((_%e5413154757%_ (gx#syntax-e _%__stx9511195112%_)))
                      (let ((_%tl5413354764%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5413154757%_)))
                            (_%hd5413254761%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5413154757%_))))
                        (if (gx#stx-pair? _%tl5413354764%_)
                            (let ((_%e5413454767%_
                                   (gx#syntax-e _%tl5413354764%_)))
                              (let ((_%tl5413654774%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5413454767%_)))
                                    (_%hd5413554771%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5413454767%_))))
                                (if (gx#stx-pair? _%hd5413554771%_)
                                    (let ((_%e5413754777%_
                                           (gx#syntax-e _%hd5413554771%_)))
                                      (let ((_%tl5413954784%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5413754777%_)))
                                            (_%hd5413854781%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5413754777%_))))
                                        (if (gx#stx-pair? _%tl5413954784%_)
                                            (let ((_%e5414054787%_
                                                   (gx#syntax-e
                                                    _%tl5413954784%_)))
                                              (let ((_%tl5414254794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5414054787%_)))
                                                    (_%hd5414154791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5414054787%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5414254794%_)
                                                    (let ((_%e5414354797%_
                                                           (gx#syntax-e
                                                            _%tl5414254794%_)))
                                                      (let ((_%tl5414554804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5414354797%_)))
                    (_%hd5414454801%_
                     (let () (declare (not safe)) (##car _%e5414354797%_))))
                (if (gx#stx-null? _%tl5414554804%_)
                    (if (gx#stx-pair/null? _%tl5413654774%_)
                        (let ((_%__splice9511695117%_
                               (gx#syntax-split-splice->vector
                                _%tl5413654774%_
                                '0)))
                          (let ((_%tl5414854810%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9511695117%_ '1)))
                                (_%target5414654807%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9511695117%_ '0))))
                            (if (gx#stx-null? _%tl5414854810%_)
                                (_%__match9517495175%_
                                 _%e5413154757%_
                                 _%hd5413254761%_
                                 _%tl5413354764%_
                                 _%e5413454767%_
                                 _%hd5413554771%_
                                 _%tl5413654774%_
                                 _%e5413754777%_
                                 _%hd5413854781%_
                                 _%tl5413954784%_
                                 _%e5414054787%_
                                 _%hd5414154791%_
                                 _%tl5414254794%_
                                 _%e5414354797%_
                                 _%hd5414454801%_
                                 _%tl5414554804%_
                                 _%__splice9511695117%_
                                 _%target5414654807%_
                                 _%tl5414854810%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5412554268%_)))))
                        (let () (declare (not safe)) (_%g5412554268%_)))
                    (let () (declare (not safe)) (_%g5412554268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5412554268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5412554268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5412554268%_)))))
                            (let () (declare (not safe)) (_%g5412554268%_)))))
                    (let () (declare (not safe)) (_%g5412554268%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx55231%_)
        (letrec ((_%expand-body55234%_
                  (lambda (_%var56225%_
                           _%Interface56227%_
                           _%body56228%_
                           _%checked?56229%_)
                    (let* ((_%type56231%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx55231%_
                               _%Interface56227%_)))
                           (_%g5623456278%_
                            (lambda (_%g5623556274%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5623556274%_)))
                           (_%g5623356434%_
                            (lambda (_%g5623556282%_)
                              (if (gx#stx-pair? _%g5623556282%_)
                                  (let ((_%e5624356285%_
                                         (gx#syntax-e _%g5623556282%_)))
                                    (let ((_%hd5624456289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5624356285%_)))
                                          (_%tl5624556292%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5624356285%_))))
                                      (if (gx#stx-pair? _%tl5624556292%_)
                                          (let ((_%e5624656295%_
                                                 (gx#syntax-e
                                                  _%tl5624556292%_)))
                                            (let ((_%hd5624756299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5624656295%_)))
                                                  (_%tl5624856302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5624656295%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5624856302%_)
                                                  (let ((_%e5624956305%_
                                                         (gx#syntax-e
                                                          _%tl5624856302%_)))
                                                    (let ((_%hd5625056309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5624956305%_)))
                                                          (_%tl5625156312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5624956305%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5625156312%_)
                                                          (let ((_%e5625256315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5625156312%_)))
                    (let ((_%hd5625356319%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5625256315%_)))
                          (_%tl5625456322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5625256315%_))))
                      (if (gx#stx-pair? _%tl5625456322%_)
                          (let ((_%e5625556325%_
                                 (gx#syntax-e _%tl5625456322%_)))
                            (let ((_%hd5625656329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5625556325%_)))
                                  (_%tl5625756332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5625556325%_))))
                              (if (gx#stx-pair? _%tl5625756332%_)
                                  (let ((_%e5625856335%_
                                         (gx#syntax-e _%tl5625756332%_)))
                                    (let ((_%hd5625956339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5625856335%_)))
                                          (_%tl5626056342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5625856335%_))))
                                      (if (gx#stx-pair? _%tl5626056342%_)
                                          (let ((_%e5626156345%_
                                                 (gx#syntax-e
                                                  _%tl5626056342%_)))
                                            (let ((_%hd5626256349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5626156345%_)))
                                                  (_%tl5626356352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5626156345%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5626256349%_)
                                                  (let ((_g101315_
                                                         (gx#syntax-split-splice
                                                          _%hd5626256349%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101316_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101315_)
                           (##values-length _g101315_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101316_ 2)))
                    (error "Context expects 2 values" _g101316_)))
              (let ((_%target5626456355%_
                     (let () (declare (not safe)) (##values-ref _g101315_ 0)))
                    (_%tl5626656358%_
                     (let () (declare (not safe)) (##values-ref _g101315_ 1))))
                (if (gx#stx-null? _%tl5626656358%_)
                    (letrec ((_%loop5626756361%_
                              (lambda (_%hd5626556365%_ _%body5627156368%_)
                                (if (gx#stx-pair? _%hd5626556365%_)
                                    (let ((_%e5626856370%_
                                           (gx#syntax-e _%hd5626556365%_)))
                                      (let ((_%lp-hd5626956374%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5626856370%_)))
                                            (_%lp-tl5627056377%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5626856370%_))))
                                        (_%loop5626756361%_
                                         _%lp-tl5627056377%_
                                         (cons _%lp-hd5626956374%_
                                               _%body5627156368%_))))
                                    (let ((_%body5627256380%_
                                           (reverse _%body5627156368%_)))
                                      (if (gx#stx-null? _%tl5626356352%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%hd5625356319%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%hd5625056309%_ '()))
                                      (cons _%hd5625356319%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%hd5624456289%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%hd5625356319%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%hd5624756299%_ '()))
                            (cons _%hd5625656329%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%hd5625956339%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%g5642556428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5642656431%_)
                   (cons _%g5642556428%_ _%g5642656431%_))
                 '()
                 _%body5627256380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g5623456278%_
                                           _%g5623556282%_)))))))
                      (_%loop5626756361%_ _%target5626456355%_ '()))
                    (_%g5623456278%_ _%g5623556282%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5623456278%_
                                                   _%g5623556282%_))))
                                          (_%g5623456278%_ _%g5623556282%_))))
                                  (_%g5623456278%_ _%g5623556282%_))))
                          (_%g5623456278%_ _%g5623556282%_))))
                  (_%g5623456278%_ _%g5623556282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5623456278%_
                                                   _%g5623556282%_))))
                                          (_%g5623456278%_ _%g5623556282%_))))
                                  (_%g5623456278%_ _%g5623556282%_)))))
                      (_%g5623356434%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type56231%_
                             (let ((__obj101112 _%type56231%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101112
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101112
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101112
                                    'type-descriptor)))
                             _%var56225%_
                             _%checked?56229%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56228%_)))))
                 (_%expand55236%_
                  (lambda (_%var56024%_
                           _%Interface56026%_
                           _%body56027%_
                           _%checked?56028%_
                           _%checked-methods?56029%_
                           _%maybe?56030%_)
                    (let* ((_%g5603256040%_
                            (lambda (_%g5603356036%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5603356036%_)))
                           (_%g5603156217%_
                            (lambda (_%g5603356044%_)
                              (if _%checked?56028%_
                                  (if _%maybe?56030%_
                                      (let* ((_%g5605956074%_
                                              (lambda (_%g5606056070%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5606056070%_)))
                                             (_%g5605856120%_
                                              (lambda (_%g5606056078%_)
                                                (if (gx#stx-pair?
                                                     _%g5606056078%_)
                                                    (let ((_%e5606356081%_
                                                           (gx#syntax-e
                                                            _%g5606056078%_)))
                                                      (let ((_%hd5606456085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5606356081%_)))
                    (_%tl5606556088%_
                     (let () (declare (not safe)) (##cdr _%e5606356081%_))))
                (if (gx#stx-pair? _%tl5606556088%_)
                    (let ((_%e5606656091%_ (gx#syntax-e _%tl5606556088%_)))
                      (let ((_%hd5606756095%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5606656091%_)))
                            (_%tl5606856098%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5606656091%_))))
                        (if (gx#stx-null? _%tl5606856098%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%hd5606456085%_
                                              (cons (cons _%hd5606756095%_
                                                          (cons _%hd5606456085%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%hd5606456085%_
                                                          (cons _%g5603356044%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%hd5606456085%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%g5605956074%_ _%g5606056078%_))))
                    (_%g5605956074%_ _%g5606056078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5605956074%_
                                                     _%g5606056078%_)))))
                                        (_%g5605856120%_
                                         (list _%var56024%_
                                               _%Interface56026%_)))
                                      (let* ((_%g5612456139%_
                                              (lambda (_%g5612556135%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5612556135%_)))
                                             (_%g5612356183%_
                                              (lambda (_%g5612556143%_)
                                                (if (gx#stx-pair?
                                                     _%g5612556143%_)
                                                    (let ((_%e5612856146%_
                                                           (gx#syntax-e
                                                            _%g5612556143%_)))
                                                      (let ((_%hd5612956150%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5612856146%_)))
                    (_%tl5613056153%_
                     (let () (declare (not safe)) (##cdr _%e5612856146%_))))
                (if (gx#stx-pair? _%tl5613056153%_)
                    (let ((_%e5613156156%_ (gx#syntax-e _%tl5613056153%_)))
                      (let ((_%hd5613256160%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5613156156%_)))
                            (_%tl5613356163%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5613156156%_))))
                        (if (gx#stx-null? _%tl5613356163%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%hd5612956150%_
                                              (cons (cons _%hd5613256160%_
                                                          (cons _%hd5612956150%_
                                                                '()))
                                                    '()))
                                        (cons _%g5603356044%_ '())))
                            (_%g5612456139%_ _%g5612556143%_))))
                    (_%g5612456139%_ _%g5612556143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5612456139%_
                                                     _%g5612556143%_)))))
                                        (_%g5612356183%_
                                         (list _%var56024%_
                                               _%Interface56026%_))))
                                  (if _%maybe?56030%_
                                      (let* ((_%g5618756195%_
                                              (lambda (_%g5618856191%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5618856191%_)))
                                             (_%g5618656213%_
                                              (lambda (_%g5618856199%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%g5618856199%_
                                                            (cons _%g5603356044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%g5618856199%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%g5618656213%_ _%var56024%_))
                                      _%g5603356044%_)))))
                      (_%g5603156217%_
                       (_%expand-body55234%_
                        _%var56024%_
                        _%Interface56026%_
                        _%body56027%_
                        (let ((_%$e56221%_ _%checked?56028%_))
                          (if _%$e56221%_
                              _%$e56221%_
                              _%checked-methods?56029%_))))))))
          (let* ((_%__stx9535395354%_ _%stx55231%_)
                 (_%g5524255385%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9535395354%_))))
            (let ((_%__kont9535695357%_
                   (lambda (_%g5524455952%_
                            _%g5524555954%_
                            _%g5524655955%_
                            _%g5524755956%_)
                     (let* ((_%g5598155989%_
                             (lambda (_%g5598255985%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5598255985%_)))
                            (_%g5598056016%_
                             (lambda (_%g5598255993%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%g5524755956%_
                                                 (cons _%g5524655955%_
                                                       (cons _%g5598255993%_
                                                             '())))
                                           (foldr (lambda (_%g5600756010%_
                                                           _%g5600856013%_)
                                                    (cons _%g5600756010%_
                                                          _%g5600856013%_))
                                                  '()
                                                  _%g5524455952%_))))))
                       (_%g5598056016%_
                        (let ((__obj101113
                               (gx#syntax-local-value _%g5524555954%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101113
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101113
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101113
                               'identifier)))))))
                  (_%__kont9536095361%_
                   (lambda (_%g5527255832%_ _%g5527355834%_ _%g5527455835%_)
                     (_%expand55236%_
                      _%g5527455835%_
                      _%g5527355834%_
                      (foldr (lambda (_%g5585855861%_ _%g5585955864%_)
                               (cons _%g5585855861%_ _%g5585955864%_))
                             '()
                             _%g5527255832%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9536495365%_
                   (lambda (_%g5529955712%_ _%g5530055714%_ _%g5530155715%_)
                     (_%expand55236%_
                      _%g5530155715%_
                      _%g5530055714%_
                      (foldr (lambda (_%g5573855741%_ _%g5573955744%_)
                               (cons _%g5573855741%_ _%g5573955744%_))
                             '()
                             _%g5529955712%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9536895369%_
                   (lambda (_%g5532655592%_ _%g5532755594%_ _%g5532855595%_)
                     (_%expand55236%_
                      _%g5532855595%_
                      _%g5532755594%_
                      (foldr (lambda (_%g5561855621%_ _%g5561955624%_)
                               (cons _%g5561855621%_ _%g5561955624%_))
                             '()
                             _%g5532655592%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9537295373%_
                   (lambda (_%g5535355470%_ _%g5535455472%_ _%g5535555473%_)
                     (_%expand55236%_
                      _%g5535555473%_
                      _%g5535455472%_
                      (foldr (lambda (_%g5549855501%_ _%g5549955504%_)
                               (cons _%g5549855501%_ _%g5549955504%_))
                             '()
                             _%g5535355470%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9559295593%_
                      (lambda (_%e5535655392%_
                               _%hd5535755396%_
                               _%tl5535855399%_
                               _%e5535955402%_
                               _%hd5536055406%_
                               _%tl5536155409%_
                               _%e5536255412%_
                               _%hd5536355416%_
                               _%tl5536455419%_
                               _%e5536555422%_
                               _%hd5536655426%_
                               _%tl5536755429%_
                               _%e5536855432%_
                               _%hd5536955436%_
                               _%tl5537055439%_
                               _%__splice9537495375%_
                               _%target5537155442%_
                               _%tl5537355445%_)
                        (letrec ((_%loop5537455448%_
                                  (lambda (_%hd5537255452%_ _%body5537855455%_)
                                    (if (gx#stx-pair? _%hd5537255452%_)
                                        (let ((_%e5537555457%_
                                               (gx#syntax-e _%hd5537255452%_)))
                                          (let ((_%lp-tl5537755464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5537555457%_)))
                                                (_%lp-hd5537655461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5537555457%_))))
                                            (_%loop5537455448%_
                                             _%lp-tl5537755464%_
                                             (cons _%lp-hd5537655461%_
                                                   _%body5537855455%_))))
                                        (let ((_%body5537955467%_
                                               (reverse _%body5537855455%_)))
                                          (let ((_%g5535355470%_
                                                 _%body5537955467%_)
                                                (_%g5535455472%_
                                                 _%hd5536955436%_)
                                                (_%g5535555473%_
                                                 _%hd5536355416%_))
                                            (if (and (gx#identifier?
                                                      _%g5535555473%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5535455472%_)))
                                                (_%__kont9537295373%_
                                                 _%g5535355470%_
                                                 _%g5535455472%_
                                                 _%g5535555473%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))))))))
                          (_%loop5537455448%_ _%target5537155442%_ '()))))
                     (_%__match9554895549%_
                      (lambda (_%e5532955514%_
                               _%hd5533055518%_
                               _%tl5533155521%_
                               _%e5533255524%_
                               _%hd5533355528%_
                               _%tl5533455531%_
                               _%e5533555534%_
                               _%hd5533655538%_
                               _%tl5533755541%_
                               _%e5533855544%_
                               _%hd5533955548%_
                               _%tl5534055551%_
                               _%e5534155554%_
                               _%hd5534255558%_
                               _%tl5534355561%_
                               _%__splice9537095371%_
                               _%target5534455564%_
                               _%tl5534655567%_)
                        (letrec ((_%loop5534755570%_
                                  (lambda (_%hd5534555574%_ _%body5535155577%_)
                                    (if (gx#stx-pair? _%hd5534555574%_)
                                        (let ((_%e5534855579%_
                                               (gx#syntax-e _%hd5534555574%_)))
                                          (let ((_%lp-tl5535055586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5534855579%_)))
                                                (_%lp-hd5534955583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5534855579%_))))
                                            (_%loop5534755570%_
                                             _%lp-tl5535055586%_
                                             (cons _%lp-hd5534955583%_
                                                   _%body5535155577%_))))
                                        (let ((_%body5535255589%_
                                               (reverse _%body5535155577%_)))
                                          (let ((_%g5532655592%_
                                                 _%body5535255589%_)
                                                (_%g5532755594%_
                                                 _%hd5534255558%_)
                                                (_%g5532855595%_
                                                 _%hd5533655538%_))
                                            (if (and (gx#identifier?
                                                      _%g5532855595%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5532755594%_)))
                                                (_%__kont9536895369%_
                                                 _%g5532655592%_
                                                 _%g5532755594%_
                                                 _%g5532855595%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))))))))
                          (_%loop5534755570%_ _%target5534455564%_ '()))))
                     (_%__match9550495505%_
                      (lambda (_%e5530255634%_
                               _%hd5530355638%_
                               _%tl5530455641%_
                               _%e5530555644%_
                               _%hd5530655648%_
                               _%tl5530755651%_
                               _%e5530855654%_
                               _%hd5530955658%_
                               _%tl5531055661%_
                               _%e5531155664%_
                               _%hd5531255668%_
                               _%tl5531355671%_
                               _%e5531455674%_
                               _%hd5531555678%_
                               _%tl5531655681%_
                               _%__splice9536695367%_
                               _%target5531755684%_
                               _%tl5531955687%_)
                        (letrec ((_%loop5532055690%_
                                  (lambda (_%hd5531855694%_ _%body5532455697%_)
                                    (if (gx#stx-pair? _%hd5531855694%_)
                                        (let ((_%e5532155699%_
                                               (gx#syntax-e _%hd5531855694%_)))
                                          (let ((_%lp-tl5532355706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5532155699%_)))
                                                (_%lp-hd5532255703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5532155699%_))))
                                            (_%loop5532055690%_
                                             _%lp-tl5532355706%_
                                             (cons _%lp-hd5532255703%_
                                                   _%body5532455697%_))))
                                        (let ((_%body5532555709%_
                                               (reverse _%body5532455697%_)))
                                          (let ((_%g5529955712%_
                                                 _%body5532555709%_)
                                                (_%g5530055714%_
                                                 _%hd5531555678%_)
                                                (_%g5530155715%_
                                                 _%hd5530955658%_))
                                            (if (and (gx#identifier?
                                                      _%g5530155715%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5530055714%_)))
                                                (_%__kont9536495365%_
                                                 _%g5529955712%_
                                                 _%g5530055714%_
                                                 _%g5530155715%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))))))))
                          (_%loop5532055690%_ _%target5531755684%_ '()))))
                     (_%__match9546095461%_
                      (lambda (_%e5527555754%_
                               _%hd5527655758%_
                               _%tl5527755761%_
                               _%e5527855764%_
                               _%hd5527955768%_
                               _%tl5528055771%_
                               _%e5528155774%_
                               _%hd5528255778%_
                               _%tl5528355781%_
                               _%e5528455784%_
                               _%hd5528555788%_
                               _%tl5528655791%_
                               _%e5528755794%_
                               _%hd5528855798%_
                               _%tl5528955801%_
                               _%__splice9536295363%_
                               _%target5529055804%_
                               _%tl5529255807%_)
                        (letrec ((_%loop5529355810%_
                                  (lambda (_%hd5529155814%_ _%body5529755817%_)
                                    (if (gx#stx-pair? _%hd5529155814%_)
                                        (let ((_%e5529455819%_
                                               (gx#syntax-e _%hd5529155814%_)))
                                          (let ((_%lp-tl5529655826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5529455819%_)))
                                                (_%lp-hd5529555823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5529455819%_))))
                                            (_%loop5529355810%_
                                             _%lp-tl5529655826%_
                                             (cons _%lp-hd5529555823%_
                                                   _%body5529755817%_))))
                                        (let ((_%body5529855829%_
                                               (reverse _%body5529755817%_)))
                                          (let ((_%g5527255832%_
                                                 _%body5529855829%_)
                                                (_%g5527355834%_
                                                 _%hd5528855798%_)
                                                (_%g5527455835%_
                                                 _%hd5528255778%_))
                                            (if (and (gx#identifier?
                                                      _%g5527455835%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5527355834%_)))
                                                (_%__kont9536095361%_
                                                 _%g5527255832%_
                                                 _%g5527355834%_
                                                 _%g5527455835%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))))))))
                          (_%loop5529355810%_ _%target5529055804%_ '()))))
                     (_%__match9544095441%_
                      (lambda (_%e5527555754%_
                               _%hd5527655758%_
                               _%tl5527755761%_
                               _%e5527855764%_
                               _%hd5527955768%_
                               _%tl5528055771%_
                               _%e5528155774%_
                               _%hd5528255778%_
                               _%tl5528355781%_
                               _%e5528455784%_
                               _%hd5528555788%_
                               _%tl5528655791%_)
                        (if (gx#identifier? _%hd5528555788%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101317_|
                                 _%hd5528555788%_)
                                (if (gx#stx-pair? _%tl5528655791%_)
                                    (let ((_%e5528755794%_
                                           (gx#syntax-e _%tl5528655791%_)))
                                      (let ((_%tl5528955801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5528755794%_)))
                                            (_%hd5528855798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5528755794%_))))
                                        (if (gx#stx-null? _%tl5528955801%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5528055771%_)
                                                (let ((_%__splice9536295363%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5528055771%_
                                                        '0)))
                                                  (let ((_%tl5529255807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9536295363%_
                                                            '1)))
                                                        (_%target5529055804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9536295363%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5529255807%_)
                                                        (_%__match9546095461%_
                                                         _%e5527555754%_
                                                         _%hd5527655758%_
                                                         _%tl5527755761%_
                                                         _%e5527855764%_
                                                         _%hd5527955768%_
                                                         _%tl5528055771%_
                                                         _%e5528155774%_
                                                         _%hd5528255778%_
                                                         _%tl5528355781%_
                                                         _%e5528455784%_
                                                         _%hd5528555788%_
                                                         _%tl5528655791%_
                                                         _%e5528755794%_
                                                         _%hd5528855798%_
                                                         _%tl5528955801%_
                                                         _%__splice9536295363%_
                                                         _%target5529055804%_
                                                         _%tl5529255807%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5524255385%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524255385%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5524255385%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101318_|
                                     _%hd5528555788%_)
                                    (if (gx#stx-pair? _%tl5528655791%_)
                                        (let ((_%e5531455674%_
                                               (gx#syntax-e _%tl5528655791%_)))
                                          (let ((_%tl5531655681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5531455674%_)))
                                                (_%hd5531555678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5531455674%_))))
                                            (if (gx#stx-null? _%tl5531655681%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5528055771%_)
                                                    (let ((_%__splice9536695367%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5528055771%_
                                                            '0)))
                                                      (let ((_%tl5531955687%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9536695367%_ '1)))
                    (_%target5531755684%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9536695367%_ '0))))
                (if (gx#stx-null? _%tl5531955687%_)
                    (_%__match9550495505%_
                     _%e5527555754%_
                     _%hd5527655758%_
                     _%tl5527755761%_
                     _%e5527855764%_
                     _%hd5527955768%_
                     _%tl5528055771%_
                     _%e5528155774%_
                     _%hd5528255778%_
                     _%tl5528355781%_
                     _%e5528455784%_
                     _%hd5528555788%_
                     _%tl5528655791%_
                     _%e5531455674%_
                     _%hd5531555678%_
                     _%tl5531655681%_
                     _%__splice9536695367%_
                     _%target5531755684%_
                     _%tl5531955687%_)
                    (let () (declare (not safe)) (_%g5524255385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524255385%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5524255385%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101319_|
                                         _%hd5528555788%_)
                                        (if (gx#stx-pair? _%tl5528655791%_)
                                            (let ((_%e5534155554%_
                                                   (gx#syntax-e
                                                    _%tl5528655791%_)))
                                              (let ((_%tl5534355561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5534155554%_)))
                                                    (_%hd5534255558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5534155554%_))))
                                                (if (gx#stx-null?
                                                     _%tl5534355561%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5528055771%_)
                                                        (let ((_%__splice9537095371%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5528055771%_
                                                                '0)))
                                                          (let ((_%tl5534655567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9537095371%_ '1)))
                        (_%target5534455564%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9537095371%_ '0))))
                    (if (gx#stx-null? _%tl5534655567%_)
                        (_%__match9554895549%_
                         _%e5527555754%_
                         _%hd5527655758%_
                         _%tl5527755761%_
                         _%e5527855764%_
                         _%hd5527955768%_
                         _%tl5528055771%_
                         _%e5528155774%_
                         _%hd5528255778%_
                         _%tl5528355781%_
                         _%e5528455784%_
                         _%hd5528555788%_
                         _%tl5528655791%_
                         _%e5534155554%_
                         _%hd5534255558%_
                         _%tl5534355561%_
                         _%__splice9537095371%_
                         _%target5534455564%_
                         _%tl5534655567%_)
                        (let () (declare (not safe)) (_%g5524255385%_)))))
                (let () (declare (not safe)) (_%g5524255385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524255385%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524255385%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101320_|
                                             _%hd5528555788%_)
                                            (if (gx#stx-pair? _%tl5528655791%_)
                                                (let ((_%e5536855432%_
                                                       (gx#syntax-e
                                                        _%tl5528655791%_)))
                                                  (let ((_%tl5537055439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5536855432%_)))
                                                        (_%hd5536955436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5536855432%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5537055439%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5528055771%_)
                                                            (let ((_%__splice9537495375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5528055771%_
                            '0)))
                      (let ((_%tl5537355445%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9537495375%_ '1)))
                            (_%target5537155442%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9537495375%_ '0))))
                        (if (gx#stx-null? _%tl5537355445%_)
                            (_%__match9559295593%_
                             _%e5527555754%_
                             _%hd5527655758%_
                             _%tl5527755761%_
                             _%e5527855764%_
                             _%hd5527955768%_
                             _%tl5528055771%_
                             _%e5528155774%_
                             _%hd5528255778%_
                             _%tl5528355781%_
                             _%e5528455784%_
                             _%hd5528555788%_
                             _%tl5528655791%_
                             _%e5536855432%_
                             _%hd5536955436%_
                             _%tl5537055439%_
                             _%__splice9537495375%_
                             _%target5537155442%_
                             _%tl5537355445%_)
                            (let () (declare (not safe)) (_%g5524255385%_)))))
                    (let () (declare (not safe)) (_%g5524255385%_)))
                (let () (declare (not safe)) (_%g5524255385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524255385%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524255385%_))))))
                            (let () (declare (not safe)) (_%g5524255385%_)))))
                     (_%__match9541695417%_
                      (lambda (_%e5524855874%_
                               _%hd5524955878%_
                               _%tl5525055881%_
                               _%e5525155884%_
                               _%hd5525255888%_
                               _%tl5525355891%_
                               _%e5525455894%_
                               _%hd5525555898%_
                               _%tl5525655901%_
                               _%e5525755904%_
                               _%hd5525855908%_
                               _%tl5525955911%_
                               _%e5526055914%_
                               _%hd5526155918%_
                               _%tl5526255921%_
                               _%__splice9535895359%_
                               _%target5526355924%_
                               _%tl5526555927%_)
                        (letrec ((_%loop5526655930%_
                                  (lambda (_%hd5526455934%_ _%body5527055937%_)
                                    (if (gx#stx-pair? _%hd5526455934%_)
                                        (let ((_%e5526755939%_
                                               (gx#syntax-e _%hd5526455934%_)))
                                          (let ((_%lp-tl5526955946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5526755939%_)))
                                                (_%lp-hd5526855943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5526755939%_))))
                                            (_%loop5526655930%_
                                             _%lp-tl5526955946%_
                                             (cons _%lp-hd5526855943%_
                                                   _%body5527055937%_))))
                                        (let ((_%body5527155949%_
                                               (reverse _%body5527055937%_)))
                                          (let ((_%g5524455952%_
                                                 _%body5527155949%_)
                                                (_%g5524555954%_
                                                 _%hd5526155918%_)
                                                (_%g5524655955%_
                                                 _%hd5525855908%_)
                                                (_%g5524755956%_
                                                 _%hd5525555898%_))
                                            (if (let ((__tmp101321
                                                       (gx#syntax-local-value
                                                        _%g5524555954%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101321))
                                                (_%__kont9535695357%_
                                                 _%g5524455952%_
                                                 _%g5524555954%_
                                                 _%g5524655955%_
                                                 _%g5524755956%_)
                                                (_%__match9544095441%_
                                                 _%e5524855874%_
                                                 _%hd5524955878%_
                                                 _%tl5525055881%_
                                                 _%e5525155884%_
                                                 _%hd5525255888%_
                                                 _%tl5525355891%_
                                                 _%e5525455894%_
                                                 _%hd5525555898%_
                                                 _%tl5525655901%_
                                                 _%e5525755904%_
                                                 _%hd5525855908%_
                                                 _%tl5525955911%_))))))))
                          (_%loop5526655930%_ _%target5526355924%_ '())))))
                (if (gx#stx-pair? _%__stx9535395354%_)
                    (let ((_%e5524855874%_ (gx#syntax-e _%__stx9535395354%_)))
                      (let ((_%tl5525055881%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5524855874%_)))
                            (_%hd5524955878%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5524855874%_))))
                        (if (gx#stx-pair? _%tl5525055881%_)
                            (let ((_%e5525155884%_
                                   (gx#syntax-e _%tl5525055881%_)))
                              (let ((_%tl5525355891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5525155884%_)))
                                    (_%hd5525255888%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5525155884%_))))
                                (if (gx#stx-pair? _%hd5525255888%_)
                                    (let ((_%e5525455894%_
                                           (gx#syntax-e _%hd5525255888%_)))
                                      (let ((_%tl5525655901%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5525455894%_)))
                                            (_%hd5525555898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5525455894%_))))
                                        (if (gx#stx-pair? _%tl5525655901%_)
                                            (let ((_%e5525755904%_
                                                   (gx#syntax-e
                                                    _%tl5525655901%_)))
                                              (let ((_%tl5525955911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5525755904%_)))
                                                    (_%hd5525855908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5525755904%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5525955911%_)
                                                    (let ((_%e5526055914%_
                                                           (gx#syntax-e
                                                            _%tl5525955911%_)))
                                                      (let ((_%tl5526255921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5526055914%_)))
                    (_%hd5526155918%_
                     (let () (declare (not safe)) (##car _%e5526055914%_))))
                (if (gx#stx-null? _%tl5526255921%_)
                    (if (gx#stx-pair/null? _%tl5525355891%_)
                        (let ((_%__splice9535895359%_
                               (gx#syntax-split-splice->vector
                                _%tl5525355891%_
                                '0)))
                          (let ((_%tl5526555927%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9535895359%_ '1)))
                                (_%target5526355924%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9535895359%_ '0))))
                            (if (gx#stx-null? _%tl5526555927%_)
                                (_%__match9541695417%_
                                 _%e5524855874%_
                                 _%hd5524955878%_
                                 _%tl5525055881%_
                                 _%e5525155884%_
                                 _%hd5525255888%_
                                 _%tl5525355891%_
                                 _%e5525455894%_
                                 _%hd5525555898%_
                                 _%tl5525655901%_
                                 _%e5525755904%_
                                 _%hd5525855908%_
                                 _%tl5525955911%_
                                 _%e5526055914%_
                                 _%hd5526155918%_
                                 _%tl5526255921%_
                                 _%__splice9535895359%_
                                 _%target5526355924%_
                                 _%tl5526555927%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5524255385%_)))))
                        (let () (declare (not safe)) (_%g5524255385%_)))
                    (let () (declare (not safe)) (_%g5524255385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524255385%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524255385%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5524255385%_)))))
                            (let () (declare (not safe)) (_%g5524255385%_)))))
                    (let () (declare (not safe)) (_%g5524255385%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56444%_)
        (let* ((_%__stx9559595596%_ _%stx56444%_)
               (_%g5644956509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9559595596%_))))
          (let ((_%__kont9559895599%_
                 (lambda (_%g5645157065%_ _%g5645257067%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5645257067%_ '()))
                               (foldr (lambda (_%g5708357086%_ _%g5708457089%_)
                                        (cons _%g5708357086%_ _%g5708457089%_))
                                      '()
                                      _%g5645157065%_)))))
                (_%__kont9560295603%_
                 (lambda (_%g5646856653%_ _%g5646956655%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5646956655%_)
                       (let* ((_%g5667556682%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56444%_
                                _%g5646956655%_))
                              (_%E5667756688%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5667556682%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5667856986%_
                               (lambda (_%parts56692%_ _%var56694%_)
                                 (let ((_%$e56696%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56694%_))))
                                   (if _%$e56696%_
                                       (let _%loop56703%_ ((_%parts56706%_
                                                            _%parts56692%_)
                                                           (_%type56708%_
                                                            (##direct-structure-ref
                                                             _%$e56696%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object56709%_
                                                            _%var56694%_)
                                                           (_%checked-method?56710%_
                                                            (##direct-structure-ref
                                                             _%$e56696%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?56711%_
                                                            '#f))
                                         (let* ((_%parts5671256720%_
                                                 _%parts56706%_)
                                                (_%else5671456781%_
                                                 (lambda ()
                                                   (let* ((_%g5673256740%_
                                                           (lambda (_%g5673356736%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g5673356736%_)))
                                                          (_%g5673156777%_
                                                           (lambda (_%g5673356744%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%g5673356744%_
                                 (foldr (lambda (_%g5676856771%_
                                                 _%g5676956774%_)
                                          (cons _%g5676856771%_
                                                _%g5676956774%_))
                                        '()
                                        _%g5646856653%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5673156777%_
                                                      _%object56709%_))))
                                                (_%K5671656960%_
                                                 (lambda (_%rest56785%_
                                                          _%part56787%_)
                                                   (if (and (not _%nil-check?56711%_)
                                                            (let ((__tmp101322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part56787%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp101322)))
               (let ((_%str56791%_ (symbol->string _%part56787%_)))
                 (_%loop56703%_
                  (cons (let ((__tmp101323
                               (substring
                                _%str56791%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str56791%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp101323))
                        _%rest56785%_)
                  _%type56708%_
                  _%object56709%_
                  _%checked-method?56710%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type56708%_))
                   (let* ((_%g5679656811%_
                           (lambda (_%g5679756807%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5679756807%_)))
                          (_%g5679556880%_
                           (lambda (_%g5679756815%_)
                             (if (gx#stx-pair? _%g5679756815%_)
                                 (let ((_%e5680056818%_
                                        (gx#syntax-e _%g5679756815%_)))
                                   (let ((_%hd5680156822%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5680056818%_)))
                                         (_%tl5680256825%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5680056818%_))))
                                     (if (gx#stx-pair? _%tl5680256825%_)
                                         (let ((_%e5680356828%_
                                                (gx#syntax-e
                                                 _%tl5680256825%_)))
                                           (let ((_%hd5680456832%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5680356828%_)))
                                                 (_%tl5680556835%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5680356828%_))))
                                             (if (gx#stx-null?
                                                  _%tl5680556835%_)
                                                 (if (null? _%rest56785%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%hd5680456832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%hd5680156822%_ '()))
                         (foldr (lambda (_%g5685956862%_ _%g5686056865%_)
                                  (cons _%g5685956862%_ _%g5686056865%_))
                                '()
                                _%g5646856653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e56868%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type56708%_
                                                             _%part56787%_)))
                                                       (if _%$e56868%_
                                                           (let ((_%slot-type56875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx56444%_
                             _%$e56868%_))))
                     (_%loop56703%_
                      _%rest56785%_
                      _%slot-type56875%_
                      (cons _%hd5680456832%_ (cons _%hd5680156822%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type56708%_
                       _%part56787%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference; unknown type for slot"
                    _%stx56444%_
                    _%g5646956655%_
                    _%part56787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5679656811%_
                                                  _%g5679756815%_))))
                                         (_%g5679656811%_ _%g5679756815%_))))
                                 (_%g5679656811%_ _%g5679756815%_)))))
                     (_%g5679556880%_
                      (list (if _%nil-check?56711%_
                                (cons 'check-nil! (cons _%object56709%_ '()))
                                _%object56709%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx56444%_
                             _%type56708%_
                             _%part56787%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type56708%_))
                       (if (null? _%rest56785%_)
                           (let* ((_%g5688656901%_
                                   (lambda (_%g5688756897%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g5688756897%_)))
                                  (_%g5688556954%_
                                   (lambda (_%g5688756905%_)
                                     (if (gx#stx-pair? _%g5688756905%_)
                                         (let ((_%e5689056908%_
                                                (gx#syntax-e _%g5688756905%_)))
                                           (let ((_%hd5689156912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5689056908%_)))
                                                 (_%tl5689256915%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5689056908%_))))
                                             (if (gx#stx-pair?
                                                  _%tl5689256915%_)
                                                 (let ((_%e5689356918%_
                                                        (gx#syntax-e
                                                         _%tl5689256915%_)))
                                                   (let ((_%hd5689456922%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e5689356918%_)))
                                                         (_%tl5689556925%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e5689356918%_))))
                                                     (if (gx#stx-null?
                                                          _%tl5689556925%_)
                                                         (cons _%hd5689456922%_
                                                               (cons _%hd5689156912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%g5694556948%_ _%g5694656951%_)
                                      (cons _%g5694556948%_ _%g5694656951%_))
                                    '()
                                    _%g5646856653%_)))
                 (_%g5688656901%_ _%g5688756905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5688656901%_
                                                  _%g5688756905%_))))
                                         (_%g5688656901%_ _%g5688756905%_)))))
                             (_%g5688556954%_
                              (list (if _%nil-check?56711%_
                                        (cons 'check-nil!
                                              (cons _%object56709%_ '()))
                                        _%object56709%_)
                                    (gx#stx-identifier
                                     _%g5646956655%_
                                     (if _%checked-method?56710%_ '"" '"&")
                                     (let ((__obj101114 _%type56708%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj101114
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj101114
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj101114
                                            'name)))
                                     '"-"
                                     _%part56787%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx56444%_
                            _%g5646956655%_
                            _%part56787%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx56444%_
                        _%type56708%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%parts5671256720%_)
                                               (let ((_%hd5671756964%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%parts5671256720%_)))
                                                     (_%tl5671856967%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%parts5671256720%_))))
                                                 (let* ((_%part56970%_
                                                         _%hd5671756964%_)
                                                        (_%rest56973%_
                                                         _%tl5671856967%_))
                                                   (_%K5671656960%_
                                                    _%rest56973%_
                                                    _%part56970%_)))
                                               (_%else5671456781%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5646956655%_
                                                   (foldr (lambda (_%g5697756980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5697856983%_)
                    (cons _%g5697756980%_ _%g5697856983%_))
                  '()
                  _%g5646856653%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5667556682%_)
                             (let ((_%hd5667956990%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5667556682%_)))
                                   (_%tl5668056993%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5667556682%_))))
                               (let* ((_%var56996%_ _%hd5667956990%_)
                                      (_%parts56999%_ _%tl5668056993%_))
                                 (_%K5667856986%_
                                  _%parts56999%_
                                  _%var56996%_)))
                             (_%E5667756688%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5646956655%_
                                   (foldr (lambda (_%g5700157004%_
                                                   _%g5700257007%_)
                                            (cons _%g5700157004%_
                                                  _%g5700257007%_))
                                          '()
                                          _%g5646856653%_))))))
                (_%__kont9560695607%_
                 (lambda (_%g5649156554%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5656956572%_ _%g5657056575%_)
                                  (cons _%g5656956572%_ _%g5657056575%_))
                                '()
                                _%g5649156554%_)))))
            (let* ((_%__match9568295683%_
                    (lambda (_%e5649256516%_
                             _%hd5649356520%_
                             _%tl5649456523%_
                             _%__splice9560895609%_
                             _%target5649556526%_
                             _%tl5649756529%_)
                      (letrec ((_%loop5649856532%_
                                (lambda (_%hd5649656536%_ _%arg5650256539%_)
                                  (if (gx#stx-pair? _%hd5649656536%_)
                                      (let ((_%e5649956541%_
                                             (gx#syntax-e _%hd5649656536%_)))
                                        (let ((_%lp-tl5650156548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5649956541%_)))
                                              (_%lp-hd5650056545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5649956541%_))))
                                          (_%loop5649856532%_
                                           _%lp-tl5650156548%_
                                           (cons _%lp-hd5650056545%_
                                                 _%arg5650256539%_))))
                                      (let ((_%arg5650356551%_
                                             (reverse _%arg5650256539%_)))
                                        (_%__kont9560695607%_
                                         _%arg5650356551%_))))))
                        (_%loop5649856532%_ _%target5649556526%_ '()))))
                   (_%__match9566895669%_
                    (lambda (_%e5647056585%_
                             _%hd5647156589%_
                             _%tl5647256592%_
                             _%e5647356595%_
                             _%hd5647456599%_
                             _%tl5647556602%_
                             _%e5647656605%_
                             _%hd5647756609%_
                             _%tl5647856612%_
                             _%e5647956615%_
                             _%hd5648056619%_
                             _%tl5648156622%_
                             _%__splice9560495605%_
                             _%target5648256625%_
                             _%tl5648456628%_)
                      (letrec ((_%loop5648556631%_
                                (lambda (_%hd5648356635%_ _%rand5648956638%_)
                                  (if (gx#stx-pair? _%hd5648356635%_)
                                      (let ((_%e5648656640%_
                                             (gx#syntax-e _%hd5648356635%_)))
                                        (let ((_%lp-tl5648856647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5648656640%_)))
                                              (_%lp-hd5648756644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5648656640%_))))
                                          (_%loop5648556631%_
                                           _%lp-tl5648856647%_
                                           (cons _%lp-hd5648756644%_
                                                 _%rand5648956638%_))))
                                      (let ((_%rand5649056650%_
                                             (reverse _%rand5648956638%_)))
                                        (_%__kont9560295603%_
                                         _%rand5649056650%_
                                         _%hd5648056619%_))))))
                        (_%loop5648556631%_ _%target5648256625%_ '()))))
                   (_%__match9564295643%_
                    (lambda (_%e5647056585%_
                             _%hd5647156589%_
                             _%tl5647256592%_
                             _%e5647356595%_
                             _%hd5647456599%_
                             _%tl5647556602%_)
                      (if (gx#stx-pair? _%hd5647456599%_)
                          (let ((_%e5647656605%_
                                 (gx#syntax-e _%hd5647456599%_)))
                            (let ((_%tl5647856612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5647656605%_)))
                                  (_%hd5647756609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5647656605%_))))
                              (if (gx#identifier? _%hd5647756609%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101324_|
                                       _%hd5647756609%_)
                                      (if (gx#stx-pair? _%tl5647856612%_)
                                          (let ((_%e5647956615%_
                                                 (gx#syntax-e
                                                  _%tl5647856612%_)))
                                            (let ((_%tl5648156622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5647956615%_)))
                                                  (_%hd5648056619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5647956615%_))))
                                              (if (gx#stx-null?
                                                   _%tl5648156622%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5647556602%_)
                                                      (let ((_%__splice9560495605%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5647556602%_
                                                              '0)))
                                                        (let ((_%tl5648456628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9560495605%_ '1)))
                      (_%target5648256625%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9560495605%_ '0))))
                  (if (gx#stx-null? _%tl5648456628%_)
                      (_%__match9566895669%_
                       _%e5647056585%_
                       _%hd5647156589%_
                       _%tl5647256592%_
                       _%e5647356595%_
                       _%hd5647456599%_
                       _%tl5647556602%_
                       _%e5647656605%_
                       _%hd5647756609%_
                       _%tl5647856612%_
                       _%e5647956615%_
                       _%hd5648056619%_
                       _%tl5648156622%_
                       _%__splice9560495605%_
                       _%target5648256625%_
                       _%tl5648456628%_)
                      (if (gx#stx-pair/null? _%tl5647256592%_)
                          (let ((_%__splice9560895609%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5647256592%_
                                  '0)))
                            (let ((_%tl5649756529%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9560895609%_ '1)))
                                  (_%target5649556526%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9560895609%_
                                      '0))))
                              (if (gx#stx-null? _%tl5649756529%_)
                                  (_%__match9568295683%_
                                   _%e5647056585%_
                                   _%hd5647156589%_
                                   _%tl5647256592%_
                                   _%__splice9560895609%_
                                   _%target5649556526%_
                                   _%tl5649756529%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5644956509%_)))))
                          (let () (declare (not safe)) (_%g5644956509%_))))))
              (if (gx#stx-pair/null? _%tl5647256592%_)
                  (let ((_%__splice9560895609%_
                         (gx#syntax-split-splice->vector _%tl5647256592%_ '0)))
                    (let ((_%tl5649756529%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '1)))
                          (_%target5649556526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '0))))
                      (if (gx#stx-null? _%tl5649756529%_)
                          (_%__match9568295683%_
                           _%e5647056585%_
                           _%hd5647156589%_
                           _%tl5647256592%_
                           _%__splice9560895609%_
                           _%target5649556526%_
                           _%tl5649756529%_)
                          (let () (declare (not safe)) (_%g5644956509%_)))))
                  (let () (declare (not safe)) (_%g5644956509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5647256592%_)
                                                      (let ((_%__splice9560895609%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5647256592%_
                                                              '0)))
                                                        (let ((_%tl5649756529%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9560895609%_ '1)))
                      (_%target5649556526%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9560895609%_ '0))))
                  (if (gx#stx-null? _%tl5649756529%_)
                      (_%__match9568295683%_
                       _%e5647056585%_
                       _%hd5647156589%_
                       _%tl5647256592%_
                       _%__splice9560895609%_
                       _%target5649556526%_
                       _%tl5649756529%_)
                      (let () (declare (not safe)) (_%g5644956509%_)))))
              (let () (declare (not safe)) (_%g5644956509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5647256592%_)
                                              (let ((_%__splice9560895609%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5647256592%_
                                                      '0)))
                                                (let ((_%tl5649756529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9560895609%_
                                                          '1)))
                                                      (_%target5649556526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9560895609%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5649756529%_)
                                                      (_%__match9568295683%_
                                                       _%e5647056585%_
                                                       _%hd5647156589%_
                                                       _%tl5647256592%_
                                                       _%__splice9560895609%_
                                                       _%target5649556526%_
                                                       _%tl5649756529%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5644956509%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5644956509%_))))
                                      (if (gx#stx-pair/null? _%tl5647256592%_)
                                          (let ((_%__splice9560895609%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5647256592%_
                                                  '0)))
                                            (let ((_%tl5649756529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9560895609%_
                                                      '1)))
                                                  (_%target5649556526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9560895609%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5649756529%_)
                                                  (_%__match9568295683%_
                                                   _%e5647056585%_
                                                   _%hd5647156589%_
                                                   _%tl5647256592%_
                                                   _%__splice9560895609%_
                                                   _%target5649556526%_
                                                   _%tl5649756529%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5644956509%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5644956509%_))))
                                  (if (gx#stx-pair/null? _%tl5647256592%_)
                                      (let ((_%__splice9560895609%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5647256592%_
                                              '0)))
                                        (let ((_%tl5649756529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9560895609%_
                                                  '1)))
                                              (_%target5649556526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9560895609%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5649756529%_)
                                              (_%__match9568295683%_
                                               _%e5647056585%_
                                               _%hd5647156589%_
                                               _%tl5647256592%_
                                               _%__splice9560895609%_
                                               _%target5649556526%_
                                               _%tl5649756529%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5644956509%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5644956509%_))))))
                          (if (gx#stx-pair/null? _%tl5647256592%_)
                              (let ((_%__splice9560895609%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5647256592%_
                                      '0)))
                                (let ((_%tl5649756529%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '1)))
                                      (_%target5649556526%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5649756529%_)
                                      (_%__match9568295683%_
                                       _%e5647056585%_
                                       _%hd5647156589%_
                                       _%tl5647256592%_
                                       _%__splice9560895609%_
                                       _%target5649556526%_
                                       _%tl5649756529%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5644956509%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5644956509%_))))))
                   (_%__match9563095631%_
                    (lambda (_%e5645357017%_
                             _%hd5645457021%_
                             _%tl5645557024%_
                             _%e5645657027%_
                             _%hd5645757031%_
                             _%tl5645857034%_
                             _%__splice9560095601%_
                             _%target5645957037%_
                             _%tl5646157040%_)
                      (letrec ((_%loop5646257043%_
                                (lambda (_%hd5646057047%_ _%rand5646657050%_)
                                  (if (gx#stx-pair? _%hd5646057047%_)
                                      (let ((_%e5646357052%_
                                             (gx#syntax-e _%hd5646057047%_)))
                                        (let ((_%lp-tl5646557059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5646357052%_)))
                                              (_%lp-hd5646457056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5646357052%_))))
                                          (_%loop5646257043%_
                                           _%lp-tl5646557059%_
                                           (cons _%lp-hd5646457056%_
                                                 _%rand5646657050%_))))
                                      (let ((_%rand5646757062%_
                                             (reverse _%rand5646657050%_)))
                                        (let ((_%g5645157065%_
                                               _%rand5646757062%_)
                                              (_%g5645257067%_
                                               _%hd5645757031%_))
                                          (if (gx#identifier? _%g5645257067%_)
                                              (_%__kont9559895599%_
                                               _%g5645157065%_
                                               _%g5645257067%_)
                                              (_%__match9564295643%_
                                               _%e5645357017%_
                                               _%hd5645457021%_
                                               _%tl5645557024%_
                                               _%e5645657027%_
                                               _%hd5645757031%_
                                               _%tl5645857034%_))))))))
                        (_%loop5646257043%_ _%target5645957037%_ '())))))
              (if (gx#stx-pair? _%__stx9559595596%_)
                  (let ((_%e5645357017%_ (gx#syntax-e _%__stx9559595596%_)))
                    (let ((_%tl5645557024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5645357017%_)))
                          (_%hd5645457021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5645357017%_))))
                      (if (gx#stx-pair? _%tl5645557024%_)
                          (let ((_%e5645657027%_
                                 (gx#syntax-e _%tl5645557024%_)))
                            (let ((_%tl5645857034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5645657027%_)))
                                  (_%hd5645757031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5645657027%_))))
                              (if (gx#stx-pair/null? _%tl5645857034%_)
                                  (let ((_%__splice9560095601%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5645857034%_
                                          '0)))
                                    (let ((_%tl5646157040%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9560095601%_
                                              '1)))
                                          (_%target5645957037%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9560095601%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5646157040%_)
                                          (_%__match9563095631%_
                                           _%e5645357017%_
                                           _%hd5645457021%_
                                           _%tl5645557024%_
                                           _%e5645657027%_
                                           _%hd5645757031%_
                                           _%tl5645857034%_
                                           _%__splice9560095601%_
                                           _%target5645957037%_
                                           _%tl5646157040%_)
                                          (if (gx#stx-pair? _%hd5645757031%_)
                                              (let ((_%e5647656605%_
                                                     (gx#syntax-e
                                                      _%hd5645757031%_)))
                                                (let ((_%tl5647856612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5647656605%_)))
                                                      (_%hd5647756609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5647656605%_))))
                                                  (if (gx#identifier?
                                                       _%hd5647756609%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101324_|
                                                           _%hd5647756609%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5647856612%_)
                                                              (let ((_%e5647956615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5647856612%_)))
                        (let ((_%tl5648156622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5647956615%_)))
                              (_%hd5648056619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5647956615%_))))
                          (if (gx#stx-pair/null? _%tl5645557024%_)
                              (let ((_%__splice9560895609%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5645557024%_
                                      '0)))
                                (let ((_%tl5649756529%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '1)))
                                      (_%target5649556526%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5649756529%_)
                                      (_%__match9568295683%_
                                       _%e5645357017%_
                                       _%hd5645457021%_
                                       _%tl5645557024%_
                                       _%__splice9560895609%_
                                       _%target5649556526%_
                                       _%tl5649756529%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5644956509%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5644956509%_)))))
                      (if (gx#stx-pair/null? _%tl5645557024%_)
                          (let ((_%__splice9560895609%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5645557024%_
                                  '0)))
                            (let ((_%tl5649756529%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9560895609%_ '1)))
                                  (_%target5649556526%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9560895609%_
                                      '0))))
                              (if (gx#stx-null? _%tl5649756529%_)
                                  (_%__match9568295683%_
                                   _%e5645357017%_
                                   _%hd5645457021%_
                                   _%tl5645557024%_
                                   _%__splice9560895609%_
                                   _%target5649556526%_
                                   _%tl5649756529%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5644956509%_)))))
                          (let () (declare (not safe)) (_%g5644956509%_))))
                  (if (gx#stx-pair/null? _%tl5645557024%_)
                      (let ((_%__splice9560895609%_
                             (gx#syntax-split-splice->vector
                              _%tl5645557024%_
                              '0)))
                        (let ((_%tl5649756529%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9560895609%_ '1)))
                              (_%target5649556526%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9560895609%_ '0))))
                          (if (gx#stx-null? _%tl5649756529%_)
                              (_%__match9568295683%_
                               _%e5645357017%_
                               _%hd5645457021%_
                               _%tl5645557024%_
                               _%__splice9560895609%_
                               _%target5649556526%_
                               _%tl5649756529%_)
                              (let ()
                                (declare (not safe))
                                (_%g5644956509%_)))))
                      (let () (declare (not safe)) (_%g5644956509%_))))
              (if (gx#stx-pair/null? _%tl5645557024%_)
                  (let ((_%__splice9560895609%_
                         (gx#syntax-split-splice->vector _%tl5645557024%_ '0)))
                    (let ((_%tl5649756529%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '1)))
                          (_%target5649556526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '0))))
                      (if (gx#stx-null? _%tl5649756529%_)
                          (_%__match9568295683%_
                           _%e5645357017%_
                           _%hd5645457021%_
                           _%tl5645557024%_
                           _%__splice9560895609%_
                           _%target5649556526%_
                           _%tl5649756529%_)
                          (let () (declare (not safe)) (_%g5644956509%_)))))
                  (let () (declare (not safe)) (_%g5644956509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5645557024%_)
                                                  (let ((_%__splice9560895609%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5645557024%_
                                                          '0)))
                                                    (let ((_%tl5649756529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9560895609%_
                                                              '1)))
                                                          (_%target5649556526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9560895609%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5649756529%_)
                                                          (_%__match9568295683%_
                                                           _%e5645357017%_
                                                           _%hd5645457021%_
                                                           _%tl5645557024%_
                                                           _%__splice9560895609%_
                                                           _%target5649556526%_
                                                           _%tl5649756529%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5644956509%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5644956509%_)))))))
                                  (if (gx#stx-pair? _%hd5645757031%_)
                                      (let ((_%e5647656605%_
                                             (gx#syntax-e _%hd5645757031%_)))
                                        (let ((_%tl5647856612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5647656605%_)))
                                              (_%hd5647756609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5647656605%_))))
                                          (if (gx#identifier? _%hd5647756609%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g101324_|
                                                   _%hd5647756609%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5647856612%_)
                                                      (let ((_%e5647956615%_
                                                             (gx#syntax-e
                                                              _%tl5647856612%_)))
                                                        (let ((_%tl5648156622%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5647956615%_)))
                      (_%hd5648056619%_
                       (let () (declare (not safe)) (##car _%e5647956615%_))))
                  (if (gx#stx-pair/null? _%tl5645557024%_)
                      (let ((_%__splice9560895609%_
                             (gx#syntax-split-splice->vector
                              _%tl5645557024%_
                              '0)))
                        (let ((_%tl5649756529%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9560895609%_ '1)))
                              (_%target5649556526%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9560895609%_ '0))))
                          (if (gx#stx-null? _%tl5649756529%_)
                              (_%__match9568295683%_
                               _%e5645357017%_
                               _%hd5645457021%_
                               _%tl5645557024%_
                               _%__splice9560895609%_
                               _%target5649556526%_
                               _%tl5649756529%_)
                              (let ()
                                (declare (not safe))
                                (_%g5644956509%_)))))
                      (let () (declare (not safe)) (_%g5644956509%_)))))
              (if (gx#stx-pair/null? _%tl5645557024%_)
                  (let ((_%__splice9560895609%_
                         (gx#syntax-split-splice->vector _%tl5645557024%_ '0)))
                    (let ((_%tl5649756529%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '1)))
                          (_%target5649556526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9560895609%_ '0))))
                      (if (gx#stx-null? _%tl5649756529%_)
                          (_%__match9568295683%_
                           _%e5645357017%_
                           _%hd5645457021%_
                           _%tl5645557024%_
                           _%__splice9560895609%_
                           _%target5649556526%_
                           _%tl5649756529%_)
                          (let () (declare (not safe)) (_%g5644956509%_)))))
                  (let () (declare (not safe)) (_%g5644956509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5645557024%_)
                                                      (let ((_%__splice9560895609%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5645557024%_
                                                              '0)))
                                                        (let ((_%tl5649756529%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9560895609%_ '1)))
                      (_%target5649556526%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9560895609%_ '0))))
                  (if (gx#stx-null? _%tl5649756529%_)
                      (_%__match9568295683%_
                       _%e5645357017%_
                       _%hd5645457021%_
                       _%tl5645557024%_
                       _%__splice9560895609%_
                       _%target5649556526%_
                       _%tl5649756529%_)
                      (let () (declare (not safe)) (_%g5644956509%_)))))
              (let () (declare (not safe)) (_%g5644956509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5645557024%_)
                                                  (let ((_%__splice9560895609%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5645557024%_
                                                          '0)))
                                                    (let ((_%tl5649756529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9560895609%_
                                                              '1)))
                                                          (_%target5649556526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9560895609%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5649756529%_)
                                                          (_%__match9568295683%_
                                                           _%e5645357017%_
                                                           _%hd5645457021%_
                                                           _%tl5645557024%_
                                                           _%__splice9560895609%_
                                                           _%target5649556526%_
                                                           _%tl5649756529%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5644956509%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5644956509%_))))))
                                      (if (gx#stx-pair/null? _%tl5645557024%_)
                                          (let ((_%__splice9560895609%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5645557024%_
                                                  '0)))
                                            (let ((_%tl5649756529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9560895609%_
                                                      '1)))
                                                  (_%target5649556526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9560895609%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5649756529%_)
                                                  (_%__match9568295683%_
                                                   _%e5645357017%_
                                                   _%hd5645457021%_
                                                   _%tl5645557024%_
                                                   _%__splice9560895609%_
                                                   _%target5649556526%_
                                                   _%tl5649756529%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5644956509%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5644956509%_)))))))
                          (if (gx#stx-pair/null? _%tl5645557024%_)
                              (let ((_%__splice9560895609%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5645557024%_
                                      '0)))
                                (let ((_%tl5649756529%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '1)))
                                      (_%target5649556526%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9560895609%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5649756529%_)
                                      (_%__match9568295683%_
                                       _%e5645357017%_
                                       _%hd5645457021%_
                                       _%tl5645557024%_
                                       _%__splice9560895609%_
                                       _%target5649556526%_
                                       _%tl5649756529%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5644956509%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5644956509%_))))))
                  (let () (declare (not safe)) (_%g5644956509%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx57099%_)
        (let* ((_%__stx9568595686%_ _%stx57099%_)
               (_%g5710357124%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9568595686%_))))
          (let ((_%__kont9568895689%_
                 (lambda (_%g5710557192%_)
                   (let* ((_%g5720457211%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57099%_
                            _%g5710557192%_))
                          (_%E5720657217%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5720457211%_
                                    '([var . parts]))
                             (void)))
                          (_%K5720757433%_
                           (lambda (_%parts57221%_ _%var57223%_)
                             (let ((_%$e57225%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57223%_))))
                               (if _%$e57225%_
                                   (let _%loop57232%_ ((_%parts57235%_
                                                        _%parts57221%_)
                                                       (_%type57237%_
                                                        (##direct-structure-ref
                                                         _%$e57225%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57238%_
                                                        _%var57223%_)
                                                       (_%nil-check?57239%_
                                                        '#f))
                                     (let* ((_%parts5724057248%_
                                             _%parts57235%_)
                                            (_%else5724257260%_
                                             (lambda () _%object57238%_))
                                            (_%K5724457415%_
                                             (lambda (_%rest57264%_
                                                      _%part57266%_)
                                               (if (and (not _%nil-check?57239%_)
                                                        (let ((__tmp101325
                                                               (symbol->string
                                                                _%part57266%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101325)))
                                                   (let ((_%str57270%_
                                                          (symbol->string
                                                           _%part57266%_)))
                                                     (_%loop57232%_
                                                      (cons (let ((__tmp101326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57270%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57270%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101326))
                    _%rest57264%_)
              _%type57237%_
              _%object57238%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57237%_))
                                                       (let* ((_%g5727557290%_
                                                               (lambda (_%g5727657286%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g5727657286%_)))
                      (_%g5727457407%_
                       (lambda (_%g5727657294%_)
                         (if (gx#stx-pair? _%g5727657294%_)
                             (let ((_%e5727957297%_
                                    (gx#syntax-e _%g5727657294%_)))
                               (let ((_%hd5728057301%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5727957297%_)))
                                     (_%tl5728157304%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5727957297%_))))
                                 (if (gx#stx-pair? _%tl5728157304%_)
                                     (let ((_%e5728257307%_
                                            (gx#syntax-e _%tl5728157304%_)))
                                       (let ((_%hd5728357311%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5728257307%_)))
                                             (_%tl5728457314%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5728257307%_))))
                                         (if (gx#stx-null? _%tl5728457314%_)
                                             (if (null? _%rest57264%_)
                                                 (let ((_%$e57349%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57237%_
                                                         _%part57266%_)))
                                                   (if _%$e57349%_
                                                       (let* ((_%g5735657364%_
                                                               (lambda (_%g5735757360%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g5735757360%_)))
                      (_%g5735557387%_
                       (lambda (_%g5735757368%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%g5735757368%_ '()))
                                     (cons (cons _%hd5728357311%_
                                                 (cons _%hd5728057301%_ '()))
                                           '()))))))
                 (_%g5735557387%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx57099%_
                     _%$e57349%_))))
               (if _%nil-check?57239%_
                   (cons _%hd5728357311%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%hd5728057301%_ '()))
                               '()))
                   (cons _%hd5728357311%_ (cons _%hd5728057301%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e57395%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57237%_
                                                         _%part57266%_)))
                                                   (if _%$e57395%_
                                                       (let ((_%type57402%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx57099%_
                         _%$e57395%_))))
                 (if _%nil-check?57239%_
                     (_%loop57232%_
                      _%rest57264%_
                      _%type57402%_
                      (cons _%hd5728357311%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%hd5728057301%_ '()))
                                  '()))
                      '#f)
                     (_%loop57232%_
                      _%rest57264%_
                      _%type57402%_
                      (cons _%hd5728357311%_ (cons _%hd5728057301%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx57099%_
                _%g5710557192%_
                _%part57266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g5727557290%_
                                              _%g5727657294%_))))
                                     (_%g5727557290%_ _%g5727657294%_))))
                             (_%g5727557290%_ _%g5727657294%_)))))
                 (_%g5727457407%_
                  (list (if _%nil-check?57239%_
                            (cons 'check-nil! (cons _%object57238%_ '()))
                            _%object57238%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx57099%_
                         _%type57237%_
                         _%part57266%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57237%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57099%_
                    _%type57237%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%parts5724057248%_)
                                           (let ((_%hd5724557419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%parts5724057248%_)))
                                                 (_%tl5724657422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%parts5724057248%_))))
                                             (let* ((_%part57425%_
                                                     _%hd5724557419%_)
                                                    (_%rest57428%_
                                                     _%tl5724657422%_))
                                               (_%K5724457415%_
                                                _%rest57428%_
                                                _%part57425%_)))
                                           (_%else5724257260%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5710557192%_ '())))))))
                     (if (pair? _%g5720457211%_)
                         (let ((_%hd5720857437%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5720457211%_)))
                               (_%tl5720957440%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5720457211%_))))
                           (let* ((_%var57443%_ _%hd5720857437%_)
                                  (_%parts57446%_ _%tl5720957440%_))
                             (_%K5720757433%_ _%parts57446%_ _%var57443%_)))
                         (_%E5720657217%_)))))
                (_%__kont9569095691%_
                 (lambda (_%g5711257151%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5711257151%_ '())))))
            (let ((_%__match9570695707%_
                   (lambda (_%e5710657172%_
                            _%hd5710757176%_
                            _%tl5710857179%_
                            _%e5710957182%_
                            _%hd5711057186%_
                            _%tl5711157189%_)
                     (let ((_%g5710557192%_ _%hd5711057186%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5710557192%_)
                           (_%__kont9568895689%_ _%g5710557192%_)
                           (_%__kont9569095691%_ _%hd5711057186%_))))))
              (if (gx#stx-pair? _%__stx9568595686%_)
                  (let ((_%e5710657172%_ (gx#syntax-e _%__stx9568595686%_)))
                    (let ((_%tl5710857179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5710657172%_)))
                          (_%hd5710757176%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5710657172%_))))
                      (if (gx#stx-pair? _%tl5710857179%_)
                          (let ((_%e5710957182%_
                                 (gx#syntax-e _%tl5710857179%_)))
                            (let ((_%tl5711157189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5710957182%_)))
                                  (_%hd5711057186%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5710957182%_))))
                              (if (gx#stx-null? _%tl5711157189%_)
                                  (_%__match9570695707%_
                                   _%e5710657172%_
                                   _%hd5710757176%_
                                   _%tl5710857179%_
                                   _%e5710957182%_
                                   _%hd5711057186%_
                                   _%tl5711157189%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5710357124%_)))))
                          (let () (declare (not safe)) (_%g5710357124%_)))))
                  (let () (declare (not safe)) (_%g5710357124%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57453%_)
        (let* ((_%__stx9572395724%_ _%stx57453%_)
               (_%g5745757486%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9572395724%_))))
          (let ((_%__kont9572695727%_
                 (lambda (_%g5745957578%_ _%g5746057580%_)
                   (let* ((_%g5759457601%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57453%_
                            _%g5746057580%_))
                          (_%E5759657607%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5759457601%_
                                    '([var . parts]))
                             (void)))
                          (_%K5759757837%_
                           (lambda (_%parts57611%_ _%var57613%_)
                             (let ((_%$e57615%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57613%_))))
                               (if _%$e57615%_
                                   (let _%loop57622%_ ((_%parts57625%_
                                                        _%parts57611%_)
                                                       (_%type57627%_
                                                        (##direct-structure-ref
                                                         _%$e57615%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57628%_
                                                        _%var57613%_)
                                                       (_%checked-mutator?57629%_
                                                        (##direct-structure-ref
                                                         _%$e57615%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?57630%_
                                                        '#f))
                                     (let* ((_%parts5763157638%_
                                             _%parts57625%_)
                                            (_%E5763357644%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%parts5763157638%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%K5763457819%_
                                             (lambda (_%rest57648%_
                                                      _%part57650%_)
                                               (if (and (not _%nil-check?57630%_)
                                                        (let ((__tmp101327
                                                               (symbol->string
                                                                _%part57650%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101327)))
                                                   (let ((_%str57654%_
                                                          (symbol->string
                                                           _%part57650%_)))
                                                     (_%loop57622%_
                                                      (cons (let ((__tmp101328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57654%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57654%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101328))
                    _%rest57648%_)
              _%type57627%_
              _%object57628%_
              _%checked-mutator?57629%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57627%_))
                                                       (if (null? _%rest57648%_)
                                                           (let* ((_%g5766157676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5766257672%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5766257672%_)))
                          (_%g5766057733%_
                           (lambda (_%g5766257680%_)
                             (if (gx#stx-pair? _%g5766257680%_)
                                 (let ((_%e5766557683%_
                                        (gx#syntax-e _%g5766257680%_)))
                                   (let ((_%hd5766657687%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5766557683%_)))
                                         (_%tl5766757690%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5766557683%_))))
                                     (if (gx#stx-pair? _%tl5766757690%_)
                                         (let ((_%e5766857693%_
                                                (gx#syntax-e
                                                 _%tl5766757690%_)))
                                           (let ((_%hd5766957697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5766857693%_)))
                                                 (_%tl5767057700%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5766857693%_))))
                                             (if (gx#stx-null?
                                                  _%tl5767057700%_)
                                                 (if _%nil-check?57630%_
                                                     (cons _%hd5766957697%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%hd5766657687%_ '()))
                         (cons _%g5745957578%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%hd5766957697%_
                                                           (cons _%hd5766657687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5745957578%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5766157676%_
                                                  _%g5766257680%_))))
                                         (_%g5766157676%_ _%g5766257680%_))))
                                 (_%g5766157676%_ _%g5766257680%_)))))
                     (_%g5766057733%_
                      (list _%object57628%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx57453%_
                             _%type57627%_
                             _%part57650%_
                             (if _%checked-mutator?57629%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type57627%_
                                  _%part57650%_)
                                 '#f)))))
                   (let ((_%$e57737%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type57627%_
                           _%part57650%_)))
                     (if _%$e57737%_
                         (let* ((_%type57744%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx57453%_
                                    _%$e57737%_)))
                                (_%g5774757762%_
                                 (lambda (_%g5774857758%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5774857758%_)))
                                (_%g5774657809%_
                                 (lambda (_%g5774857766%_)
                                   (if (gx#stx-pair? _%g5774857766%_)
                                       (let ((_%e5775157769%_
                                              (gx#syntax-e _%g5774857766%_)))
                                         (let ((_%hd5775257773%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5775157769%_)))
                                               (_%tl5775357776%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5775157769%_))))
                                           (if (gx#stx-pair? _%tl5775357776%_)
                                               (let ((_%e5775457779%_
                                                      (gx#syntax-e
                                                       _%tl5775357776%_)))
                                                 (let ((_%hd5775557783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5775457779%_)))
                                                       (_%tl5775657786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5775457779%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5775657786%_)
                                                       (_%loop57622%_
                                                        _%rest57648%_
                                                        _%type57744%_
                                                        (cons _%hd5775557783%_
                                                              (cons _%hd5775257773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type57744%_
                 _%part57650%_)
                '#f)
               (_%g5774757762%_ _%g5774857766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5774757762%_
                                                _%g5774857766%_))))
                                       (_%g5774757762%_ _%g5774857766%_)))))
                           (_%g5774657809%_
                            (list (if _%nil-check?57630%_
                                      (cons 'check-nil!
                                            (cons _%object57628%_ '()))
                                      _%object57628%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx57453%_
                                   _%type57744%_
                                   _%part57650%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx57453%_
                          _%g5746057580%_
                          _%part57650%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57627%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57453%_
                    _%type57627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%parts5763157638%_)
                                           (let ((_%hd5763557823%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%parts5763157638%_)))
                                                 (_%tl5763657826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%parts5763157638%_))))
                                             (let* ((_%part57829%_
                                                     _%hd5763557823%_)
                                                    (_%rest57832%_
                                                     _%tl5763657826%_))
                                               (_%K5763457819%_
                                                _%rest57832%_
                                                _%part57829%_)))
                                           (_%E5763357644%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57453%_)))))))
                     (if (pair? _%g5759457601%_)
                         (let ((_%hd5759857841%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5759457601%_)))
                               (_%tl5759957844%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5759457601%_))))
                           (let* ((_%var57847%_ _%hd5759857841%_)
                                  (_%parts57850%_ _%tl5759957844%_))
                             (_%K5759757837%_ _%parts57850%_ _%var57847%_)))
                         (_%E5759657607%_)))))
                (_%__kont9572895729%_
                 (lambda (_%g5747057523%_ _%g5747157525%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57453%_)))))
            (let ((_%__match9575095751%_
                   (lambda (_%e5746157548%_
                            _%hd5746257552%_
                            _%tl5746357555%_
                            _%e5746457558%_
                            _%hd5746557562%_
                            _%tl5746657565%_
                            _%e5746757568%_
                            _%hd5746857572%_
                            _%tl5746957575%_)
                     (let ((_%g5745957578%_ _%hd5746857572%_)
                           (_%g5746057580%_ _%hd5746557562%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5746057580%_)
                           (_%__kont9572695727%_
                            _%g5745957578%_
                            _%g5746057580%_)
                           (_%__kont9572895729%_
                            _%hd5746857572%_
                            _%hd5746557562%_))))))
              (if (gx#stx-pair? _%__stx9572395724%_)
                  (let ((_%e5746157548%_ (gx#syntax-e _%__stx9572395724%_)))
                    (let ((_%tl5746357555%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5746157548%_)))
                          (_%hd5746257552%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5746157548%_))))
                      (if (gx#stx-pair? _%tl5746357555%_)
                          (let ((_%e5746457558%_
                                 (gx#syntax-e _%tl5746357555%_)))
                            (let ((_%tl5746657565%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5746457558%_)))
                                  (_%hd5746557562%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5746457558%_))))
                              (if (gx#stx-pair? _%tl5746657565%_)
                                  (let ((_%e5746757568%_
                                         (gx#syntax-e _%tl5746657565%_)))
                                    (let ((_%tl5746957575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5746757568%_)))
                                          (_%hd5746857572%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5746757568%_))))
                                      (if (gx#stx-null? _%tl5746957575%_)
                                          (_%__match9575095751%_
                                           _%e5746157548%_
                                           _%hd5746257552%_
                                           _%tl5746357555%_
                                           _%e5746457558%_
                                           _%hd5746557562%_
                                           _%tl5746657565%_
                                           _%e5746757568%_
                                           _%hd5746857572%_
                                           _%tl5746957575%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5745757486%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5745757486%_)))))
                          (let () (declare (not safe)) (_%g5745757486%_)))))
                  (let () (declare (not safe)) (_%g5745757486%_))))))))))

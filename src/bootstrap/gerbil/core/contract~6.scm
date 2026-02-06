(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g97503_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97504_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97505_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97508_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97509_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97512_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97513_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97514_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97515_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97519_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97520_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97521_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97522_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g97526_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51000%_)
        (let* ((_%__stx9121991220%_ _%stx51000%_)
               (_%g5100951218%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9121991220%_))))
          (let ((_%__kont9122291223%_
                 (lambda (_%g5101152110%_
                          _%g5101252112%_
                          _%g5101352113%_
                          _%g5101452114%_
                          _%g5101552115%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5101552115%_
                                     (cons _%g5101452114%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5101552115%_
                                                       (cons _%g5101352113%_
                                                             (cons _%g5101252112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5215852161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5215952164%_)
                  (cons _%g5215852161%_ _%g5215952164%_))
                '()
                _%g5101152110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9122691227%_
                 (lambda (_%g5104351956%_
                          _%g5104451958%_
                          _%g5104551959%_
                          _%g5104651960%_
                          _%g5104751961%_
                          _%g5104851962%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5104851962%_
                                     (cons _%g5104751961%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5104851962%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5104651960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5104851962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5104551959%_
                                       (cons _%g5104451958%_ '())))
                           (foldr (lambda (_%g5200652009%_ _%g5200752012%_)
                                    (cons _%g5200652009%_ _%g5200752012%_))
                                  '()
                                  _%g5104351956%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9123091231%_
                 (lambda (_%g5108251775%_
                          _%g5108351777%_
                          _%g5108451778%_
                          _%g5108551779%_)
                   (let ((_%meta51816%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51000%_
                             _%g5108351777%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta51816%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5108551779%_
                                           (cons _%g5108451778%_
                                                 (cons _%g5108351777%_ '())))
                                     (foldr (lambda (_%g5182051823%_
                                                     _%g5182151826%_)
                                              (cons _%g5182051823%_
                                                    _%g5182151826%_))
                                            '()
                                            _%g5108251775%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta51816%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5108551779%_
                                               (cons _%g5108451778%_
                                                     (cons _%g5108351777%_
                                                           '())))
                                         (foldr (lambda (_%g5183051833%_
                                                         _%g5183151836%_)
                                                  (cons _%g5183051833%_
                                                        _%g5183151836%_))
                                                '()
                                                _%g5108251775%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51000%_
                              _%g5108351777%_
                              _%meta51816%_))))))
                (_%__kont9123491235%_
                 (lambda (_%g5111051655%_ _%g5111151657%_ _%g5111251658%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5111251658%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5111151657%_ '())))
                               (foldr (lambda (_%g5168151684%_ _%g5168251687%_)
                                        (cons _%g5168151684%_ _%g5168251687%_))
                                      '()
                                      _%g5111051655%_)))))
                (_%__kont9123891239%_
                 (lambda (_%g5113751515%_
                          _%g5113851517%_
                          _%g5113951518%_
                          _%g5114051519%_
                          _%g5114151520%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5114151520%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5114051519%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5114151520%_
                                                       (cons _%g5113951518%_
                                                             (cons _%g5113851517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5156151564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5156251567%_)
                  (cons _%g5156151564%_ _%g5156251567%_))
                '()
                _%g5113751515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9124291243%_
                 (lambda (_%g5117251375%_
                          _%g5117351377%_
                          _%g5117451378%_
                          _%g5117551379%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5117551379%_ _%g5117451378%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5117351377%_
                                                 (foldr (lambda (_%g5140151404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5140251407%_)
                  (cons _%g5140151404%_ _%g5140251407%_))
                '()
                _%g5117251375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9124691247%_
                 (lambda (_%g5119751273%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5129151294%_ _%g5129251297%_)
                                        (cons _%g5129151294%_ _%g5129251297%_))
                                      '()
                                      _%g5119751273%_))))))
            (let* ((_%__match9155291553%_
                    (lambda (_%e5119851225%_
                             _%hd5119951229%_
                             _%tl5120051232%_
                             _%e5120151235%_
                             _%hd5120251239%_
                             _%tl5120351242%_
                             _%__splice9124891249%_
                             _%target5120451245%_
                             _%tl5120651248%_)
                      (letrec ((_%loop5120751251%_
                                (lambda (_%hd5120551255%_ _%body5121151258%_)
                                  (if (gx#stx-pair? _%hd5120551255%_)
                                      (let ((_%e5120851260%_
                                             (gx#syntax-e _%hd5120551255%_)))
                                        (let ((_%lp-tl5121051267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5120851260%_)))
                                              (_%lp-hd5120951264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5120851260%_))))
                                          (_%loop5120751251%_
                                           _%lp-tl5121051267%_
                                           (cons _%lp-hd5120951264%_
                                                 _%body5121151258%_))))
                                      (let ((_%body5121251270%_
                                             (reverse _%body5121151258%_)))
                                        (_%__kont9124691247%_
                                         _%body5121251270%_))))))
                        (_%loop5120751251%_ _%target5120451245%_ '()))))
                   (_%__match9153091531%_
                    (lambda (_%e5117651307%_
                             _%hd5117751311%_
                             _%tl5117851314%_
                             _%e5117951317%_
                             _%hd5118051321%_
                             _%tl5118151324%_
                             _%e5118251327%_
                             _%hd5118351331%_
                             _%tl5118451334%_
                             _%e5118551337%_
                             _%hd5118651341%_
                             _%tl5118751344%_
                             _%__splice9124491245%_
                             _%target5118851347%_
                             _%tl5119051350%_)
                      (letrec ((_%loop5119151353%_
                                (lambda (_%hd5118951357%_ _%body5119551360%_)
                                  (if (gx#stx-pair? _%hd5118951357%_)
                                      (let ((_%e5119251362%_
                                             (gx#syntax-e _%hd5118951357%_)))
                                        (let ((_%lp-tl5119451369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5119251362%_)))
                                              (_%lp-hd5119351366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5119251362%_))))
                                          (_%loop5119151353%_
                                           _%lp-tl5119451369%_
                                           (cons _%lp-hd5119351366%_
                                                 _%body5119551360%_))))
                                      (let ((_%body5119651372%_
                                             (reverse _%body5119551360%_)))
                                        (let ((_%g5117251375%_
                                               _%body5119651372%_)
                                              (_%g5117351377%_
                                               _%tl5118451334%_)
                                              (_%g5117451378%_
                                               _%tl5118751344%_)
                                              (_%g5117551379%_
                                               _%hd5118651341%_))
                                          (if (gx#identifier? _%g5117551379%_)
                                              (_%__kont9124291243%_
                                               _%g5117251375%_
                                               _%g5117351377%_
                                               _%g5117451378%_
                                               _%g5117551379%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_)))))))))
                        (_%loop5119151353%_ _%target5118851347%_ '()))))
                   (_%__match9151691517%_
                    (lambda (_%e5117651307%_
                             _%hd5117751311%_
                             _%tl5117851314%_
                             _%e5117951317%_
                             _%hd5118051321%_
                             _%tl5118151324%_
                             _%e5118251327%_
                             _%hd5118351331%_
                             _%tl5118451334%_)
                      (if (gx#stx-pair? _%hd5118351331%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5118351331%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (if (gx#stx-pair/null? _%tl5118151324%_)
                                  (let ((_%__splice9124491245%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5118151324%_
                                          '0)))
                                    (let ((_%tl5119051350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '1)))
                                          (_%target5118851347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5119051350%_)
                                          (_%__match9153091531%_
                                           _%e5117651307%_
                                           _%hd5117751311%_
                                           _%tl5117851314%_
                                           _%e5117951317%_
                                           _%hd5118051321%_
                                           _%tl5118151324%_
                                           _%e5118251327%_
                                           _%hd5118351331%_
                                           _%tl5118451334%_
                                           _%e5118551337%_
                                           _%hd5118651341%_
                                           _%tl5118751344%_
                                           _%__splice9124491245%_
                                           _%target5118851347%_
                                           _%tl5119051350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                   (_%__match9149891499%_
                    (lambda (_%e5114251417%_
                             _%hd5114351421%_
                             _%tl5114451424%_
                             _%e5114551427%_
                             _%hd5114651431%_
                             _%tl5114751434%_
                             _%e5114851437%_
                             _%hd5114951441%_
                             _%tl5115051444%_
                             _%e5115151447%_
                             _%hd5115251451%_
                             _%tl5115351454%_
                             _%e5115451457%_
                             _%hd5115551461%_
                             _%tl5115651464%_
                             _%e5115751467%_
                             _%hd5115851471%_
                             _%tl5115951474%_
                             _%e5116051477%_
                             _%hd5116151481%_
                             _%tl5116251484%_
                             _%__splice9124091241%_
                             _%target5116351487%_
                             _%tl5116551490%_)
                      (letrec ((_%loop5116651493%_
                                (lambda (_%hd5116451497%_ _%body5117051500%_)
                                  (if (gx#stx-pair? _%hd5116451497%_)
                                      (let ((_%e5116751502%_
                                             (gx#syntax-e _%hd5116451497%_)))
                                        (let ((_%lp-tl5116951509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5116751502%_)))
                                              (_%lp-hd5116851506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5116751502%_))))
                                          (_%loop5116651493%_
                                           _%lp-tl5116951509%_
                                           (cons _%lp-hd5116851506%_
                                                 _%body5117051500%_))))
                                      (let ((_%body5117151512%_
                                             (reverse _%body5117051500%_)))
                                        (let ((_%g5113751515%_
                                               _%body5117151512%_)
                                              (_%g5113851517%_
                                               _%hd5116151481%_)
                                              (_%g5113951518%_
                                               _%hd5115851471%_)
                                              (_%g5114051519%_
                                               _%hd5115551461%_)
                                              (_%g5114151520%_
                                               _%hd5114951441%_))
                                          (if (and (gx#identifier?
                                                    _%g5114151520%_)
                                                   (gx#identifier?
                                                    _%g5113851517%_)
                                                   (gx#identifier?
                                                    _%g5113951518%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5113951518%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5113951518%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5113951518%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5113951518%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9123891239%_
                                               _%g5113751515%_
                                               _%g5113851517%_
                                               _%g5113951518%_
                                               _%g5114051519%_
                                               _%g5114151520%_)
                                              (_%__match9151691517%_
                                               _%e5114251417%_
                                               _%hd5114351421%_
                                               _%tl5114451424%_
                                               _%e5114551427%_
                                               _%hd5114651431%_
                                               _%tl5114751434%_
                                               _%e5114851437%_
                                               _%hd5114951441%_
                                               _%tl5115051444%_))))))))
                        (_%loop5116651493%_ _%target5116351487%_ '()))))
                   (_%__match9144291443%_
                    (lambda (_%e5111351577%_
                             _%hd5111451581%_
                             _%tl5111551584%_
                             _%e5111651587%_
                             _%hd5111751591%_
                             _%tl5111851594%_
                             _%e5111951597%_
                             _%hd5112051601%_
                             _%tl5112151604%_
                             _%e5112251607%_
                             _%hd5112351611%_
                             _%tl5112451614%_
                             _%e5112551617%_
                             _%hd5112651621%_
                             _%tl5112751624%_
                             _%__splice9123691237%_
                             _%target5112851627%_
                             _%tl5113051630%_)
                      (letrec ((_%loop5113151633%_
                                (lambda (_%hd5112951637%_ _%body5113551640%_)
                                  (if (gx#stx-pair? _%hd5112951637%_)
                                      (let ((_%e5113251642%_
                                             (gx#syntax-e _%hd5112951637%_)))
                                        (let ((_%lp-tl5113451649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5113251642%_)))
                                              (_%lp-hd5113351646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5113251642%_))))
                                          (_%loop5113151633%_
                                           _%lp-tl5113451649%_
                                           (cons _%lp-hd5113351646%_
                                                 _%body5113551640%_))))
                                      (let ((_%body5113651652%_
                                             (reverse _%body5113551640%_)))
                                        (let ((_%g5111051655%_
                                               _%body5113651652%_)
                                              (_%g5111151657%_
                                               _%hd5112651621%_)
                                              (_%g5111251658%_
                                               _%hd5112051601%_))
                                          (if (gx#identifier? _%g5111251658%_)
                                              (_%__kont9123491235%_
                                               _%g5111051655%_
                                               _%g5111151657%_
                                               _%g5111251658%_)
                                              (_%__match9151691517%_
                                               _%e5111351577%_
                                               _%hd5111451581%_
                                               _%tl5111551584%_
                                               _%e5111651587%_
                                               _%hd5111751591%_
                                               _%tl5111851594%_
                                               _%e5111951597%_
                                               _%hd5112051601%_
                                               _%tl5112151604%_))))))))
                        (_%loop5113151633%_ _%target5112851627%_ '()))))
                   (_%__match9142291423%_
                    (lambda (_%e5111351577%_
                             _%hd5111451581%_
                             _%tl5111551584%_
                             _%e5111651587%_
                             _%hd5111751591%_
                             _%tl5111851594%_
                             _%e5111951597%_
                             _%hd5112051601%_
                             _%tl5112151604%_
                             _%e5112251607%_
                             _%hd5112351611%_
                             _%tl5112451614%_)
                      (if (gx#identifier? _%hd5112351611%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97503_|
                               _%hd5112351611%_)
                              (if (gx#stx-pair? _%tl5112451614%_)
                                  (let ((_%e5112551617%_
                                         (gx#syntax-e _%tl5112451614%_)))
                                    (let ((_%tl5112751624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5112551617%_)))
                                          (_%hd5112651621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5112551617%_))))
                                      (if (gx#stx-null? _%tl5112751624%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5111851594%_)
                                              (let ((_%__splice9123691237%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5111851594%_
                                                      '0)))
                                                (let ((_%tl5113051630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9123691237%_
                                                          '1)))
                                                      (_%target5112851627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9123691237%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5113051630%_)
                                                      (_%__match9144291443%_
                                                       _%e5111351577%_
                                                       _%hd5111451581%_
                                                       _%tl5111551584%_
                                                       _%e5111651587%_
                                                       _%hd5111751591%_
                                                       _%tl5111851594%_
                                                       _%e5111951597%_
                                                       _%hd5112051601%_
                                                       _%tl5112151604%_
                                                       _%e5112251607%_
                                                       _%hd5112351611%_
                                                       _%tl5112451614%_
                                                       _%e5112551617%_
                                                       _%hd5112651621%_
                                                       _%tl5112751624%_
                                                       _%__splice9123691237%_
                                                       _%target5112851627%_
                                                       _%tl5113051630%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5112051601%_)
                                                          (let ((_%e5118551337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5112051601%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5112051601%_)
                                                  (let ((_%e5118551337%_
                                                         (gx#syntax-e
                                                          _%hd5112051601%_)))
                                                    (let ((_%tl5118751344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5118551337%_)))
                                                          (_%hd5118651341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5118551337%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5100951218%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))
                                          (if (gx#stx-pair? _%tl5112751624%_)
                                              (let ((_%e5115751467%_
                                                     (gx#syntax-e
                                                      _%tl5112751624%_)))
                                                (let ((_%tl5115951474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5115751467%_)))
                                                      (_%hd5115851471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5115751467%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5115951474%_)
                                                      (let ((_%e5116051477%_
                                                             (gx#syntax-e
                                                              _%tl5115951474%_)))
                                                        (let ((_%tl5116251484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5116051477%_)))
                      (_%hd5116151481%_
                       (let () (declare (not safe)) (##car _%e5116051477%_))))
                  (if (gx#stx-null? _%tl5116251484%_)
                      (if (gx#stx-pair/null? _%tl5111851594%_)
                          (let ((_%__splice9124091241%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5111851594%_
                                  '0)))
                            (let ((_%tl5116551490%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124091241%_ '1)))
                                  (_%target5116351487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124091241%_
                                      '0))))
                              (if (gx#stx-null? _%tl5116551490%_)
                                  (_%__match9149891499%_
                                   _%e5111351577%_
                                   _%hd5111451581%_
                                   _%tl5111551584%_
                                   _%e5111651587%_
                                   _%hd5111751591%_
                                   _%tl5111851594%_
                                   _%e5111951597%_
                                   _%hd5112051601%_
                                   _%tl5112151604%_
                                   _%e5112251607%_
                                   _%hd5112351611%_
                                   _%tl5112451614%_
                                   _%e5112551617%_
                                   _%hd5112651621%_
                                   _%tl5112751624%_
                                   _%e5115751467%_
                                   _%hd5115851471%_
                                   _%tl5115951474%_
                                   _%e5116051477%_
                                   _%hd5116151481%_
                                   _%tl5116251484%_
                                   _%__splice9124091241%_
                                   _%target5116351487%_
                                   _%tl5116551490%_)
                                  (if (gx#stx-pair? _%hd5112051601%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5112051601%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))
                          (if (gx#stx-pair? _%hd5112051601%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5112051601%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                      (if (gx#stx-pair? _%hd5112051601%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5112051601%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (if (gx#stx-pair/null? _%tl5111851594%_)
                                  (let ((_%__splice9124491245%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5111851594%_
                                          '0)))
                                    (let ((_%tl5119051350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '1)))
                                          (_%target5118851347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5119051350%_)
                                          (_%__match9153091531%_
                                           _%e5111351577%_
                                           _%hd5111451581%_
                                           _%tl5111551584%_
                                           _%e5111651587%_
                                           _%hd5111751591%_
                                           _%tl5111851594%_
                                           _%e5111951597%_
                                           _%hd5112051601%_
                                           _%tl5112151604%_
                                           _%e5118551337%_
                                           _%hd5118651341%_
                                           _%tl5118751344%_
                                           _%__splice9124491245%_
                                           _%target5118851347%_
                                           _%tl5119051350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_))))))
              (if (gx#stx-pair? _%hd5112051601%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5112051601%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5111851594%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5111851594%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5111351577%_
                                   _%hd5111451581%_
                                   _%tl5111551584%_
                                   _%e5111651587%_
                                   _%hd5111751591%_
                                   _%tl5111851594%_
                                   _%e5111951597%_
                                   _%hd5112051601%_
                                   _%tl5112151604%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5112051601%_)
                                                  (let ((_%e5118551337%_
                                                         (gx#syntax-e
                                                          _%hd5112051601%_)))
                                                    (let ((_%tl5118751344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5118551337%_)))
                                                          (_%hd5118651341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5118551337%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5111851594%_)
                                                          (let ((_%__splice9124491245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5111851594%_ '0)))
                    (let ((_%tl5119051350%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '1)))
                          (_%target5118851347%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '0))))
                      (if (gx#stx-null? _%tl5119051350%_)
                          (_%__match9153091531%_
                           _%e5111351577%_
                           _%hd5111451581%_
                           _%tl5111551584%_
                           _%e5111651587%_
                           _%hd5111751591%_
                           _%tl5111851594%_
                           _%e5111951597%_
                           _%hd5112051601%_
                           _%tl5112151604%_
                           _%e5118551337%_
                           _%hd5118651341%_
                           _%tl5118751344%_
                           _%__splice9124491245%_
                           _%target5118851347%_
                           _%tl5119051350%_)
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))))
                                  (if (gx#stx-pair? _%hd5112051601%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5112051601%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5111851594%_)
                                              (let ((_%__splice9124491245%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5111851594%_
                                                      '0)))
                                                (let ((_%tl5119051350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '1)))
                                                      (_%target5118851347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5119051350%_)
                                                      (_%__match9153091531%_
                                                       _%e5111351577%_
                                                       _%hd5111451581%_
                                                       _%tl5111551584%_
                                                       _%e5111651587%_
                                                       _%hd5111751591%_
                                                       _%tl5111851594%_
                                                       _%e5111951597%_
                                                       _%hd5112051601%_
                                                       _%tl5112151604%_
                                                       _%e5118551337%_
                                                       _%hd5118651341%_
                                                       _%tl5118751344%_
                                                       _%__splice9124491245%_
                                                       _%target5118851347%_
                                                       _%tl5119051350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5100951218%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                              (if (gx#stx-pair? _%hd5112051601%_)
                                  (let ((_%e5118551337%_
                                         (gx#syntax-e _%hd5112051601%_)))
                                    (let ((_%tl5118751344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5118551337%_)))
                                          (_%hd5118651341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5118551337%_))))
                                      (if (gx#stx-pair/null? _%tl5111851594%_)
                                          (let ((_%__splice9124491245%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5111851594%_
                                                  '0)))
                                            (let ((_%tl5119051350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9124491245%_
                                                      '1)))
                                                  (_%target5118851347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9124491245%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5119051350%_)
                                                  (_%__match9153091531%_
                                                   _%e5111351577%_
                                                   _%hd5111451581%_
                                                   _%tl5111551584%_
                                                   _%e5111651587%_
                                                   _%hd5111751591%_
                                                   _%tl5111851594%_
                                                   _%e5111951597%_
                                                   _%hd5112051601%_
                                                   _%tl5112151604%_
                                                   _%e5118551337%_
                                                   _%hd5118651341%_
                                                   _%tl5118751344%_
                                                   _%__splice9124491245%_
                                                   _%target5118851347%_
                                                   _%tl5119051350%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                          (if (gx#stx-pair? _%hd5112051601%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5112051601%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (if (gx#stx-pair/null? _%tl5111851594%_)
                                      (let ((_%__splice9124491245%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5111851594%_
                                              '0)))
                                        (let ((_%tl5119051350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9124491245%_
                                                  '1)))
                                              (_%target5118851347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9124491245%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5119051350%_)
                                              (_%__match9153091531%_
                                               _%e5111351577%_
                                               _%hd5111451581%_
                                               _%tl5111551584%_
                                               _%e5111651587%_
                                               _%hd5111751591%_
                                               _%tl5111851594%_
                                               _%e5111951597%_
                                               _%hd5112051601%_
                                               _%tl5112151604%_
                                               _%e5118551337%_
                                               _%hd5118651341%_
                                               _%tl5118751344%_
                                               _%__splice9124491245%_
                                               _%target5118851347%_
                                               _%tl5119051350%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_))))))
                   (_%__match9139891399%_
                    (lambda (_%e5108651697%_
                             _%hd5108751701%_
                             _%tl5108851704%_
                             _%e5108951707%_
                             _%hd5109051711%_
                             _%tl5109151714%_
                             _%e5109251717%_
                             _%hd5109351721%_
                             _%tl5109451724%_
                             _%e5109551727%_
                             _%hd5109651731%_
                             _%tl5109751734%_
                             _%e5109851737%_
                             _%hd5109951741%_
                             _%tl5110051744%_
                             _%__splice9123291233%_
                             _%target5110151747%_
                             _%tl5110351750%_)
                      (letrec ((_%loop5110451753%_
                                (lambda (_%hd5110251757%_ _%body5110851760%_)
                                  (if (gx#stx-pair? _%hd5110251757%_)
                                      (let ((_%e5110551762%_
                                             (gx#syntax-e _%hd5110251757%_)))
                                        (let ((_%lp-tl5110751769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5110551762%_)))
                                              (_%lp-hd5110651766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5110551762%_))))
                                          (_%loop5110451753%_
                                           _%lp-tl5110751769%_
                                           (cons _%lp-hd5110651766%_
                                                 _%body5110851760%_))))
                                      (let ((_%body5110951772%_
                                             (reverse _%body5110851760%_)))
                                        (let ((_%g5108251775%_
                                               _%body5110951772%_)
                                              (_%g5108351777%_
                                               _%hd5109951741%_)
                                              (_%g5108451778%_
                                               _%hd5109651731%_)
                                              (_%g5108551779%_
                                               _%hd5109351721%_))
                                          (if (and (gx#identifier?
                                                    _%g5108551779%_)
                                                   (gx#identifier?
                                                    _%g5108351777%_)
                                                   (gx#identifier?
                                                    _%g5108451778%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5108451778%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5108451778%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5108451778%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5108451778%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9123091231%_
                                               _%g5108251775%_
                                               _%g5108351777%_
                                               _%g5108451778%_
                                               _%g5108551779%_)
                                              (_%__match9142291423%_
                                               _%e5108651697%_
                                               _%hd5108751701%_
                                               _%tl5108851704%_
                                               _%e5108951707%_
                                               _%hd5109051711%_
                                               _%tl5109151714%_
                                               _%e5109251717%_
                                               _%hd5109351721%_
                                               _%tl5109451724%_
                                               _%e5109551727%_
                                               _%hd5109651731%_
                                               _%tl5109751734%_))))))))
                        (_%loop5110451753%_ _%target5110151747%_ '()))))
                   (_%__match9135891359%_
                    (lambda (_%e5104951848%_
                             _%hd5105051852%_
                             _%tl5105151855%_
                             _%e5105251858%_
                             _%hd5105351862%_
                             _%tl5105451865%_
                             _%e5105551868%_
                             _%hd5105651872%_
                             _%tl5105751875%_
                             _%e5105851878%_
                             _%hd5105951882%_
                             _%tl5106051885%_
                             _%e5106151888%_
                             _%hd5106251892%_
                             _%tl5106351895%_
                             _%e5106451898%_
                             _%hd5106551902%_
                             _%tl5106651905%_
                             _%e5106751908%_
                             _%hd5106851912%_
                             _%tl5106951915%_
                             _%e5107051918%_
                             _%hd5107151922%_
                             _%tl5107251925%_
                             _%__splice9122891229%_
                             _%target5107351928%_
                             _%tl5107551931%_)
                      (letrec ((_%loop5107651934%_
                                (lambda (_%hd5107451938%_ _%body5108051941%_)
                                  (if (gx#stx-pair? _%hd5107451938%_)
                                      (let ((_%e5107751943%_
                                             (gx#syntax-e _%hd5107451938%_)))
                                        (let ((_%lp-tl5107951950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5107751943%_)))
                                              (_%lp-hd5107851947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5107751943%_))))
                                          (_%loop5107651934%_
                                           _%lp-tl5107951950%_
                                           (cons _%lp-hd5107851947%_
                                                 _%body5108051941%_))))
                                      (let ((_%body5108151953%_
                                             (reverse _%body5108051941%_)))
                                        (let ((_%g5104351956%_
                                               _%body5108151953%_)
                                              (_%g5104451958%_
                                               _%hd5107151922%_)
                                              (_%g5104551959%_
                                               _%hd5106851912%_)
                                              (_%g5104651960%_
                                               _%hd5106551902%_)
                                              (_%g5104751961%_
                                               _%hd5105951882%_)
                                              (_%g5104851962%_
                                               _%hd5105651872%_))
                                          (if (and (gx#identifier?
                                                    _%g5104851962%_)
                                                   (gx#identifier?
                                                    _%g5104451958%_)
                                                   (gx#identifier?
                                                    _%g5104551959%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5104551959%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5104551959%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5104551959%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5104551959%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9122691227%_
                                               _%g5104351956%_
                                               _%g5104451958%_
                                               _%g5104551959%_
                                               _%g5104651960%_
                                               _%g5104751961%_
                                               _%g5104851962%_)
                                              (_%__match9142291423%_
                                               _%e5104951848%_
                                               _%hd5105051852%_
                                               _%tl5105151855%_
                                               _%e5105251858%_
                                               _%hd5105351862%_
                                               _%tl5105451865%_
                                               _%e5105551868%_
                                               _%hd5105651872%_
                                               _%tl5105751875%_
                                               _%e5105851878%_
                                               _%hd5105951882%_
                                               _%tl5106051885%_))))))))
                        (_%loop5107651934%_ _%target5107351928%_ '()))))
                   (_%__match9132691327%_
                    (lambda (_%e5104951848%_
                             _%hd5105051852%_
                             _%tl5105151855%_
                             _%e5105251858%_
                             _%hd5105351862%_
                             _%tl5105451865%_
                             _%e5105551868%_
                             _%hd5105651872%_
                             _%tl5105751875%_
                             _%e5105851878%_
                             _%hd5105951882%_
                             _%tl5106051885%_
                             _%e5106151888%_
                             _%hd5106251892%_
                             _%tl5106351895%_)
                      (if (gx#identifier? _%hd5106251892%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g97504_|
                               _%hd5106251892%_)
                              (if (gx#stx-pair? _%tl5106351895%_)
                                  (let ((_%e5106451898%_
                                         (gx#syntax-e _%tl5106351895%_)))
                                    (let ((_%tl5106651905%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5106451898%_)))
                                          (_%hd5106551902%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5106451898%_))))
                                      (if (gx#stx-pair? _%tl5106651905%_)
                                          (let ((_%e5106751908%_
                                                 (gx#syntax-e
                                                  _%tl5106651905%_)))
                                            (let ((_%tl5106951915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5106751908%_)))
                                                  (_%hd5106851912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5106751908%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5106951915%_)
                                                  (let ((_%e5107051918%_
                                                         (gx#syntax-e
                                                          _%tl5106951915%_)))
                                                    (let ((_%tl5107251925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5107051918%_)))
                                                          (_%hd5107151922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5107051918%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5107251925%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5105451865%_)
                                                              (let ((_%__splice9122891229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5105451865%_
                              '0)))
                        (let ((_%tl5107551931%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9122891229%_ '1)))
                              (_%target5107351928%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9122891229%_ '0))))
                          (if (gx#stx-null? _%tl5107551931%_)
                              (_%__match9135891359%_
                               _%e5104951848%_
                               _%hd5105051852%_
                               _%tl5105151855%_
                               _%e5105251858%_
                               _%hd5105351862%_
                               _%tl5105451865%_
                               _%e5105551868%_
                               _%hd5105651872%_
                               _%tl5105751875%_
                               _%e5105851878%_
                               _%hd5105951882%_
                               _%tl5106051885%_
                               _%e5106151888%_
                               _%hd5106251892%_
                               _%tl5106351895%_
                               _%e5106451898%_
                               _%hd5106551902%_
                               _%tl5106651905%_
                               _%e5106751908%_
                               _%hd5106851912%_
                               _%tl5106951915%_
                               _%e5107051918%_
                               _%hd5107151922%_
                               _%tl5107251925%_
                               _%__splice9122891229%_
                               _%target5107351928%_
                               _%tl5107551931%_)
                              (if (gx#stx-pair? _%hd5105651872%_)
                                  (let ((_%e5118551337%_
                                         (gx#syntax-e _%hd5105651872%_)))
                                    (let ((_%tl5118751344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5118551337%_)))
                                          (_%hd5118651341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5118551337%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))))
                      (if (gx#stx-pair? _%hd5105651872%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5105651872%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                  (if (gx#stx-pair? _%hd5105651872%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5105651872%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (if (gx#stx-pair/null? _%tl5105451865%_)
                              (let ((_%__splice9124491245%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5105451865%_
                                      '0)))
                                (let ((_%tl5119051350%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '1)))
                                      (_%target5118851347%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5119051350%_)
                                      (_%__match9153091531%_
                                       _%e5104951848%_
                                       _%hd5105051852%_
                                       _%tl5105151855%_
                                       _%e5105251858%_
                                       _%hd5105351862%_
                                       _%tl5105451865%_
                                       _%e5105551868%_
                                       _%hd5105651872%_
                                       _%tl5105751875%_
                                       _%e5118551337%_
                                       _%hd5118651341%_
                                       _%tl5118751344%_
                                       _%__splice9124491245%_
                                       _%target5118851347%_
                                       _%tl5119051350%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5105951882%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97503_|
                                                           _%hd5105951882%_)
                                                          (if (gx#stx-null?
                                                               _%tl5106951915%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5105451865%_)
                          (let ((_%__splice9124091241%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5105451865%_
                                  '0)))
                            (let ((_%tl5116551490%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124091241%_ '1)))
                                  (_%target5116351487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124091241%_
                                      '0))))
                              (if (gx#stx-null? _%tl5116551490%_)
                                  (_%__match9149891499%_
                                   _%e5104951848%_
                                   _%hd5105051852%_
                                   _%tl5105151855%_
                                   _%e5105251858%_
                                   _%hd5105351862%_
                                   _%tl5105451865%_
                                   _%e5105551868%_
                                   _%hd5105651872%_
                                   _%tl5105751875%_
                                   _%e5105851878%_
                                   _%hd5105951882%_
                                   _%tl5106051885%_
                                   _%e5106151888%_
                                   _%hd5106251892%_
                                   _%tl5106351895%_
                                   _%e5106451898%_
                                   _%hd5106551902%_
                                   _%tl5106651905%_
                                   _%e5106751908%_
                                   _%hd5106851912%_
                                   _%tl5106951915%_
                                   _%__splice9124091241%_
                                   _%target5116351487%_
                                   _%tl5116551490%_)
                                  (if (gx#stx-pair? _%hd5105651872%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5105651872%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))
                          (if (gx#stx-pair? _%hd5105651872%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5105651872%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                      (if (gx#stx-pair? _%hd5105651872%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5105651872%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (if (gx#stx-pair/null? _%tl5105451865%_)
                                  (let ((_%__splice9124491245%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5105451865%_
                                          '0)))
                                    (let ((_%tl5119051350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '1)))
                                          (_%target5118851347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5119051350%_)
                                          (_%__match9153091531%_
                                           _%e5104951848%_
                                           _%hd5105051852%_
                                           _%tl5105151855%_
                                           _%e5105251858%_
                                           _%hd5105351862%_
                                           _%tl5105451865%_
                                           _%e5105551868%_
                                           _%hd5105651872%_
                                           _%tl5105751875%_
                                           _%e5118551337%_
                                           _%hd5118651341%_
                                           _%tl5118751344%_
                                           _%__splice9124491245%_
                                           _%target5118851347%_
                                           _%tl5119051350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                  (if (gx#stx-pair? _%hd5105651872%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5105651872%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (if (gx#stx-pair/null? _%tl5105451865%_)
                              (let ((_%__splice9124491245%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5105451865%_
                                      '0)))
                                (let ((_%tl5119051350%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '1)))
                                      (_%target5118851347%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5119051350%_)
                                      (_%__match9153091531%_
                                       _%e5104951848%_
                                       _%hd5105051852%_
                                       _%tl5105151855%_
                                       _%e5105251858%_
                                       _%hd5105351862%_
                                       _%tl5105451865%_
                                       _%e5105551868%_
                                       _%hd5105651872%_
                                       _%tl5105751875%_
                                       _%e5118551337%_
                                       _%hd5118651341%_
                                       _%tl5118751344%_
                                       _%__splice9124491245%_
                                       _%target5118851347%_
                                       _%tl5119051350%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
              (if (gx#stx-pair? _%hd5105651872%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5105651872%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5105451865%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5105451865%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5104951848%_
                                   _%hd5105051852%_
                                   _%tl5105151855%_
                                   _%e5105251858%_
                                   _%hd5105351862%_
                                   _%tl5105451865%_
                                   _%e5105551868%_
                                   _%hd5105651872%_
                                   _%tl5105751875%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5105651872%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5105651872%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5105451865%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5105451865%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5104951848%_
                       _%hd5105051852%_
                       _%tl5105151855%_
                       _%e5105251858%_
                       _%hd5105351862%_
                       _%tl5105451865%_
                       _%e5105551868%_
                       _%hd5105651872%_
                       _%tl5105751875%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))))
                                  (if (gx#stx-null? _%tl5106351895%_)
                                      (if (gx#stx-pair/null? _%tl5105451865%_)
                                          (let ((_%__splice9123291233%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5105451865%_
                                                  '0)))
                                            (let ((_%tl5110351750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9123291233%_
                                                      '1)))
                                                  (_%target5110151747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9123291233%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5110351750%_)
                                                  (_%__match9139891399%_
                                                   _%e5104951848%_
                                                   _%hd5105051852%_
                                                   _%tl5105151855%_
                                                   _%e5105251858%_
                                                   _%hd5105351862%_
                                                   _%tl5105451865%_
                                                   _%e5105551868%_
                                                   _%hd5105651872%_
                                                   _%tl5105751875%_
                                                   _%e5105851878%_
                                                   _%hd5105951882%_
                                                   _%tl5106051885%_
                                                   _%e5106151888%_
                                                   _%hd5106251892%_
                                                   _%tl5106351895%_
                                                   _%__splice9123291233%_
                                                   _%target5110151747%_
                                                   _%tl5110351750%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5105651872%_)
                                                      (let ((_%e5118551337%_
                                                             (gx#syntax-e
                                                              _%hd5105651872%_)))
                                                        (let ((_%tl5118751344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5118551337%_)))
                      (_%hd5118651341%_
                       (let () (declare (not safe)) (##car _%e5118551337%_))))
                  (let () (declare (not safe)) (_%g5100951218%_))))
              (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5105651872%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5105651872%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                      (if (gx#stx-pair? _%hd5105651872%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5105651872%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5105451865%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5105451865%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5104951848%_
                                                           _%hd5105051852%_
                                                           _%tl5105151855%_
                                                           _%e5105251858%_
                                                           _%hd5105351862%_
                                                           _%tl5105451865%_
                                                           _%e5105551868%_
                                                           _%hd5105651872%_
                                                           _%tl5105751875%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                              (if (gx#stx-null? _%tl5106351895%_)
                                  (if (gx#stx-pair/null? _%tl5105451865%_)
                                      (let ((_%__splice9123291233%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5105451865%_
                                              '0)))
                                        (let ((_%tl5110351750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9123291233%_
                                                  '1)))
                                              (_%target5110151747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9123291233%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5110351750%_)
                                              (_%__match9139891399%_
                                               _%e5104951848%_
                                               _%hd5105051852%_
                                               _%tl5105151855%_
                                               _%e5105251858%_
                                               _%hd5105351862%_
                                               _%tl5105451865%_
                                               _%e5105551868%_
                                               _%hd5105651872%_
                                               _%tl5105751875%_
                                               _%e5105851878%_
                                               _%hd5105951882%_
                                               _%tl5106051885%_
                                               _%e5106151888%_
                                               _%hd5106251892%_
                                               _%tl5106351895%_
                                               _%__splice9123291233%_
                                               _%target5110151747%_
                                               _%tl5110351750%_)
                                              (if (gx#stx-pair?
                                                   _%hd5105651872%_)
                                                  (let ((_%e5118551337%_
                                                         (gx#syntax-e
                                                          _%hd5105651872%_)))
                                                    (let ((_%tl5118751344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5118551337%_)))
                                                          (_%hd5118651341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5118551337%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5100951218%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))))
                                      (if (gx#stx-pair? _%hd5105651872%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5105651872%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                  (if (gx#identifier? _%hd5105951882%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97503_|
                                           _%hd5105951882%_)
                                          (if (gx#stx-pair? _%tl5106351895%_)
                                              (let ((_%e5115751467%_
                                                     (gx#syntax-e
                                                      _%tl5106351895%_)))
                                                (let ((_%tl5115951474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5115751467%_)))
                                                      (_%hd5115851471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5115751467%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5115951474%_)
                                                      (let ((_%e5116051477%_
                                                             (gx#syntax-e
                                                              _%tl5115951474%_)))
                                                        (let ((_%tl5116251484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5116051477%_)))
                      (_%hd5116151481%_
                       (let () (declare (not safe)) (##car _%e5116051477%_))))
                  (if (gx#stx-null? _%tl5116251484%_)
                      (if (gx#stx-pair/null? _%tl5105451865%_)
                          (let ((_%__splice9124091241%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5105451865%_
                                  '0)))
                            (let ((_%tl5116551490%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124091241%_ '1)))
                                  (_%target5116351487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124091241%_
                                      '0))))
                              (if (gx#stx-null? _%tl5116551490%_)
                                  (_%__match9149891499%_
                                   _%e5104951848%_
                                   _%hd5105051852%_
                                   _%tl5105151855%_
                                   _%e5105251858%_
                                   _%hd5105351862%_
                                   _%tl5105451865%_
                                   _%e5105551868%_
                                   _%hd5105651872%_
                                   _%tl5105751875%_
                                   _%e5105851878%_
                                   _%hd5105951882%_
                                   _%tl5106051885%_
                                   _%e5106151888%_
                                   _%hd5106251892%_
                                   _%tl5106351895%_
                                   _%e5115751467%_
                                   _%hd5115851471%_
                                   _%tl5115951474%_
                                   _%e5116051477%_
                                   _%hd5116151481%_
                                   _%tl5116251484%_
                                   _%__splice9124091241%_
                                   _%target5116351487%_
                                   _%tl5116551490%_)
                                  (if (gx#stx-pair? _%hd5105651872%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5105651872%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))
                          (if (gx#stx-pair? _%hd5105651872%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5105651872%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                      (if (gx#stx-pair? _%hd5105651872%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5105651872%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (if (gx#stx-pair/null? _%tl5105451865%_)
                                  (let ((_%__splice9124491245%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5105451865%_
                                          '0)))
                                    (let ((_%tl5119051350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '1)))
                                          (_%target5118851347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5119051350%_)
                                          (_%__match9153091531%_
                                           _%e5104951848%_
                                           _%hd5105051852%_
                                           _%tl5105151855%_
                                           _%e5105251858%_
                                           _%hd5105351862%_
                                           _%tl5105451865%_
                                           _%e5105551868%_
                                           _%hd5105651872%_
                                           _%tl5105751875%_
                                           _%e5118551337%_
                                           _%hd5118651341%_
                                           _%tl5118751344%_
                                           _%__splice9124491245%_
                                           _%target5118851347%_
                                           _%tl5119051350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_))))))
              (if (gx#stx-pair? _%hd5105651872%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5105651872%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5105451865%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5105451865%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5104951848%_
                                   _%hd5105051852%_
                                   _%tl5105151855%_
                                   _%e5105251858%_
                                   _%hd5105351862%_
                                   _%tl5105451865%_
                                   _%e5105551868%_
                                   _%hd5105651872%_
                                   _%tl5105751875%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5105651872%_)
                                                  (let ((_%e5118551337%_
                                                         (gx#syntax-e
                                                          _%hd5105651872%_)))
                                                    (let ((_%tl5118751344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5118551337%_)))
                                                          (_%hd5118651341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5118551337%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5105451865%_)
                                                          (let ((_%__splice9124491245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5105451865%_ '0)))
                    (let ((_%tl5119051350%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '1)))
                          (_%target5118851347%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '0))))
                      (if (gx#stx-null? _%tl5119051350%_)
                          (_%__match9153091531%_
                           _%e5104951848%_
                           _%hd5105051852%_
                           _%tl5105151855%_
                           _%e5105251858%_
                           _%hd5105351862%_
                           _%tl5105451865%_
                           _%e5105551868%_
                           _%hd5105651872%_
                           _%tl5105751875%_
                           _%e5118551337%_
                           _%hd5118651341%_
                           _%tl5118751344%_
                           _%__splice9124491245%_
                           _%target5118851347%_
                           _%tl5119051350%_)
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))
                                          (if (gx#stx-pair? _%hd5105651872%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5105651872%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5105451865%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5105451865%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5104951848%_
                       _%hd5105051852%_
                       _%tl5105151855%_
                       _%e5105251858%_
                       _%hd5105351862%_
                       _%tl5105451865%_
                       _%e5105551868%_
                       _%hd5105651872%_
                       _%tl5105751875%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                      (if (gx#stx-pair? _%hd5105651872%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5105651872%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5105451865%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5105451865%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5104951848%_
                                                           _%hd5105051852%_
                                                           _%tl5105151855%_
                                                           _%e5105251858%_
                                                           _%hd5105351862%_
                                                           _%tl5105451865%_
                                                           _%e5105551868%_
                                                           _%hd5105651872%_
                                                           _%tl5105751875%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))))
                          (if (gx#stx-null? _%tl5106351895%_)
                              (if (gx#stx-pair/null? _%tl5105451865%_)
                                  (let ((_%__splice9123291233%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5105451865%_
                                          '0)))
                                    (let ((_%tl5110351750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9123291233%_
                                              '1)))
                                          (_%target5110151747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9123291233%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5110351750%_)
                                          (_%__match9139891399%_
                                           _%e5104951848%_
                                           _%hd5105051852%_
                                           _%tl5105151855%_
                                           _%e5105251858%_
                                           _%hd5105351862%_
                                           _%tl5105451865%_
                                           _%e5105551868%_
                                           _%hd5105651872%_
                                           _%tl5105751875%_
                                           _%e5105851878%_
                                           _%hd5105951882%_
                                           _%tl5106051885%_
                                           _%e5106151888%_
                                           _%hd5106251892%_
                                           _%tl5106351895%_
                                           _%__splice9123291233%_
                                           _%target5110151747%_
                                           _%tl5110351750%_)
                                          (if (gx#stx-pair? _%hd5105651872%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5105651872%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))))
                                  (if (gx#stx-pair? _%hd5105651872%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5105651872%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                              (if (gx#identifier? _%hd5105951882%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97503_|
                                       _%hd5105951882%_)
                                      (if (gx#stx-pair? _%tl5106351895%_)
                                          (let ((_%e5115751467%_
                                                 (gx#syntax-e
                                                  _%tl5106351895%_)))
                                            (let ((_%tl5115951474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5115751467%_)))
                                                  (_%hd5115851471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5115751467%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5115951474%_)
                                                  (let ((_%e5116051477%_
                                                         (gx#syntax-e
                                                          _%tl5115951474%_)))
                                                    (let ((_%tl5116251484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5116051477%_)))
                                                          (_%hd5116151481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5116051477%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5116251484%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5105451865%_)
                                                              (let ((_%__splice9124091241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5105451865%_
                              '0)))
                        (let ((_%tl5116551490%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124091241%_ '1)))
                              (_%target5116351487%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124091241%_ '0))))
                          (if (gx#stx-null? _%tl5116551490%_)
                              (_%__match9149891499%_
                               _%e5104951848%_
                               _%hd5105051852%_
                               _%tl5105151855%_
                               _%e5105251858%_
                               _%hd5105351862%_
                               _%tl5105451865%_
                               _%e5105551868%_
                               _%hd5105651872%_
                               _%tl5105751875%_
                               _%e5105851878%_
                               _%hd5105951882%_
                               _%tl5106051885%_
                               _%e5106151888%_
                               _%hd5106251892%_
                               _%tl5106351895%_
                               _%e5115751467%_
                               _%hd5115851471%_
                               _%tl5115951474%_
                               _%e5116051477%_
                               _%hd5116151481%_
                               _%tl5116251484%_
                               _%__splice9124091241%_
                               _%target5116351487%_
                               _%tl5116551490%_)
                              (if (gx#stx-pair? _%hd5105651872%_)
                                  (let ((_%e5118551337%_
                                         (gx#syntax-e _%hd5105651872%_)))
                                    (let ((_%tl5118751344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5118551337%_)))
                                          (_%hd5118651341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5118551337%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))))
                      (if (gx#stx-pair? _%hd5105651872%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5105651872%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                  (if (gx#stx-pair? _%hd5105651872%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5105651872%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (if (gx#stx-pair/null? _%tl5105451865%_)
                              (let ((_%__splice9124491245%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5105451865%_
                                      '0)))
                                (let ((_%tl5119051350%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '1)))
                                      (_%target5118851347%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5119051350%_)
                                      (_%__match9153091531%_
                                       _%e5104951848%_
                                       _%hd5105051852%_
                                       _%tl5105151855%_
                                       _%e5105251858%_
                                       _%hd5105351862%_
                                       _%tl5105451865%_
                                       _%e5105551868%_
                                       _%hd5105651872%_
                                       _%tl5105751875%_
                                       _%e5118551337%_
                                       _%hd5118651341%_
                                       _%tl5118751344%_
                                       _%__splice9124491245%_
                                       _%target5118851347%_
                                       _%tl5119051350%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5105651872%_)
                                                      (let ((_%e5118551337%_
                                                             (gx#syntax-e
                                                              _%hd5105651872%_)))
                                                        (let ((_%tl5118751344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5118551337%_)))
                      (_%hd5118651341%_
                       (let () (declare (not safe)) (##car _%e5118551337%_))))
                  (if (gx#stx-pair/null? _%tl5105451865%_)
                      (let ((_%__splice9124491245%_
                             (gx#syntax-split-splice->vector
                              _%tl5105451865%_
                              '0)))
                        (let ((_%tl5119051350%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '1)))
                              (_%target5118851347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '0))))
                          (if (gx#stx-null? _%tl5119051350%_)
                              (_%__match9153091531%_
                               _%e5104951848%_
                               _%hd5105051852%_
                               _%tl5105151855%_
                               _%e5105251858%_
                               _%hd5105351862%_
                               _%tl5105451865%_
                               _%e5105551868%_
                               _%hd5105651872%_
                               _%tl5105751875%_
                               _%e5118551337%_
                               _%hd5118651341%_
                               _%tl5118751344%_
                               _%__splice9124491245%_
                               _%target5118851347%_
                               _%tl5119051350%_)
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5105651872%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5105651872%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5105451865%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5105451865%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5104951848%_
                       _%hd5105051852%_
                       _%tl5105151855%_
                       _%e5105251858%_
                       _%hd5105351862%_
                       _%tl5105451865%_
                       _%e5105551868%_
                       _%hd5105651872%_
                       _%tl5105751875%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                      (if (gx#stx-pair? _%hd5105651872%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5105651872%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5105451865%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5105451865%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5104951848%_
                                                           _%hd5105051852%_
                                                           _%tl5105151855%_
                                                           _%e5105251858%_
                                                           _%hd5105351862%_
                                                           _%tl5105451865%_
                                                           _%e5105551868%_
                                                           _%hd5105651872%_
                                                           _%tl5105751875%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                  (if (gx#stx-pair? _%hd5105651872%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5105651872%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5105451865%_)
                                              (let ((_%__splice9124491245%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5105451865%_
                                                      '0)))
                                                (let ((_%tl5119051350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '1)))
                                                      (_%target5118851347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5119051350%_)
                                                      (_%__match9153091531%_
                                                       _%e5104951848%_
                                                       _%hd5105051852%_
                                                       _%tl5105151855%_
                                                       _%e5105251858%_
                                                       _%hd5105351862%_
                                                       _%tl5105451865%_
                                                       _%e5105551868%_
                                                       _%hd5105651872%_
                                                       _%tl5105751875%_
                                                       _%e5118551337%_
                                                       _%hd5118651341%_
                                                       _%tl5118751344%_
                                                       _%__splice9124491245%_
                                                       _%target5118851347%_
                                                       _%tl5119051350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5100951218%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))))
                   (_%__match9129691297%_
                    (lambda (_%e5101652022%_
                             _%hd5101752026%_
                             _%tl5101852029%_
                             _%e5101952032%_
                             _%hd5102052036%_
                             _%tl5102152039%_
                             _%e5102252042%_
                             _%hd5102352046%_
                             _%tl5102452049%_
                             _%e5102552052%_
                             _%hd5102652056%_
                             _%tl5102752059%_
                             _%e5102852062%_
                             _%hd5102952066%_
                             _%tl5103052069%_
                             _%e5103152072%_
                             _%hd5103252076%_
                             _%tl5103352079%_
                             _%__splice9122491225%_
                             _%target5103452082%_
                             _%tl5103652085%_)
                      (letrec ((_%loop5103752088%_
                                (lambda (_%hd5103552092%_ _%body5104152095%_)
                                  (if (gx#stx-pair? _%hd5103552092%_)
                                      (let ((_%e5103852097%_
                                             (gx#syntax-e _%hd5103552092%_)))
                                        (let ((_%lp-tl5104052104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5103852097%_)))
                                              (_%lp-hd5103952101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5103852097%_))))
                                          (_%loop5103752088%_
                                           _%lp-tl5104052104%_
                                           (cons _%lp-hd5103952101%_
                                                 _%body5104152095%_))))
                                      (let ((_%body5104252107%_
                                             (reverse _%body5104152095%_)))
                                        (let ((_%g5101152110%_
                                               _%body5104252107%_)
                                              (_%g5101252112%_
                                               _%hd5103252076%_)
                                              (_%g5101352113%_
                                               _%hd5102952066%_)
                                              (_%g5101452114%_
                                               _%hd5102652056%_)
                                              (_%g5101552115%_
                                               _%hd5102352046%_))
                                          (if (and (gx#identifier?
                                                    _%g5101552115%_)
                                                   (gx#identifier?
                                                    _%g5101352113%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5101352113%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5101352113%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5101352113%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5101352113%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5101352113%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9122291223%_
                                               _%g5101152110%_
                                               _%g5101252112%_
                                               _%g5101352113%_
                                               _%g5101452114%_
                                               _%g5101552115%_)
                                              (_%__match9132691327%_
                                               _%e5101652022%_
                                               _%hd5101752026%_
                                               _%tl5101852029%_
                                               _%e5101952032%_
                                               _%hd5102052036%_
                                               _%tl5102152039%_
                                               _%e5102252042%_
                                               _%hd5102352046%_
                                               _%tl5102452049%_
                                               _%e5102552052%_
                                               _%hd5102652056%_
                                               _%tl5102752059%_
                                               _%e5102852062%_
                                               _%hd5102952066%_
                                               _%tl5103052069%_))))))))
                        (_%loop5103752088%_ _%target5103452082%_ '())))))
              (if (gx#stx-pair? _%__stx9121991220%_)
                  (let ((_%e5101652022%_ (gx#syntax-e _%__stx9121991220%_)))
                    (let ((_%tl5101852029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5101652022%_)))
                          (_%hd5101752026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5101652022%_))))
                      (if (gx#stx-pair? _%tl5101852029%_)
                          (let ((_%e5101952032%_
                                 (gx#syntax-e _%tl5101852029%_)))
                            (let ((_%tl5102152039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5101952032%_)))
                                  (_%hd5102052036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5101952032%_))))
                              (if (gx#stx-pair? _%hd5102052036%_)
                                  (let ((_%e5102252042%_
                                         (gx#syntax-e _%hd5102052036%_)))
                                    (let ((_%tl5102452049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5102252042%_)))
                                          (_%hd5102352046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5102252042%_))))
                                      (if (gx#stx-pair? _%tl5102452049%_)
                                          (let ((_%e5102552052%_
                                                 (gx#syntax-e
                                                  _%tl5102452049%_)))
                                            (let ((_%tl5102752059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5102552052%_)))
                                                  (_%hd5102652056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5102552052%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5102752059%_)
                                                  (let ((_%e5102852062%_
                                                         (gx#syntax-e
                                                          _%tl5102752059%_)))
                                                    (let ((_%tl5103052069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5102852062%_)))
                                                          (_%hd5102952066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5102852062%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5103052069%_)
                                                          (let ((_%e5103152072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5103052069%_)))
                    (let ((_%tl5103352079%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5103152072%_)))
                          (_%hd5103252076%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5103152072%_))))
                      (if (gx#stx-null? _%tl5103352079%_)
                          (if (gx#stx-pair/null? _%tl5102152039%_)
                              (let ((_%__splice9122491225%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5102152039%_
                                      '0)))
                                (let ((_%tl5103652085%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9122491225%_
                                          '1)))
                                      (_%target5103452082%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9122491225%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5103652085%_)
                                      (_%__match9129691297%_
                                       _%e5101652022%_
                                       _%hd5101752026%_
                                       _%tl5101852029%_
                                       _%e5101952032%_
                                       _%hd5102052036%_
                                       _%tl5102152039%_
                                       _%e5102252042%_
                                       _%hd5102352046%_
                                       _%tl5102452049%_
                                       _%e5102552052%_
                                       _%hd5102652056%_
                                       _%tl5102752059%_
                                       _%e5102852062%_
                                       _%hd5102952066%_
                                       _%tl5103052069%_
                                       _%e5103152072%_
                                       _%hd5103252076%_
                                       _%tl5103352079%_
                                       _%__splice9122491225%_
                                       _%target5103452082%_
                                       _%tl5103652085%_)
                                      (if (gx#stx-pair? _%hd5102352046%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5102352046%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))))
                              (if (gx#stx-pair? _%hd5102352046%_)
                                  (let ((_%e5118551337%_
                                         (gx#syntax-e _%hd5102352046%_)))
                                    (let ((_%tl5118751344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5118551337%_)))
                                          (_%hd5118651341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5118551337%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                          (if (gx#identifier? _%hd5102952066%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g97504_|
                                   _%hd5102952066%_)
                                  (if (gx#stx-pair? _%tl5103352079%_)
                                      (let ((_%e5106751908%_
                                             (gx#syntax-e _%tl5103352079%_)))
                                        (let ((_%tl5106951915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5106751908%_)))
                                              (_%hd5106851912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5106751908%_))))
                                          (if (gx#stx-pair? _%tl5106951915%_)
                                              (let ((_%e5107051918%_
                                                     (gx#syntax-e
                                                      _%tl5106951915%_)))
                                                (let ((_%tl5107251925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5107051918%_)))
                                                      (_%hd5107151922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5107051918%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5107251925%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5102152039%_)
                                                          (let ((_%__splice9122891229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5102152039%_ '0)))
                    (let ((_%tl5107551931%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9122891229%_ '1)))
                          (_%target5107351928%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9122891229%_ '0))))
                      (if (gx#stx-null? _%tl5107551931%_)
                          (_%__match9135891359%_
                           _%e5101652022%_
                           _%hd5101752026%_
                           _%tl5101852029%_
                           _%e5101952032%_
                           _%hd5102052036%_
                           _%tl5102152039%_
                           _%e5102252042%_
                           _%hd5102352046%_
                           _%tl5102452049%_
                           _%e5102552052%_
                           _%hd5102652056%_
                           _%tl5102752059%_
                           _%e5102852062%_
                           _%hd5102952066%_
                           _%tl5103052069%_
                           _%e5103152072%_
                           _%hd5103252076%_
                           _%tl5103352079%_
                           _%e5106751908%_
                           _%hd5106851912%_
                           _%tl5106951915%_
                           _%e5107051918%_
                           _%hd5107151922%_
                           _%tl5107251925%_
                           _%__splice9122891229%_
                           _%target5107351928%_
                           _%tl5107551931%_)
                          (if (gx#stx-pair? _%hd5102352046%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5102352046%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_))))))
                  (if (gx#stx-pair? _%hd5102352046%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
              (if (gx#stx-pair? _%hd5102352046%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5102152039%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5102152039%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5101652022%_
                                   _%hd5101752026%_
                                   _%tl5101852029%_
                                   _%e5101952032%_
                                   _%hd5102052036%_
                                   _%tl5102152039%_
                                   _%e5102252042%_
                                   _%hd5102352046%_
                                   _%tl5102452049%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5102652056%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g97503_|
                                                       _%hd5102652056%_)
                                                      (if (gx#stx-null?
                                                           _%tl5106951915%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5102152039%_)
                                                              (let ((_%__splice9124091241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5102152039%_
                              '0)))
                        (let ((_%tl5116551490%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124091241%_ '1)))
                              (_%target5116351487%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124091241%_ '0))))
                          (if (gx#stx-null? _%tl5116551490%_)
                              (_%__match9149891499%_
                               _%e5101652022%_
                               _%hd5101752026%_
                               _%tl5101852029%_
                               _%e5101952032%_
                               _%hd5102052036%_
                               _%tl5102152039%_
                               _%e5102252042%_
                               _%hd5102352046%_
                               _%tl5102452049%_
                               _%e5102552052%_
                               _%hd5102652056%_
                               _%tl5102752059%_
                               _%e5102852062%_
                               _%hd5102952066%_
                               _%tl5103052069%_
                               _%e5103152072%_
                               _%hd5103252076%_
                               _%tl5103352079%_
                               _%e5106751908%_
                               _%hd5106851912%_
                               _%tl5106951915%_
                               _%__splice9124091241%_
                               _%target5116351487%_
                               _%tl5116551490%_)
                              (if (gx#stx-pair? _%hd5102352046%_)
                                  (let ((_%e5118551337%_
                                         (gx#syntax-e _%hd5102352046%_)))
                                    (let ((_%tl5118751344%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5118551337%_)))
                                          (_%hd5118651341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5118551337%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))))
                      (if (gx#stx-pair? _%hd5102352046%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5102352046%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                  (if (gx#stx-pair? _%hd5102352046%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (if (gx#stx-pair/null? _%tl5102152039%_)
                              (let ((_%__splice9124491245%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5102152039%_
                                      '0)))
                                (let ((_%tl5119051350%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '1)))
                                      (_%target5118851347%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9124491245%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5119051350%_)
                                      (_%__match9153091531%_
                                       _%e5101652022%_
                                       _%hd5101752026%_
                                       _%tl5101852029%_
                                       _%e5101952032%_
                                       _%hd5102052036%_
                                       _%tl5102152039%_
                                       _%e5102252042%_
                                       _%hd5102352046%_
                                       _%tl5102452049%_
                                       _%e5118551337%_
                                       _%hd5118651341%_
                                       _%tl5118751344%_
                                       _%__splice9124491245%_
                                       _%target5118851347%_
                                       _%tl5119051350%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
              (if (gx#stx-pair? _%hd5102352046%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5102152039%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5102152039%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5101652022%_
                                   _%hd5101752026%_
                                   _%tl5101852029%_
                                   _%e5101952032%_
                                   _%hd5102052036%_
                                   _%tl5102152039%_
                                   _%e5102252042%_
                                   _%hd5102352046%_
                                   _%tl5102452049%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5102352046%_)
                                                      (let ((_%e5118551337%_
                                                             (gx#syntax-e
                                                              _%hd5102352046%_)))
                                                        (let ((_%tl5118751344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5118551337%_)))
                      (_%hd5118651341%_
                       (let () (declare (not safe)) (##car _%e5118551337%_))))
                  (if (gx#stx-pair/null? _%tl5102152039%_)
                      (let ((_%__splice9124491245%_
                             (gx#syntax-split-splice->vector
                              _%tl5102152039%_
                              '0)))
                        (let ((_%tl5119051350%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '1)))
                              (_%target5118851347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '0))))
                          (if (gx#stx-null? _%tl5119051350%_)
                              (_%__match9153091531%_
                               _%e5101652022%_
                               _%hd5101752026%_
                               _%tl5101852029%_
                               _%e5101952032%_
                               _%hd5102052036%_
                               _%tl5102152039%_
                               _%e5102252042%_
                               _%hd5102352046%_
                               _%tl5102452049%_
                               _%e5118551337%_
                               _%hd5118651341%_
                               _%tl5118751344%_
                               _%__splice9124491245%_
                               _%target5118851347%_
                               _%tl5119051350%_)
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5102352046%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5102352046%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5102152039%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5102152039%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5101652022%_
                                                           _%hd5101752026%_
                                                           _%tl5101852029%_
                                                           _%e5101952032%_
                                                           _%hd5102052036%_
                                                           _%tl5102152039%_
                                                           _%e5102252042%_
                                                           _%hd5102352046%_
                                                           _%tl5102452049%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                  (if (gx#identifier? _%hd5102652056%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97503_|
                                           _%hd5102652056%_)
                                          (if (gx#stx-pair? _%tl5103352079%_)
                                              (let ((_%e5116051477%_
                                                     (gx#syntax-e
                                                      _%tl5103352079%_)))
                                                (let ((_%tl5116251484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5116051477%_)))
                                                      (_%hd5116151481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5116051477%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5116251484%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5102152039%_)
                                                          (let ((_%__splice9124091241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5102152039%_ '0)))
                    (let ((_%tl5116551490%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124091241%_ '1)))
                          (_%target5116351487%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124091241%_ '0))))
                      (if (gx#stx-null? _%tl5116551490%_)
                          (_%__match9149891499%_
                           _%e5101652022%_
                           _%hd5101752026%_
                           _%tl5101852029%_
                           _%e5101952032%_
                           _%hd5102052036%_
                           _%tl5102152039%_
                           _%e5102252042%_
                           _%hd5102352046%_
                           _%tl5102452049%_
                           _%e5102552052%_
                           _%hd5102652056%_
                           _%tl5102752059%_
                           _%e5102852062%_
                           _%hd5102952066%_
                           _%tl5103052069%_
                           _%e5103152072%_
                           _%hd5103252076%_
                           _%tl5103352079%_
                           _%e5116051477%_
                           _%hd5116151481%_
                           _%tl5116251484%_
                           _%__splice9124091241%_
                           _%target5116351487%_
                           _%tl5116551490%_)
                          (if (gx#stx-pair? _%hd5102352046%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5102352046%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_))))))
                  (if (gx#stx-pair? _%hd5102352046%_)
                      (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                        (let ((_%tl5118751344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5118551337%_)))
                              (_%hd5118651341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5118551337%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
              (if (gx#stx-pair? _%hd5102352046%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (if (gx#stx-pair/null? _%tl5102152039%_)
                          (let ((_%__splice9124491245%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5102152039%_
                                  '0)))
                            (let ((_%tl5119051350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9124491245%_ '1)))
                                  (_%target5118851347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9124491245%_
                                      '0))))
                              (if (gx#stx-null? _%tl5119051350%_)
                                  (_%__match9153091531%_
                                   _%e5101652022%_
                                   _%hd5101752026%_
                                   _%tl5101852029%_
                                   _%e5101952032%_
                                   _%hd5102052036%_
                                   _%tl5102152039%_
                                   _%e5102252042%_
                                   _%hd5102352046%_
                                   _%tl5102452049%_
                                   _%e5118551337%_
                                   _%hd5118651341%_
                                   _%tl5118751344%_
                                   _%__splice9124491245%_
                                   _%target5118851347%_
                                   _%tl5119051350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5102352046%_)
                                                  (let ((_%e5118551337%_
                                                         (gx#syntax-e
                                                          _%hd5102352046%_)))
                                                    (let ((_%tl5118751344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5118551337%_)))
                                                          (_%hd5118651341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5118551337%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5102152039%_)
                                                          (let ((_%__splice9124491245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5102152039%_ '0)))
                    (let ((_%tl5119051350%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '1)))
                          (_%target5118851347%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9124491245%_ '0))))
                      (if (gx#stx-null? _%tl5119051350%_)
                          (_%__match9153091531%_
                           _%e5101652022%_
                           _%hd5101752026%_
                           _%tl5101852029%_
                           _%e5101952032%_
                           _%hd5102052036%_
                           _%tl5102152039%_
                           _%e5102252042%_
                           _%hd5102352046%_
                           _%tl5102452049%_
                           _%e5118551337%_
                           _%hd5118651341%_
                           _%tl5118751344%_
                           _%__splice9124491245%_
                           _%target5118851347%_
                           _%tl5119051350%_)
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_))))
                                          (if (gx#stx-pair? _%hd5102352046%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5102352046%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5102152039%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5102152039%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5101652022%_
                       _%hd5101752026%_
                       _%tl5101852029%_
                       _%e5101952032%_
                       _%hd5102052036%_
                       _%tl5102152039%_
                       _%e5102252042%_
                       _%hd5102352046%_
                       _%tl5102452049%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                      (if (gx#stx-pair? _%hd5102352046%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5102352046%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5102152039%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5102152039%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5101652022%_
                                                           _%hd5101752026%_
                                                           _%tl5101852029%_
                                                           _%e5101952032%_
                                                           _%hd5102052036%_
                                                           _%tl5102152039%_
                                                           _%e5102252042%_
                                                           _%hd5102352046%_
                                                           _%tl5102452049%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                              (if (gx#identifier? _%hd5102652056%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97503_|
                                       _%hd5102652056%_)
                                      (if (gx#stx-pair? _%tl5103352079%_)
                                          (let ((_%e5116051477%_
                                                 (gx#syntax-e
                                                  _%tl5103352079%_)))
                                            (let ((_%tl5116251484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5116051477%_)))
                                                  (_%hd5116151481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5116051477%_))))
                                              (if (gx#stx-null?
                                                   _%tl5116251484%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5102152039%_)
                                                      (let ((_%__splice9124091241%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5102152039%_
                                                              '0)))
                                                        (let ((_%tl5116551490%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124091241%_ '1)))
                      (_%target5116351487%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124091241%_ '0))))
                  (if (gx#stx-null? _%tl5116551490%_)
                      (_%__match9149891499%_
                       _%e5101652022%_
                       _%hd5101752026%_
                       _%tl5101852029%_
                       _%e5101952032%_
                       _%hd5102052036%_
                       _%tl5102152039%_
                       _%e5102252042%_
                       _%hd5102352046%_
                       _%tl5102452049%_
                       _%e5102552052%_
                       _%hd5102652056%_
                       _%tl5102752059%_
                       _%e5102852062%_
                       _%hd5102952066%_
                       _%tl5103052069%_
                       _%e5103152072%_
                       _%hd5103252076%_
                       _%tl5103352079%_
                       _%e5116051477%_
                       _%hd5116151481%_
                       _%tl5116251484%_
                       _%__splice9124091241%_
                       _%target5116351487%_
                       _%tl5116551490%_)
                      (if (gx#stx-pair? _%hd5102352046%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5102352046%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                          (let () (declare (not safe)) (_%g5100951218%_))))))
              (if (gx#stx-pair? _%hd5102352046%_)
                  (let ((_%e5118551337%_ (gx#syntax-e _%hd5102352046%_)))
                    (let ((_%tl5118751344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5118551337%_)))
                          (_%hd5118651341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5118551337%_))))
                      (let () (declare (not safe)) (_%g5100951218%_))))
                  (let () (declare (not safe)) (_%g5100951218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5102352046%_)
                                                      (let ((_%e5118551337%_
                                                             (gx#syntax-e
                                                              _%hd5102352046%_)))
                                                        (let ((_%tl5118751344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5118551337%_)))
                      (_%hd5118651341%_
                       (let () (declare (not safe)) (##car _%e5118551337%_))))
                  (if (gx#stx-pair/null? _%tl5102152039%_)
                      (let ((_%__splice9124491245%_
                             (gx#syntax-split-splice->vector
                              _%tl5102152039%_
                              '0)))
                        (let ((_%tl5119051350%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '1)))
                              (_%target5118851347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '0))))
                          (if (gx#stx-null? _%tl5119051350%_)
                              (_%__match9153091531%_
                               _%e5101652022%_
                               _%hd5101752026%_
                               _%tl5101852029%_
                               _%e5101952032%_
                               _%hd5102052036%_
                               _%tl5102152039%_
                               _%e5102252042%_
                               _%hd5102352046%_
                               _%tl5102452049%_
                               _%e5118551337%_
                               _%hd5118651341%_
                               _%tl5118751344%_
                               _%__splice9124491245%_
                               _%target5118851347%_
                               _%tl5119051350%_)
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5102352046%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5102352046%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5102152039%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5102152039%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5101652022%_
                       _%hd5101752026%_
                       _%tl5101852029%_
                       _%e5101952032%_
                       _%hd5102052036%_
                       _%tl5102152039%_
                       _%e5102252042%_
                       _%hd5102352046%_
                       _%tl5102452049%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))
                                      (if (gx#stx-pair? _%hd5102352046%_)
                                          (let ((_%e5118551337%_
                                                 (gx#syntax-e
                                                  _%hd5102352046%_)))
                                            (let ((_%tl5118751344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5118551337%_)))
                                                  (_%hd5118651341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5118551337%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5102152039%_)
                                                  (let ((_%__splice9124491245%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5102152039%_
                                                          '0)))
                                                    (let ((_%tl5119051350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '1)))
                                                          (_%target5118851347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9124491245%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5119051350%_)
                                                          (_%__match9153091531%_
                                                           _%e5101652022%_
                                                           _%hd5101752026%_
                                                           _%tl5101852029%_
                                                           _%e5101952032%_
                                                           _%hd5102052036%_
                                                           _%tl5102152039%_
                                                           _%e5102252042%_
                                                           _%hd5102352046%_
                                                           _%tl5102452049%_
                                                           _%e5118551337%_
                                                           _%hd5118651341%_
                                                           _%tl5118751344%_
                                                           _%__splice9124491245%_
                                                           _%target5118851347%_
                                                           _%tl5119051350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5100951218%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                  (if (gx#stx-pair? _%hd5102352046%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5102352046%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5102152039%_)
                                              (let ((_%__splice9124491245%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5102152039%_
                                                      '0)))
                                                (let ((_%tl5119051350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '1)))
                                                      (_%target5118851347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9124491245%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5119051350%_)
                                                      (_%__match9153091531%_
                                                       _%e5101652022%_
                                                       _%hd5101752026%_
                                                       _%tl5101852029%_
                                                       _%e5101952032%_
                                                       _%hd5102052036%_
                                                       _%tl5102152039%_
                                                       _%e5102252042%_
                                                       _%hd5102352046%_
                                                       _%tl5102452049%_
                                                       _%e5118551337%_
                                                       _%hd5118651341%_
                                                       _%tl5118751344%_
                                                       _%__splice9124491245%_
                                                       _%target5118851347%_
                                                       _%tl5119051350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5100951218%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))))
                  (if (gx#stx-null? _%tl5103052069%_)
                      (if (gx#stx-pair/null? _%tl5102152039%_)
                          (let ((_%__splice9123291233%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5102152039%_
                                  '0)))
                            (let ((_%tl5110351750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9123291233%_ '1)))
                                  (_%target5110151747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9123291233%_
                                      '0))))
                              (if (gx#stx-null? _%tl5110351750%_)
                                  (_%__match9139891399%_
                                   _%e5101652022%_
                                   _%hd5101752026%_
                                   _%tl5101852029%_
                                   _%e5101952032%_
                                   _%hd5102052036%_
                                   _%tl5102152039%_
                                   _%e5102252042%_
                                   _%hd5102352046%_
                                   _%tl5102452049%_
                                   _%e5102552052%_
                                   _%hd5102652056%_
                                   _%tl5102752059%_
                                   _%e5102852062%_
                                   _%hd5102952066%_
                                   _%tl5103052069%_
                                   _%__splice9123291233%_
                                   _%target5110151747%_
                                   _%tl5110351750%_)
                                  (if (gx#stx-pair? _%hd5102352046%_)
                                      (let ((_%e5118551337%_
                                             (gx#syntax-e _%hd5102352046%_)))
                                        (let ((_%tl5118751344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5118551337%_)))
                                              (_%hd5118651341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5118551337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))
                          (if (gx#stx-pair? _%hd5102352046%_)
                              (let ((_%e5118551337%_
                                     (gx#syntax-e _%hd5102352046%_)))
                                (let ((_%tl5118751344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118551337%_)))
                                      (_%hd5118651341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118551337%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_))))
                              (let () (declare (not safe)) (_%g5100951218%_))))
                      (if (gx#stx-pair? _%hd5102352046%_)
                          (let ((_%e5118551337%_
                                 (gx#syntax-e _%hd5102352046%_)))
                            (let ((_%tl5118751344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118551337%_)))
                                  (_%hd5118651341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118551337%_))))
                              (if (gx#stx-pair/null? _%tl5102152039%_)
                                  (let ((_%__splice9124491245%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5102152039%_
                                          '0)))
                                    (let ((_%tl5119051350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '1)))
                                          (_%target5118851347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9124491245%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5119051350%_)
                                          (_%__match9153091531%_
                                           _%e5101652022%_
                                           _%hd5101752026%_
                                           _%tl5101852029%_
                                           _%e5101952032%_
                                           _%hd5102052036%_
                                           _%tl5102152039%_
                                           _%e5102252042%_
                                           _%hd5102352046%_
                                           _%tl5102452049%_
                                           _%e5118551337%_
                                           _%hd5118651341%_
                                           _%tl5118751344%_
                                           _%__splice9124491245%_
                                           _%target5118851347%_
                                           _%tl5119051350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5100951218%_)))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5102352046%_)
                                                      (let ((_%e5118551337%_
                                                             (gx#syntax-e
                                                              _%hd5102352046%_)))
                                                        (let ((_%tl5118751344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5118551337%_)))
                      (_%hd5118651341%_
                       (let () (declare (not safe)) (##car _%e5118551337%_))))
                  (if (gx#stx-pair/null? _%tl5102152039%_)
                      (let ((_%__splice9124491245%_
                             (gx#syntax-split-splice->vector
                              _%tl5102152039%_
                              '0)))
                        (let ((_%tl5119051350%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '1)))
                              (_%target5118851347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9124491245%_ '0))))
                          (if (gx#stx-null? _%tl5119051350%_)
                              (_%__match9153091531%_
                               _%e5101652022%_
                               _%hd5101752026%_
                               _%tl5101852029%_
                               _%e5101952032%_
                               _%hd5102052036%_
                               _%tl5102152039%_
                               _%e5102252042%_
                               _%hd5102352046%_
                               _%tl5102452049%_
                               _%e5118551337%_
                               _%hd5118651341%_
                               _%tl5118751344%_
                               _%__splice9124491245%_
                               _%target5118851347%_
                               _%tl5119051350%_)
                              (let ()
                                (declare (not safe))
                                (_%g5100951218%_)))))
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5102352046%_)
                                              (let ((_%e5118551337%_
                                                     (gx#syntax-e
                                                      _%hd5102352046%_)))
                                                (let ((_%tl5118751344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5118551337%_)))
                                                      (_%hd5118651341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5118551337%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5102152039%_)
                                                      (let ((_%__splice9124491245%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5102152039%_
                                                              '0)))
                                                        (let ((_%tl5119051350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '1)))
                      (_%target5118851347%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9124491245%_ '0))))
                  (if (gx#stx-null? _%tl5119051350%_)
                      (_%__match9153091531%_
                       _%e5101652022%_
                       _%hd5101752026%_
                       _%tl5101852029%_
                       _%e5101952032%_
                       _%hd5102052036%_
                       _%tl5102152039%_
                       _%e5102252042%_
                       _%hd5102352046%_
                       _%tl5102452049%_
                       _%e5118551337%_
                       _%hd5118651341%_
                       _%tl5118751344%_
                       _%__splice9124491245%_
                       _%target5118851347%_
                       _%tl5119051350%_)
                      (let () (declare (not safe)) (_%g5100951218%_)))))
              (let () (declare (not safe)) (_%g5100951218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5100951218%_))))))
                                  (if (gx#stx-null? _%hd5102052036%_)
                                      (if (gx#stx-pair/null? _%tl5102152039%_)
                                          (let ((_%__splice9124891249%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5102152039%_
                                                  '0)))
                                            (let ((_%tl5120651248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9124891249%_
                                                      '1)))
                                                  (_%target5120451245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9124891249%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5120651248%_)
                                                  (_%__match9155291553%_
                                                   _%e5101652022%_
                                                   _%hd5101752026%_
                                                   _%tl5101852029%_
                                                   _%e5101952032%_
                                                   _%hd5102052036%_
                                                   _%tl5102152039%_
                                                   _%__splice9124891249%_
                                                   _%target5120451245%_
                                                   _%tl5120651248%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5100951218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5100951218%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5100951218%_))))))
                          (let () (declare (not safe)) (_%g5100951218%_)))))
                  (let () (declare (not safe)) (_%g5100951218%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52178%_)
        (let* ((_%g5218252216%_
                (lambda (_%g5218352212%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5218352212%_)))
               (_%g5218152337%_
                (lambda (_%g5218352220%_)
                  (if (gx#stx-pair? _%g5218352220%_)
                      (let ((_%e5218752223%_ (gx#syntax-e _%g5218352220%_)))
                        (let ((_%hd5218852227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5218752223%_)))
                              (_%tl5218952230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5218752223%_))))
                          (if (gx#stx-pair? _%tl5218952230%_)
                              (let ((_%e5219052233%_
                                     (gx#syntax-e _%tl5218952230%_)))
                                (let ((_%hd5219152237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219052233%_)))
                                      (_%tl5219252240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219052233%_))))
                                  (if (gx#stx-pair? _%hd5219152237%_)
                                      (let ((_%e5219352243%_
                                             (gx#syntax-e _%hd5219152237%_)))
                                        (let ((_%hd5219452247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219352243%_)))
                                              (_%tl5219552250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219352243%_))))
                                          (if (gx#stx-pair? _%tl5219552250%_)
                                              (let ((_%e5219652253%_
                                                     (gx#syntax-e
                                                      _%tl5219552250%_)))
                                                (let ((_%hd5219752257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219652253%_)))
                                                      (_%tl5219852260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219652253%_))))
                                                  (if (gx#identifier?
                                                       _%hd5219752257%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97505_|
                                                           _%hd5219752257%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5219852260%_)
                                                              (let ((_%e5219952263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5219852260%_)))
                        (let ((_%hd5220052267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219952263%_)))
                              (_%tl5220152270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219952263%_))))
                          (if (gx#stx-null? _%tl5220152270%_)
                              (if (gx#stx-pair/null? _%tl5219252240%_)
                                  (let ((_g97506_
                                         (gx#syntax-split-splice
                                          _%tl5219252240%_
                                          '0)))
                                    (begin
                                      (let ((_g97507_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g97506_)
                                                   (##values-length _g97506_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g97507_ 2)))
                                            (error "Context expects 2 values"
                                                   _g97507_)))
                                      (let ((_%target5220252273%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97506_ 0)))
                                            (_%tl5220452276%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g97506_ 1))))
                                        (if (gx#stx-null? _%tl5220452276%_)
                                            (letrec ((_%loop5220552279%_
                                                      (lambda (_%hd5220352283%_
                                                               _%body5220952286%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5220352283%_)
                                                            (let ((_%e5220652288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5220352283%_)))
                      (let ((_%lp-hd5220752292%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5220652288%_)))
                            (_%lp-tl5220852295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5220652288%_))))
                        (_%loop5220552279%_
                         _%lp-tl5220852295%_
                         (cons _%lp-hd5220752292%_ _%body5220952286%_))))
                    (let ((_%body5221052298%_ (reverse _%body5220952286%_)))
                      ((lambda (_%g5218452301%_
                                _%g5218552303%_
                                _%g5218652304%_)
                         (if (gx#identifier? _%g5218652304%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5218552303%_
                                               (cons _%g5218652304%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5232852331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5232952334%_)
                            (cons _%g5232852331%_ _%g5232952334%_))
                          '()
                          _%g5218452301%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5218652304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5218552303%_ (cons _%g5218652304%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5218252216%_ _%g5218352220%_)))
                       _%body5221052298%_
                       _%hd5220052267%_
                       _%hd5219452247%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5220552279%_
                                               _%target5220252273%_
                                               '()))
                                            (_%g5218252216%_
                                             _%g5218352220%_)))))
                                  (_%g5218252216%_ _%g5218352220%_))
                              (_%g5218252216%_ _%g5218352220%_))))
                      (_%g5218252216%_ _%g5218352220%_))
                  (_%g5218252216%_ _%g5218352220%_))
              (_%g5218252216%_ _%g5218352220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5218252216%_
                                               _%g5218352220%_))))
                                      (_%g5218252216%_ _%g5218352220%_))))
                              (_%g5218252216%_ _%g5218352220%_))))
                      (_%g5218252216%_ _%g5218352220%_)))))
          (_%g5218152337%_ _%$stx52178%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass52901%_ _%slot52903%_)
        (let ((_%$e52905%_
               (let ((__obj97309 _%klass52901%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97309
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97309 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97309
                      'slot-types)))))
          (if _%$e52905%_
              ((lambda (_%slot-types52909%_)
                 (agetq _%slot52903%_ _%slot-types52909%_))
               _%$e52905%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass52882%_ _%slot52884%_)
        (let ((_%$e52886%_
               (let ((__obj97310 _%klass52882%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97310
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97310 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97310
                      'slot-defaults)))))
          (if _%$e52886%_
              ((lambda (_%slot-defaults52890%_)
                 (let ((_%$e52893%_
                        (agetq _%slot52884%_ _%slot-defaults52890%_)))
                   (if _%$e52893%_
                       (gx#syntax-local-introduce _%$e52893%_)
                       '#f)))
               _%$e52886%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass52863%_ _%slot52865%_)
        (let ((_%$e52867%_
               (let ((__obj97311 _%klass52863%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj97311
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj97311 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj97311
                      'slot-defaults)))))
          (if _%$e52867%_
              ((lambda (_%slot-defaults52871%_)
                 (let ((_%$e52874%_
                        (agetq _%slot52865%_ _%slot-defaults52871%_)))
                   (if _%$e52874%_
                       (gx#syntax-local-introduce _%$e52874%_)
                       '#f)))
               _%$e52867%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52632%_ _%slot52634%_)
        (let ((_%contract5263552637%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52632%_
                _%slot52634%_)))
          (if _%contract5263552637%_
              (let* ((_%contract52640%_ _%contract5263552637%_)
                     (_%__stx9155591556%_ _%contract52640%_)
                     (_%g5264552682%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9155591556%_))))
                (let ((_%__kont9155891559%_
                       (lambda (_%g5264752832%_ _%g5264852834%_)
                         (not (gx#free-identifier=?
                               _%g5264852834%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9156091561%_
                       (lambda (_%g5265552772%_
                                _%g5265652774%_
                                _%g5265752775%_)
                         (not (gx#free-identifier=?
                               _%g5265652774%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9156291563%_ (lambda (_%g5267052709%_) '#f)))
                  (let* ((_%__match9160891609%_
                          (lambda (_%e5265852732%_
                                   _%hd5265952736%_
                                   _%tl5266052739%_
                                   _%e5266152742%_
                                   _%hd5266252746%_
                                   _%tl5266352749%_
                                   _%e5266452752%_
                                   _%hd5266552756%_
                                   _%tl5266652759%_
                                   _%e5266752762%_
                                   _%hd5266852766%_
                                   _%tl5266952769%_)
                            (let ((_%g5265552772%_ _%hd5266852766%_)
                                  (_%g5265652774%_ _%hd5266552756%_)
                                  (_%g5265752775%_ _%hd5266252746%_))
                              (if (and (gx#identifier? _%g5265652774%_)
                                       (or (gx#free-identifier=?
                                            _%g5265652774%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5265652774%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5265652774%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5265652774%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9156091561%_
                                   _%g5265552772%_
                                   _%g5265652774%_
                                   _%g5265752775%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5264552682%_))))))
                         (_%__match9157891579%_
                          (lambda (_%e5264952812%_
                                   _%hd5265052816%_
                                   _%tl5265152819%_
                                   _%e5265252822%_
                                   _%hd5265352826%_
                                   _%tl5265452829%_)
                            (let ((_%g5264752832%_ _%hd5265352826%_)
                                  (_%g5264852834%_ _%hd5265052816%_))
                              (if (and (gx#identifier? _%g5264852834%_)
                                       (or (gx#free-identifier=?
                                            _%g5264852834%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5264852834%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5264852834%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5264852834%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9155891559%_
                                   _%g5264752832%_
                                   _%g5264852834%_)
                                  (if (gx#identifier? _%hd5265052816%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97508_|
                                           _%hd5265052816%_)
                                          (_%__kont9156291563%_
                                           _%hd5265352826%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5264552682%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5264552682%_))))))))
                    (if (gx#stx-pair? _%__stx9155591556%_)
                        (let ((_%e5264952812%_
                               (gx#syntax-e _%__stx9155591556%_)))
                          (let ((_%tl5265152819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5264952812%_)))
                                (_%hd5265052816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5264952812%_))))
                            (if (gx#stx-pair? _%tl5265152819%_)
                                (let ((_%e5265252822%_
                                       (gx#syntax-e _%tl5265152819%_)))
                                  (let ((_%tl5265452829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5265252822%_)))
                                        (_%hd5265352826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5265252822%_))))
                                    (if (gx#stx-null? _%tl5265452829%_)
                                        (_%__match9157891579%_
                                         _%e5264952812%_
                                         _%hd5265052816%_
                                         _%tl5265152819%_
                                         _%e5265252822%_
                                         _%hd5265352826%_
                                         _%tl5265452829%_)
                                        (if (gx#identifier? _%hd5265052816%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97508_|
                                                 _%hd5265052816%_)
                                                (if (gx#stx-pair?
                                                     _%tl5265452829%_)
                                                    (let ((_%e5266452752%_
                                                           (gx#syntax-e
                                                            _%tl5265452829%_)))
                                                      (let ((_%tl5266652759%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5266452752%_)))
                    (_%hd5266552756%_
                     (let () (declare (not safe)) (##car _%e5266452752%_))))
                (if (gx#stx-pair? _%tl5266652759%_)
                    (let ((_%e5266752762%_ (gx#syntax-e _%tl5266652759%_)))
                      (let ((_%tl5266952769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5266752762%_)))
                            (_%hd5266852766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5266752762%_))))
                        (if (gx#stx-null? _%tl5266952769%_)
                            (_%__match9160891609%_
                             _%e5264952812%_
                             _%hd5265052816%_
                             _%tl5265152819%_
                             _%e5265252822%_
                             _%hd5265352826%_
                             _%tl5265452829%_
                             _%e5266452752%_
                             _%hd5266552756%_
                             _%tl5266652759%_
                             _%e5266752762%_
                             _%hd5266852766%_
                             _%tl5266952769%_)
                            (let () (declare (not safe)) (_%g5264552682%_)))))
                    (let () (declare (not safe)) (_%g5264552682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5264552682%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5264552682%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5264552682%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5264552682%_)))))
                        (let () (declare (not safe)) (_%g5264552682%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52401%_ _%slot52403%_)
        (let ((_%contract5240452406%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52401%_
                _%slot52403%_)))
          (if _%contract5240452406%_
              (let* ((_%contract52409%_ _%contract5240452406%_)
                     (_%__stx9162991630%_ _%contract52409%_)
                     (_%g5241452451%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9162991630%_))))
                (let ((_%__kont9163291633%_
                       (lambda (_%g5241652601%_ _%g5241752603%_)
                         (not (gx#free-identifier=?
                               _%g5241752603%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9163491635%_
                       (lambda (_%g5242452541%_
                                _%g5242552543%_
                                _%g5242652544%_)
                         '#t))
                      (_%__kont9163691637%_ (lambda (_%g5243952478%_) '#t)))
                  (let* ((_%__match9168291683%_
                          (lambda (_%e5242752501%_
                                   _%hd5242852505%_
                                   _%tl5242952508%_
                                   _%e5243052511%_
                                   _%hd5243152515%_
                                   _%tl5243252518%_
                                   _%e5243352521%_
                                   _%hd5243452525%_
                                   _%tl5243552528%_
                                   _%e5243652531%_
                                   _%hd5243752535%_
                                   _%tl5243852538%_)
                            (let ((_%g5242452541%_ _%hd5243752535%_)
                                  (_%g5242552543%_ _%hd5243452525%_)
                                  (_%g5242652544%_ _%hd5243152515%_))
                              (if (and (gx#identifier? _%g5242552543%_)
                                       (or (gx#free-identifier=?
                                            _%g5242552543%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5242552543%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5242552543%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5242552543%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9163491635%_
                                   _%g5242452541%_
                                   _%g5242552543%_
                                   _%g5242652544%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5241452451%_))))))
                         (_%__match9165291653%_
                          (lambda (_%e5241852581%_
                                   _%hd5241952585%_
                                   _%tl5242052588%_
                                   _%e5242152591%_
                                   _%hd5242252595%_
                                   _%tl5242352598%_)
                            (let ((_%g5241652601%_ _%hd5242252595%_)
                                  (_%g5241752603%_ _%hd5241952585%_))
                              (if (and (gx#identifier? _%g5241752603%_)
                                       (or (gx#free-identifier=?
                                            _%g5241752603%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5241752603%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5241752603%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5241752603%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9163291633%_
                                   _%g5241652601%_
                                   _%g5241752603%_)
                                  (if (gx#identifier? _%hd5241952585%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g97509_|
                                           _%hd5241952585%_)
                                          (_%__kont9163691637%_
                                           _%hd5242252595%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5241452451%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5241452451%_))))))))
                    (if (gx#stx-pair? _%__stx9162991630%_)
                        (let ((_%e5241852581%_
                               (gx#syntax-e _%__stx9162991630%_)))
                          (let ((_%tl5242052588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5241852581%_)))
                                (_%hd5241952585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5241852581%_))))
                            (if (gx#stx-pair? _%tl5242052588%_)
                                (let ((_%e5242152591%_
                                       (gx#syntax-e _%tl5242052588%_)))
                                  (let ((_%tl5242352598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5242152591%_)))
                                        (_%hd5242252595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5242152591%_))))
                                    (if (gx#stx-null? _%tl5242352598%_)
                                        (_%__match9165291653%_
                                         _%e5241852581%_
                                         _%hd5241952585%_
                                         _%tl5242052588%_
                                         _%e5242152591%_
                                         _%hd5242252595%_
                                         _%tl5242352598%_)
                                        (if (gx#identifier? _%hd5241952585%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g97509_|
                                                 _%hd5241952585%_)
                                                (if (gx#stx-pair?
                                                     _%tl5242352598%_)
                                                    (let ((_%e5243352521%_
                                                           (gx#syntax-e
                                                            _%tl5242352598%_)))
                                                      (let ((_%tl5243552528%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5243352521%_)))
                    (_%hd5243452525%_
                     (let () (declare (not safe)) (##car _%e5243352521%_))))
                (if (gx#stx-pair? _%tl5243552528%_)
                    (let ((_%e5243652531%_ (gx#syntax-e _%tl5243552528%_)))
                      (let ((_%tl5243852538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5243652531%_)))
                            (_%hd5243752535%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5243652531%_))))
                        (if (gx#stx-null? _%tl5243852538%_)
                            (_%__match9168291683%_
                             _%e5241852581%_
                             _%hd5241952585%_
                             _%tl5242052588%_
                             _%e5242152591%_
                             _%hd5242252595%_
                             _%tl5242352598%_
                             _%e5243352521%_
                             _%hd5243452525%_
                             _%tl5243552528%_
                             _%e5243652531%_
                             _%hd5243752535%_
                             _%tl5243852538%_)
                            (let () (declare (not safe)) (_%g5241452451%_)))))
                    (let () (declare (not safe)) (_%g5241452451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5241452451%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5241452451%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5241452451%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5241452451%_)))))
                        (let () (declare (not safe)) (_%g5241452451%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52388%_)
        (if (gx#identifier? _%id52388%_)
            (let* ((_%str52391%_ (symbol->string (gx#stx-e _%id52388%_)))
                   (_%index5239352395%_ (string-index _%str52391%_ '#\.)))
              (if _%index5239352395%_
                  (let ((_%index52398%_ _%index5239352395%_))
                    (if (let () (declare (not safe)) (##fx> _%index52398%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52391%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52381%_ _%id52383%_)
        (let ((_%parts52385%_
               (string-split (symbol->string (gx#stx-e _%id52383%_)) '#\.)))
          (if (find string-empty? _%parts52385%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52381%_
               _%id52383%_)
              (cons (gx#stx-identifier _%id52383%_ (car _%parts52385%_))
                    (map string->symbol (cdr _%parts52385%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52362%_ _%klass-or-id52364%_ _%slot52365%_)
        (let* ((_%klass52367%_
                (if (gx#identifier? _%klass-or-id52364%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52362%_
                       _%klass-or-id52364%_))
                    _%klass-or-id52364%_))
               (_%accessors52370%_
                (let ((__obj97312 _%klass52367%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97312
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97312 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj97312
                       'unchecked-accessors))))
               (_%$e52375%_ (agetq _%slot52365%_ _%accessors52370%_)))
          (if _%$e52375%_
              _%$e52375%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52362%_
               _%klass52367%_
               _%slot52365%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52342%_
               _%klass-or-id52344%_
               _%slot52345%_
               _%checked?52346%_)
        (let* ((_%klass52348%_
                (if (gx#identifier? _%klass-or-id52344%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52342%_
                       _%klass-or-id52344%_))
                    _%klass-or-id52344%_))
               (_%mutators52351%_
                (if _%checked?52346%_
                    (let ((__obj97313 _%klass52348%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97313
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97313 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97313
                           'mutators)))
                    (let ((__obj97314 _%klass52348%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97314
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97314 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97314
                           'unchecked-mutators)))))
               (_%$e52356%_ (agetq _%slot52345%_ _%mutators52351%_)))
          (if _%$e52356%_
              _%$e52356%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52342%_
               _%klass52348%_
               _%slot52345%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx52914%_)
        (letrec ((_%expand-body52917%_
                  (lambda (_%klass53815%_
                           _%var53817%_
                           _%Type53818%_
                           _%body53819%_
                           _%checked?53820%_)
                    (let* ((_%g5382253866%_
                            (lambda (_%g5382353862%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5382353862%_)))
                           (_%g5382154021%_
                            (lambda (_%g5382353870%_)
                              (if (gx#stx-pair? _%g5382353870%_)
                                  (let ((_%e5383153873%_
                                         (gx#syntax-e _%g5382353870%_)))
                                    (let ((_%hd5383253877%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5383153873%_)))
                                          (_%tl5383353880%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5383153873%_))))
                                      (if (gx#stx-pair? _%tl5383353880%_)
                                          (let ((_%e5383453883%_
                                                 (gx#syntax-e
                                                  _%tl5383353880%_)))
                                            (let ((_%hd5383553887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5383453883%_)))
                                                  (_%tl5383653890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5383453883%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5383653890%_)
                                                  (let ((_%e5383753893%_
                                                         (gx#syntax-e
                                                          _%tl5383653890%_)))
                                                    (let ((_%hd5383853897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5383753893%_)))
                                                          (_%tl5383953900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5383753893%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5383953900%_)
                                                          (let ((_%e5384053903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5383953900%_)))
                    (let ((_%hd5384153907%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5384053903%_)))
                          (_%tl5384253910%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5384053903%_))))
                      (if (gx#stx-pair? _%tl5384253910%_)
                          (let ((_%e5384353913%_
                                 (gx#syntax-e _%tl5384253910%_)))
                            (let ((_%hd5384453917%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5384353913%_)))
                                  (_%tl5384553920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5384353913%_))))
                              (if (gx#stx-pair? _%tl5384553920%_)
                                  (let ((_%e5384653923%_
                                         (gx#syntax-e _%tl5384553920%_)))
                                    (let ((_%hd5384753927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5384653923%_)))
                                          (_%tl5384853930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5384653923%_))))
                                      (if (gx#stx-pair? _%tl5384853930%_)
                                          (let ((_%e5384953933%_
                                                 (gx#syntax-e
                                                  _%tl5384853930%_)))
                                            (let ((_%hd5385053937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5384953933%_)))
                                                  (_%tl5385153940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5384953933%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5385053937%_)
                                                  (let ((_g97510_
                                                         (gx#syntax-split-splice
                                                          _%hd5385053937%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97510_)
                           (##values-length _g97510_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97511_ 2)))
                    (error "Context expects 2 values" _g97511_)))
              (let ((_%target5385253943%_
                     (let () (declare (not safe)) (##values-ref _g97510_ 0)))
                    (_%tl5385453946%_
                     (let () (declare (not safe)) (##values-ref _g97510_ 1))))
                (if (gx#stx-null? _%tl5385453946%_)
                    (letrec ((_%loop5385553949%_
                              (lambda (_%hd5385353953%_ _%body5385953956%_)
                                (if (gx#stx-pair? _%hd5385353953%_)
                                    (let ((_%e5385653958%_
                                           (gx#syntax-e _%hd5385353953%_)))
                                      (let ((_%lp-hd5385753962%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5385653958%_)))
                                            (_%lp-tl5385853965%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5385653958%_))))
                                        (_%loop5385553949%_
                                         _%lp-tl5385853965%_
                                         (cons _%lp-hd5385753962%_
                                               _%body5385953956%_))))
                                    (let ((_%body5386053968%_
                                           (reverse _%body5385953956%_)))
                                      (if (gx#stx-null? _%tl5385153940%_)
                                          ((lambda (_%g5382453971%_
                                                    _%g5382553973%_
                                                    _%g5382653974%_
                                                    _%g5382753975%_
                                                    _%g5382853976%_
                                                    _%g5382953977%_
                                                    _%g5383053978%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5382853976%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5382953977%_ '()))
                                         (cons _%g5382853976%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5383053978%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5382853976%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5382753975%_ '()))
                               (cons _%g5382653974%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5382553973%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5401254015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5401354018%_)
                      (cons _%g5401254015%_ _%g5401354018%_))
                    '()
                    _%g5382453971%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5386053968%_
                                           _%hd5384753927%_
                                           _%hd5384453917%_
                                           _%hd5384153907%_
                                           _%hd5383853897%_
                                           _%hd5383553887%_
                                           _%hd5383253877%_)
                                          (_%g5382253866%_
                                           _%g5382353870%_)))))))
                      (_%loop5385553949%_ _%target5385253943%_ '()))
                    (_%g5382253866%_ _%g5382353870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5382253866%_
                                                   _%g5382353870%_))))
                                          (_%g5382253866%_ _%g5382353870%_))))
                                  (_%g5382253866%_ _%g5382353870%_))))
                          (_%g5382253866%_ _%g5382353870%_))))
                  (_%g5382253866%_ _%g5382353870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5382253866%_
                                                   _%g5382353870%_))))
                                          (_%g5382253866%_ _%g5382353870%_))))
                                  (_%g5382253866%_ _%g5382353870%_)))))
                      (_%g5382154021%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj97315 _%klass53815%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97315
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97315
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj97315
                                    'type-descriptor)))
                             _%var53817%_
                             _%klass53815%_
                             _%checked?53820%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53819%_)))))
                 (_%expand52919%_
                  (lambda (_%var53707%_
                           _%Type53709%_
                           _%body53710%_
                           _%checked?53711%_
                           _%checked-mutators?53712%_
                           _%maybe?53713%_)
                    (let* ((_%klass53715%_
                            (gx#syntax-local-value _%Type53709%_ false))
                           (_%expr-body53722%_
                            (_%expand-body52917%_
                             _%klass53715%_
                             _%var53707%_
                             _%Type53709%_
                             _%body53710%_
                             (let ((_%$e53718%_ _%checked?53711%_))
                               (if _%$e53718%_
                                   _%$e53718%_
                                   _%checked-mutators?53712%_)))))
                      (if _%checked?53711%_
                          (let* ((_%g5372753746%_
                                  (lambda (_%g5372853742%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5372853742%_)))
                                 (_%g5372653808%_
                                  (lambda (_%g5372853750%_)
                                    (if (gx#stx-pair? _%g5372853750%_)
                                        (let ((_%e5373253753%_
                                               (gx#syntax-e _%g5372853750%_)))
                                          (let ((_%hd5373353757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5373253753%_)))
                                                (_%tl5373453760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5373253753%_))))
                                            (if (gx#stx-pair? _%tl5373453760%_)
                                                (let ((_%e5373553763%_
                                                       (gx#syntax-e
                                                        _%tl5373453760%_)))
                                                  (let ((_%hd5373653767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5373553763%_)))
                                                        (_%tl5373753770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5373553763%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5373753770%_)
                                                        (let ((_%e5373853773%_
                                                               (gx#syntax-e
                                                                _%tl5373753770%_)))
                                                          (let ((_%hd5373953777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5373853773%_)))
                        (_%tl5374053780%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5373853773%_))))
                    (if (gx#stx-null? _%tl5374053780%_)
                        ((lambda (_%g5372953783%_
                                  _%g5373053785%_
                                  _%g5373153786%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5373053785%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5373153786%_ '())))
                                       (cons _%g5372953783%_ '()))))
                         _%hd5373953777%_
                         _%hd5373653767%_
                         _%hd5373353757%_)
                        (_%g5372753746%_ _%g5372853750%_))))
                (_%g5372753746%_ _%g5372853750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5372753746%_
                                                 _%g5372853750%_))))
                                        (_%g5372753746%_ _%g5372853750%_)))))
                            (_%g5372653808%_
                             (list (let ((_%instance?53812%_
                                          (let ((__obj97316 _%klass53715%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj97316
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj97316
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj97316
                                                 'predicate)))))
                                     (if _%maybe?53713%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?53812%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?53812%_))
                                   _%var53707%_
                                   _%expr-body53722%_)))
                          _%expr-body53722%_)))))
          (let* ((_%__stx9170391704%_ _%stx52914%_)
                 (_%g5292553068%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9170391704%_))))
            (let ((_%__kont9170691707%_
                   (lambda (_%g5292753635%_
                            _%g5292853637%_
                            _%g5292953638%_
                            _%g5293053639%_)
                     (let* ((_%g5366453672%_
                             (lambda (_%g5366553668%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5366553668%_)))
                            (_%g5366353699%_
                             (lambda (_%g5366553676%_)
                               ((lambda (_%g5366653679%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5293053639%_
                                                    (cons _%g5292953638%_
                                                          (cons _%g5366653679%_
                                                                '())))
                                              (foldr (lambda (_%g5369053693%_
                                                              _%g5369153696%_)
                                                       (cons _%g5369053693%_
                                                             _%g5369153696%_))
                                                     '()
                                                     _%g5292753635%_))))
                                _%g5366553676%_))))
                       (_%g5366353699%_
                        (let ((__obj97317
                               (gx#syntax-local-value _%g5292853637%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97317
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97317
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97317
                               'identifier)))))))
                  (_%__kont9171091711%_
                   (lambda (_%g5295553515%_ _%g5295653517%_ _%g5295753518%_)
                     (_%expand52919%_
                      _%g5295753518%_
                      _%g5295653517%_
                      (foldr (lambda (_%g5354153544%_ _%g5354253547%_)
                               (cons _%g5354153544%_ _%g5354253547%_))
                             '()
                             _%g5295553515%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9171491715%_
                   (lambda (_%g5298253395%_ _%g5298353397%_ _%g5298453398%_)
                     (_%expand52919%_
                      _%g5298453398%_
                      _%g5298353397%_
                      (foldr (lambda (_%g5342153424%_ _%g5342253427%_)
                               (cons _%g5342153424%_ _%g5342253427%_))
                             '()
                             _%g5298253395%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9171891719%_
                   (lambda (_%g5300953275%_ _%g5301053277%_ _%g5301153278%_)
                     (_%expand52919%_
                      _%g5301153278%_
                      _%g5301053277%_
                      (foldr (lambda (_%g5330153304%_ _%g5330253307%_)
                               (cons _%g5330153304%_ _%g5330253307%_))
                             '()
                             _%g5300953275%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9172291723%_
                   (lambda (_%g5303653153%_ _%g5303753155%_ _%g5303853156%_)
                     (_%expand52919%_
                      _%g5303853156%_
                      _%g5303753155%_
                      (foldr (lambda (_%g5318153184%_ _%g5318253187%_)
                               (cons _%g5318153184%_ _%g5318253187%_))
                             '()
                             _%g5303653153%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9194291943%_
                      (lambda (_%e5303953075%_
                               _%hd5304053079%_
                               _%tl5304153082%_
                               _%e5304253085%_
                               _%hd5304353089%_
                               _%tl5304453092%_
                               _%e5304553095%_
                               _%hd5304653099%_
                               _%tl5304753102%_
                               _%e5304853105%_
                               _%hd5304953109%_
                               _%tl5305053112%_
                               _%e5305153115%_
                               _%hd5305253119%_
                               _%tl5305353122%_
                               _%__splice9172491725%_
                               _%target5305453125%_
                               _%tl5305653128%_)
                        (letrec ((_%loop5305753131%_
                                  (lambda (_%hd5305553135%_ _%body5306153138%_)
                                    (if (gx#stx-pair? _%hd5305553135%_)
                                        (let ((_%e5305853140%_
                                               (gx#syntax-e _%hd5305553135%_)))
                                          (let ((_%lp-tl5306053147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5305853140%_)))
                                                (_%lp-hd5305953144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5305853140%_))))
                                            (_%loop5305753131%_
                                             _%lp-tl5306053147%_
                                             (cons _%lp-hd5305953144%_
                                                   _%body5306153138%_))))
                                        (let ((_%body5306253150%_
                                               (reverse _%body5306153138%_)))
                                          (let ((_%g5303653153%_
                                                 _%body5306253150%_)
                                                (_%g5303753155%_
                                                 _%hd5305253119%_)
                                                (_%g5303853156%_
                                                 _%hd5304653099%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5303753155%_))
                                                (_%__kont9172291723%_
                                                 _%g5303653153%_
                                                 _%g5303753155%_
                                                 _%g5303853156%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5305753131%_ _%target5305453125%_ '()))))
                     (_%__match9189891899%_
                      (lambda (_%e5301253197%_
                               _%hd5301353201%_
                               _%tl5301453204%_
                               _%e5301553207%_
                               _%hd5301653211%_
                               _%tl5301753214%_
                               _%e5301853217%_
                               _%hd5301953221%_
                               _%tl5302053224%_
                               _%e5302153227%_
                               _%hd5302253231%_
                               _%tl5302353234%_
                               _%e5302453237%_
                               _%hd5302553241%_
                               _%tl5302653244%_
                               _%__splice9172091721%_
                               _%target5302753247%_
                               _%tl5302953250%_)
                        (letrec ((_%loop5303053253%_
                                  (lambda (_%hd5302853257%_ _%body5303453260%_)
                                    (if (gx#stx-pair? _%hd5302853257%_)
                                        (let ((_%e5303153262%_
                                               (gx#syntax-e _%hd5302853257%_)))
                                          (let ((_%lp-tl5303353269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5303153262%_)))
                                                (_%lp-hd5303253266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5303153262%_))))
                                            (_%loop5303053253%_
                                             _%lp-tl5303353269%_
                                             (cons _%lp-hd5303253266%_
                                                   _%body5303453260%_))))
                                        (let ((_%body5303553272%_
                                               (reverse _%body5303453260%_)))
                                          (let ((_%g5300953275%_
                                                 _%body5303553272%_)
                                                (_%g5301053277%_
                                                 _%hd5302553241%_)
                                                (_%g5301153278%_
                                                 _%hd5301953221%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5301053277%_))
                                                (_%__kont9171891719%_
                                                 _%g5300953275%_
                                                 _%g5301053277%_
                                                 _%g5301153278%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5303053253%_ _%target5302753247%_ '()))))
                     (_%__match9185491855%_
                      (lambda (_%e5298553317%_
                               _%hd5298653321%_
                               _%tl5298753324%_
                               _%e5298853327%_
                               _%hd5298953331%_
                               _%tl5299053334%_
                               _%e5299153337%_
                               _%hd5299253341%_
                               _%tl5299353344%_
                               _%e5299453347%_
                               _%hd5299553351%_
                               _%tl5299653354%_
                               _%e5299753357%_
                               _%hd5299853361%_
                               _%tl5299953364%_
                               _%__splice9171691717%_
                               _%target5300053367%_
                               _%tl5300253370%_)
                        (letrec ((_%loop5300353373%_
                                  (lambda (_%hd5300153377%_ _%body5300753380%_)
                                    (if (gx#stx-pair? _%hd5300153377%_)
                                        (let ((_%e5300453382%_
                                               (gx#syntax-e _%hd5300153377%_)))
                                          (let ((_%lp-tl5300653389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5300453382%_)))
                                                (_%lp-hd5300553386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5300453382%_))))
                                            (_%loop5300353373%_
                                             _%lp-tl5300653389%_
                                             (cons _%lp-hd5300553386%_
                                                   _%body5300753380%_))))
                                        (let ((_%body5300853392%_
                                               (reverse _%body5300753380%_)))
                                          (let ((_%g5298253395%_
                                                 _%body5300853392%_)
                                                (_%g5298353397%_
                                                 _%hd5299853361%_)
                                                (_%g5298453398%_
                                                 _%hd5299253341%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5298353397%_))
                                                (_%__kont9171491715%_
                                                 _%g5298253395%_
                                                 _%g5298353397%_
                                                 _%g5298453398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5300353373%_ _%target5300053367%_ '()))))
                     (_%__match9181091811%_
                      (lambda (_%e5295853437%_
                               _%hd5295953441%_
                               _%tl5296053444%_
                               _%e5296153447%_
                               _%hd5296253451%_
                               _%tl5296353454%_
                               _%e5296453457%_
                               _%hd5296553461%_
                               _%tl5296653464%_
                               _%e5296753467%_
                               _%hd5296853471%_
                               _%tl5296953474%_
                               _%e5297053477%_
                               _%hd5297153481%_
                               _%tl5297253484%_
                               _%__splice9171291713%_
                               _%target5297353487%_
                               _%tl5297553490%_)
                        (letrec ((_%loop5297653493%_
                                  (lambda (_%hd5297453497%_ _%body5298053500%_)
                                    (if (gx#stx-pair? _%hd5297453497%_)
                                        (let ((_%e5297753502%_
                                               (gx#syntax-e _%hd5297453497%_)))
                                          (let ((_%lp-tl5297953509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5297753502%_)))
                                                (_%lp-hd5297853506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5297753502%_))))
                                            (_%loop5297653493%_
                                             _%lp-tl5297953509%_
                                             (cons _%lp-hd5297853506%_
                                                   _%body5298053500%_))))
                                        (let ((_%body5298153512%_
                                               (reverse _%body5298053500%_)))
                                          (let ((_%g5295553515%_
                                                 _%body5298153512%_)
                                                (_%g5295653517%_
                                                 _%hd5297153481%_)
                                                (_%g5295753518%_
                                                 _%hd5296553461%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5295653517%_))
                                                (_%__kont9171091711%_
                                                 _%g5295553515%_
                                                 _%g5295653517%_
                                                 _%g5295753518%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5297653493%_ _%target5297353487%_ '()))))
                     (_%__match9179091791%_
                      (lambda (_%e5295853437%_
                               _%hd5295953441%_
                               _%tl5296053444%_
                               _%e5296153447%_
                               _%hd5296253451%_
                               _%tl5296353454%_
                               _%e5296453457%_
                               _%hd5296553461%_
                               _%tl5296653464%_
                               _%e5296753467%_
                               _%hd5296853471%_
                               _%tl5296953474%_)
                        (if (gx#identifier? _%hd5296853471%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97512_|
                                 _%hd5296853471%_)
                                (if (gx#stx-pair? _%tl5296953474%_)
                                    (let ((_%e5297053477%_
                                           (gx#syntax-e _%tl5296953474%_)))
                                      (let ((_%tl5297253484%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5297053477%_)))
                                            (_%hd5297153481%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5297053477%_))))
                                        (if (gx#stx-null? _%tl5297253484%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5296353454%_)
                                                (let ((_%__splice9171291713%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5296353454%_
                                                        '0)))
                                                  (let ((_%tl5297553490%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9171291713%_
                                                            '1)))
                                                        (_%target5297353487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9171291713%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5297553490%_)
                                                        (_%__match9181091811%_
                                                         _%e5295853437%_
                                                         _%hd5295953441%_
                                                         _%tl5296053444%_
                                                         _%e5296153447%_
                                                         _%hd5296253451%_
                                                         _%tl5296353454%_
                                                         _%e5296453457%_
                                                         _%hd5296553461%_
                                                         _%tl5296653464%_
                                                         _%e5296753467%_
                                                         _%hd5296853471%_
                                                         _%tl5296953474%_
                                                         _%e5297053477%_
                                                         _%hd5297153481%_
                                                         _%tl5297253484%_
                                                         _%__splice9171291713%_
                                                         _%target5297353487%_
                                                         _%tl5297553490%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5292553068%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5292553068%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97513_|
                                     _%hd5296853471%_)
                                    (if (gx#stx-pair? _%tl5296953474%_)
                                        (let ((_%e5299753357%_
                                               (gx#syntax-e _%tl5296953474%_)))
                                          (let ((_%tl5299953364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5299753357%_)))
                                                (_%hd5299853361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5299753357%_))))
                                            (if (gx#stx-null? _%tl5299953364%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5296353454%_)
                                                    (let ((_%__splice9171691717%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5296353454%_
                                                            '0)))
                                                      (let ((_%tl5300253370%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9171691717%_ '1)))
                    (_%target5300053367%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9171691717%_ '0))))
                (if (gx#stx-null? _%tl5300253370%_)
                    (_%__match9185491855%_
                     _%e5295853437%_
                     _%hd5295953441%_
                     _%tl5296053444%_
                     _%e5296153447%_
                     _%hd5296253451%_
                     _%tl5296353454%_
                     _%e5296453457%_
                     _%hd5296553461%_
                     _%tl5296653464%_
                     _%e5296753467%_
                     _%hd5296853471%_
                     _%tl5296953474%_
                     _%e5299753357%_
                     _%hd5299853361%_
                     _%tl5299953364%_
                     _%__splice9171691717%_
                     _%target5300053367%_
                     _%tl5300253370%_)
                    (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5292553068%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97514_|
                                         _%hd5296853471%_)
                                        (if (gx#stx-pair? _%tl5296953474%_)
                                            (let ((_%e5302453237%_
                                                   (gx#syntax-e
                                                    _%tl5296953474%_)))
                                              (let ((_%tl5302653244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5302453237%_)))
                                                    (_%hd5302553241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5302453237%_))))
                                                (if (gx#stx-null?
                                                     _%tl5302653244%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5296353454%_)
                                                        (let ((_%__splice9172091721%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5296353454%_
                                                                '0)))
                                                          (let ((_%tl5302953250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9172091721%_ '1)))
                        (_%target5302753247%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9172091721%_ '0))))
                    (if (gx#stx-null? _%tl5302953250%_)
                        (_%__match9189891899%_
                         _%e5295853437%_
                         _%hd5295953441%_
                         _%tl5296053444%_
                         _%e5296153447%_
                         _%hd5296253451%_
                         _%tl5296353454%_
                         _%e5296453457%_
                         _%hd5296553461%_
                         _%tl5296653464%_
                         _%e5296753467%_
                         _%hd5296853471%_
                         _%tl5296953474%_
                         _%e5302453237%_
                         _%hd5302553241%_
                         _%tl5302653244%_
                         _%__splice9172091721%_
                         _%target5302753247%_
                         _%tl5302953250%_)
                        (let () (declare (not safe)) (_%g5292553068%_)))))
                (let () (declare (not safe)) (_%g5292553068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97515_|
                                             _%hd5296853471%_)
                                            (if (gx#stx-pair? _%tl5296953474%_)
                                                (let ((_%e5305153115%_
                                                       (gx#syntax-e
                                                        _%tl5296953474%_)))
                                                  (let ((_%tl5305353122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5305153115%_)))
                                                        (_%hd5305253119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5305153115%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5305353122%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5296353454%_)
                                                            (let ((_%__splice9172491725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5296353454%_
                            '0)))
                      (let ((_%tl5305653128%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9172491725%_ '1)))
                            (_%target5305453125%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9172491725%_ '0))))
                        (if (gx#stx-null? _%tl5305653128%_)
                            (_%__match9194291943%_
                             _%e5295853437%_
                             _%hd5295953441%_
                             _%tl5296053444%_
                             _%e5296153447%_
                             _%hd5296253451%_
                             _%tl5296353454%_
                             _%e5296453457%_
                             _%hd5296553461%_
                             _%tl5296653464%_
                             _%e5296753467%_
                             _%hd5296853471%_
                             _%tl5296953474%_
                             _%e5305153115%_
                             _%hd5305253119%_
                             _%tl5305353122%_
                             _%__splice9172491725%_
                             _%target5305453125%_
                             _%tl5305653128%_)
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                    (let () (declare (not safe)) (_%g5292553068%_)))
                (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_))))))
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                     (_%__match9176691767%_
                      (lambda (_%e5293153557%_
                               _%hd5293253561%_
                               _%tl5293353564%_
                               _%e5293453567%_
                               _%hd5293553571%_
                               _%tl5293653574%_
                               _%e5293753577%_
                               _%hd5293853581%_
                               _%tl5293953584%_
                               _%e5294053587%_
                               _%hd5294153591%_
                               _%tl5294253594%_
                               _%e5294353597%_
                               _%hd5294453601%_
                               _%tl5294553604%_
                               _%__splice9170891709%_
                               _%target5294653607%_
                               _%tl5294853610%_)
                        (letrec ((_%loop5294953613%_
                                  (lambda (_%hd5294753617%_ _%body5295353620%_)
                                    (if (gx#stx-pair? _%hd5294753617%_)
                                        (let ((_%e5295053622%_
                                               (gx#syntax-e _%hd5294753617%_)))
                                          (let ((_%lp-tl5295253629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5295053622%_)))
                                                (_%lp-hd5295153626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5295053622%_))))
                                            (_%loop5294953613%_
                                             _%lp-tl5295253629%_
                                             (cons _%lp-hd5295153626%_
                                                   _%body5295353620%_))))
                                        (let ((_%body5295453632%_
                                               (reverse _%body5295353620%_)))
                                          (let ((_%g5292753635%_
                                                 _%body5295453632%_)
                                                (_%g5292853637%_
                                                 _%hd5294453601%_)
                                                (_%g5292953638%_
                                                 _%hd5294153591%_)
                                                (_%g5293053639%_
                                                 _%hd5293853581%_))
                                            (if (let ((__tmp97516
                                                       (gx#syntax-local-value
                                                        _%g5292853637%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97516))
                                                (_%__kont9170691707%_
                                                 _%g5292753635%_
                                                 _%g5292853637%_
                                                 _%g5292953638%_
                                                 _%g5293053639%_)
                                                (_%__match9179091791%_
                                                 _%e5293153557%_
                                                 _%hd5293253561%_
                                                 _%tl5293353564%_
                                                 _%e5293453567%_
                                                 _%hd5293553571%_
                                                 _%tl5293653574%_
                                                 _%e5293753577%_
                                                 _%hd5293853581%_
                                                 _%tl5293953584%_
                                                 _%e5294053587%_
                                                 _%hd5294153591%_
                                                 _%tl5294253594%_))))))))
                          (_%loop5294953613%_ _%target5294653607%_ '())))))
                (if (gx#stx-pair? _%__stx9170391704%_)
                    (let ((_%e5293153557%_ (gx#syntax-e _%__stx9170391704%_)))
                      (let ((_%tl5293353564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5293153557%_)))
                            (_%hd5293253561%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5293153557%_))))
                        (if (gx#stx-pair? _%tl5293353564%_)
                            (let ((_%e5293453567%_
                                   (gx#syntax-e _%tl5293353564%_)))
                              (let ((_%tl5293653574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5293453567%_)))
                                    (_%hd5293553571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5293453567%_))))
                                (if (gx#stx-pair? _%hd5293553571%_)
                                    (let ((_%e5293753577%_
                                           (gx#syntax-e _%hd5293553571%_)))
                                      (let ((_%tl5293953584%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5293753577%_)))
                                            (_%hd5293853581%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5293753577%_))))
                                        (if (gx#stx-pair? _%tl5293953584%_)
                                            (let ((_%e5294053587%_
                                                   (gx#syntax-e
                                                    _%tl5293953584%_)))
                                              (let ((_%tl5294253594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5294053587%_)))
                                                    (_%hd5294153591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5294053587%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5294253594%_)
                                                    (let ((_%e5294353597%_
                                                           (gx#syntax-e
                                                            _%tl5294253594%_)))
                                                      (let ((_%tl5294553604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5294353597%_)))
                    (_%hd5294453601%_
                     (let () (declare (not safe)) (##car _%e5294353597%_))))
                (if (gx#stx-null? _%tl5294553604%_)
                    (if (gx#stx-pair/null? _%tl5293653574%_)
                        (let ((_%__splice9170891709%_
                               (gx#syntax-split-splice->vector
                                _%tl5293653574%_
                                '0)))
                          (let ((_%tl5294853610%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9170891709%_ '1)))
                                (_%target5294653607%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9170891709%_ '0))))
                            (if (gx#stx-null? _%tl5294853610%_)
                                (_%__match9176691767%_
                                 _%e5293153557%_
                                 _%hd5293253561%_
                                 _%tl5293353564%_
                                 _%e5293453567%_
                                 _%hd5293553571%_
                                 _%tl5293653574%_
                                 _%e5293753577%_
                                 _%hd5293853581%_
                                 _%tl5293953584%_
                                 _%e5294053587%_
                                 _%hd5294153591%_
                                 _%tl5294253594%_
                                 _%e5294353597%_
                                 _%hd5294453601%_
                                 _%tl5294553604%_
                                 _%__splice9170891709%_
                                 _%target5294653607%_
                                 _%tl5294853610%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5292553068%_)))))
                        (let () (declare (not safe)) (_%g5292553068%_)))
                    (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5292553068%_)))))
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                    (let () (declare (not safe)) (_%g5292553068%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54031%_)
        (letrec ((_%expand-body54034%_
                  (lambda (_%var55025%_
                           _%Interface55027%_
                           _%body55028%_
                           _%checked?55029%_)
                    (let* ((_%type55031%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54031%_
                               _%Interface55027%_)))
                           (_%g5503455078%_
                            (lambda (_%g5503555074%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5503555074%_)))
                           (_%g5503355234%_
                            (lambda (_%g5503555082%_)
                              (if (gx#stx-pair? _%g5503555082%_)
                                  (let ((_%e5504355085%_
                                         (gx#syntax-e _%g5503555082%_)))
                                    (let ((_%hd5504455089%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5504355085%_)))
                                          (_%tl5504555092%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5504355085%_))))
                                      (if (gx#stx-pair? _%tl5504555092%_)
                                          (let ((_%e5504655095%_
                                                 (gx#syntax-e
                                                  _%tl5504555092%_)))
                                            (let ((_%hd5504755099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5504655095%_)))
                                                  (_%tl5504855102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5504655095%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5504855102%_)
                                                  (let ((_%e5504955105%_
                                                         (gx#syntax-e
                                                          _%tl5504855102%_)))
                                                    (let ((_%hd5505055109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5504955105%_)))
                                                          (_%tl5505155112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5504955105%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5505155112%_)
                                                          (let ((_%e5505255115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5505155112%_)))
                    (let ((_%hd5505355119%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5505255115%_)))
                          (_%tl5505455122%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5505255115%_))))
                      (if (gx#stx-pair? _%tl5505455122%_)
                          (let ((_%e5505555125%_
                                 (gx#syntax-e _%tl5505455122%_)))
                            (let ((_%hd5505655129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5505555125%_)))
                                  (_%tl5505755132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5505555125%_))))
                              (if (gx#stx-pair? _%tl5505755132%_)
                                  (let ((_%e5505855135%_
                                         (gx#syntax-e _%tl5505755132%_)))
                                    (let ((_%hd5505955139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5505855135%_)))
                                          (_%tl5506055142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5505855135%_))))
                                      (if (gx#stx-pair? _%tl5506055142%_)
                                          (let ((_%e5506155145%_
                                                 (gx#syntax-e
                                                  _%tl5506055142%_)))
                                            (let ((_%hd5506255149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5506155145%_)))
                                                  (_%tl5506355152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5506155145%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5506255149%_)
                                                  (let ((_g97517_
                                                         (gx#syntax-split-splice
                                                          _%hd5506255149%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g97518_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g97517_)
                           (##values-length _g97517_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97518_ 2)))
                    (error "Context expects 2 values" _g97518_)))
              (let ((_%target5506455155%_
                     (let () (declare (not safe)) (##values-ref _g97517_ 0)))
                    (_%tl5506655158%_
                     (let () (declare (not safe)) (##values-ref _g97517_ 1))))
                (if (gx#stx-null? _%tl5506655158%_)
                    (letrec ((_%loop5506755161%_
                              (lambda (_%hd5506555165%_ _%body5507155168%_)
                                (if (gx#stx-pair? _%hd5506555165%_)
                                    (let ((_%e5506855170%_
                                           (gx#syntax-e _%hd5506555165%_)))
                                      (let ((_%lp-hd5506955174%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5506855170%_)))
                                            (_%lp-tl5507055177%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5506855170%_))))
                                        (_%loop5506755161%_
                                         _%lp-tl5507055177%_
                                         (cons _%lp-hd5506955174%_
                                               _%body5507155168%_))))
                                    (let ((_%body5507255180%_
                                           (reverse _%body5507155168%_)))
                                      (if (gx#stx-null? _%tl5506355152%_)
                                          ((lambda (_%g5503655183%_
                                                    _%g5503755185%_
                                                    _%g5503855186%_
                                                    _%g5503955187%_
                                                    _%g5504055188%_
                                                    _%g5504155189%_
                                                    _%g5504255190%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5503955187%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5504055188%_ '()))
                                         (cons _%g5503955187%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5504255190%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5503955187%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5504155189%_ '()))
                               (cons _%g5503855186%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5503755185%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5522555228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5522655231%_)
                      (cons _%g5522555228%_ _%g5522655231%_))
                    '()
                    _%g5503655183%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5507255180%_
                                           _%hd5505955139%_
                                           _%hd5505655129%_
                                           _%hd5505355119%_
                                           _%hd5505055109%_
                                           _%hd5504755099%_
                                           _%hd5504455089%_)
                                          (_%g5503455078%_
                                           _%g5503555082%_)))))))
                      (_%loop5506755161%_ _%target5506455155%_ '()))
                    (_%g5503455078%_ _%g5503555082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5503455078%_
                                                   _%g5503555082%_))))
                                          (_%g5503455078%_ _%g5503555082%_))))
                                  (_%g5503455078%_ _%g5503555082%_))))
                          (_%g5503455078%_ _%g5503555082%_))))
                  (_%g5503455078%_ _%g5503555082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5503455078%_
                                                   _%g5503555082%_))))
                                          (_%g5503455078%_ _%g5503555082%_))))
                                  (_%g5503455078%_ _%g5503555082%_)))))
                      (_%g5503355234%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55031%_
                             (let ((__obj97318 _%type55031%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj97318
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj97318
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj97318
                                    'type-descriptor)))
                             _%var55025%_
                             _%checked?55029%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55028%_)))))
                 (_%expand54036%_
                  (lambda (_%var54824%_
                           _%Interface54826%_
                           _%body54827%_
                           _%checked?54828%_
                           _%checked-methods?54829%_
                           _%maybe?54830%_)
                    (let* ((_%g5483254840%_
                            (lambda (_%g5483354836%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5483354836%_)))
                           (_%g5483155017%_
                            (lambda (_%g5483354844%_)
                              ((lambda (_%g5483454847%_)
                                 (if _%checked?54828%_
                                     (if _%maybe?54830%_
                                         (let* ((_%g5485954874%_
                                                 (lambda (_%g5486054870%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5486054870%_)))
                                                (_%g5485854920%_
                                                 (lambda (_%g5486054878%_)
                                                   (if (gx#stx-pair?
                                                        _%g5486054878%_)
                                                       (let ((_%e5486354881%_
                                                              (gx#syntax-e
                                                               _%g5486054878%_)))
                                                         (let ((_%hd5486454885%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5486354881%_)))
                       (_%tl5486554888%_
                        (let () (declare (not safe)) (##cdr _%e5486354881%_))))
                   (if (gx#stx-pair? _%tl5486554888%_)
                       (let ((_%e5486654891%_ (gx#syntax-e _%tl5486554888%_)))
                         (let ((_%hd5486754895%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5486654891%_)))
                               (_%tl5486854898%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5486654891%_))))
                           (if (gx#stx-null? _%tl5486854898%_)
                               ((lambda (_%g5486154901%_ _%g5486254903%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5486254903%_
                                                    (cons (cons _%g5486154901%_
                                                                (cons _%g5486254903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5486254903%_
                                                                (cons _%g5483454847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5486254903%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5486754895%_
                                _%hd5486454885%_)
                               (_%g5485954874%_ _%g5486054878%_))))
                       (_%g5485954874%_ _%g5486054878%_))))
               (_%g5485954874%_ _%g5486054878%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5485854920%_
                                            (list _%var54824%_
                                                  _%Interface54826%_)))
                                         (let* ((_%g5492454939%_
                                                 (lambda (_%g5492554935%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5492554935%_)))
                                                (_%g5492354983%_
                                                 (lambda (_%g5492554943%_)
                                                   (if (gx#stx-pair?
                                                        _%g5492554943%_)
                                                       (let ((_%e5492854946%_
                                                              (gx#syntax-e
                                                               _%g5492554943%_)))
                                                         (let ((_%hd5492954950%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5492854946%_)))
                       (_%tl5493054953%_
                        (let () (declare (not safe)) (##cdr _%e5492854946%_))))
                   (if (gx#stx-pair? _%tl5493054953%_)
                       (let ((_%e5493154956%_ (gx#syntax-e _%tl5493054953%_)))
                         (let ((_%hd5493254960%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5493154956%_)))
                               (_%tl5493354963%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5493154956%_))))
                           (if (gx#stx-null? _%tl5493354963%_)
                               ((lambda (_%g5492654966%_ _%g5492754968%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5492754968%_
                                                    (cons (cons _%g5492654966%_
                                                                (cons _%g5492754968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5483454847%_ '()))))
                                _%hd5493254960%_
                                _%hd5492954950%_)
                               (_%g5492454939%_ _%g5492554943%_))))
                       (_%g5492454939%_ _%g5492554943%_))))
               (_%g5492454939%_ _%g5492554943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5492354983%_
                                            (list _%var54824%_
                                                  _%Interface54826%_))))
                                     (if _%maybe?54830%_
                                         (let* ((_%g5498754995%_
                                                 (lambda (_%g5498854991%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5498854991%_)))
                                                (_%g5498655013%_
                                                 (lambda (_%g5498854999%_)
                                                   ((lambda (_%g5498955002%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5498955002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5483454847%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5498955002%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5498854999%_))))
                                           (_%g5498655013%_ _%var54824%_))
                                         _%g5483454847%_)))
                               _%g5483354844%_))))
                      (_%g5483155017%_
                       (_%expand-body54034%_
                        _%var54824%_
                        _%Interface54826%_
                        _%body54827%_
                        (let ((_%$e55021%_ _%checked?54828%_))
                          (if _%$e55021%_
                              _%$e55021%_
                              _%checked-methods?54829%_))))))))
          (let* ((_%__stx9194591946%_ _%stx54031%_)
                 (_%g5404254185%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9194591946%_))))
            (let ((_%__kont9194891949%_
                   (lambda (_%g5404454752%_
                            _%g5404554754%_
                            _%g5404654755%_
                            _%g5404754756%_)
                     (let* ((_%g5478154789%_
                             (lambda (_%g5478254785%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5478254785%_)))
                            (_%g5478054816%_
                             (lambda (_%g5478254793%_)
                               ((lambda (_%g5478354796%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5404754756%_
                                                    (cons _%g5404654755%_
                                                          (cons _%g5478354796%_
                                                                '())))
                                              (foldr (lambda (_%g5480754810%_
                                                              _%g5480854813%_)
                                                       (cons _%g5480754810%_
                                                             _%g5480854813%_))
                                                     '()
                                                     _%g5404454752%_))))
                                _%g5478254793%_))))
                       (_%g5478054816%_
                        (let ((__obj97319
                               (gx#syntax-local-value _%g5404554754%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj97319
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj97319
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj97319
                               'identifier)))))))
                  (_%__kont9195291953%_
                   (lambda (_%g5407254632%_ _%g5407354634%_ _%g5407454635%_)
                     (_%expand54036%_
                      _%g5407454635%_
                      _%g5407354634%_
                      (foldr (lambda (_%g5465854661%_ _%g5465954664%_)
                               (cons _%g5465854661%_ _%g5465954664%_))
                             '()
                             _%g5407254632%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9195691957%_
                   (lambda (_%g5409954512%_ _%g5410054514%_ _%g5410154515%_)
                     (_%expand54036%_
                      _%g5410154515%_
                      _%g5410054514%_
                      (foldr (lambda (_%g5453854541%_ _%g5453954544%_)
                               (cons _%g5453854541%_ _%g5453954544%_))
                             '()
                             _%g5409954512%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9196091961%_
                   (lambda (_%g5412654392%_ _%g5412754394%_ _%g5412854395%_)
                     (_%expand54036%_
                      _%g5412854395%_
                      _%g5412754394%_
                      (foldr (lambda (_%g5441854421%_ _%g5441954424%_)
                               (cons _%g5441854421%_ _%g5441954424%_))
                             '()
                             _%g5412654392%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9196491965%_
                   (lambda (_%g5415354270%_ _%g5415454272%_ _%g5415554273%_)
                     (_%expand54036%_
                      _%g5415554273%_
                      _%g5415454272%_
                      (foldr (lambda (_%g5429854301%_ _%g5429954304%_)
                               (cons _%g5429854301%_ _%g5429954304%_))
                             '()
                             _%g5415354270%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9218492185%_
                      (lambda (_%e5415654192%_
                               _%hd5415754196%_
                               _%tl5415854199%_
                               _%e5415954202%_
                               _%hd5416054206%_
                               _%tl5416154209%_
                               _%e5416254212%_
                               _%hd5416354216%_
                               _%tl5416454219%_
                               _%e5416554222%_
                               _%hd5416654226%_
                               _%tl5416754229%_
                               _%e5416854232%_
                               _%hd5416954236%_
                               _%tl5417054239%_
                               _%__splice9196691967%_
                               _%target5417154242%_
                               _%tl5417354245%_)
                        (letrec ((_%loop5417454248%_
                                  (lambda (_%hd5417254252%_ _%body5417854255%_)
                                    (if (gx#stx-pair? _%hd5417254252%_)
                                        (let ((_%e5417554257%_
                                               (gx#syntax-e _%hd5417254252%_)))
                                          (let ((_%lp-tl5417754264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5417554257%_)))
                                                (_%lp-hd5417654261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5417554257%_))))
                                            (_%loop5417454248%_
                                             _%lp-tl5417754264%_
                                             (cons _%lp-hd5417654261%_
                                                   _%body5417854255%_))))
                                        (let ((_%body5417954267%_
                                               (reverse _%body5417854255%_)))
                                          (let ((_%g5415354270%_
                                                 _%body5417954267%_)
                                                (_%g5415454272%_
                                                 _%hd5416954236%_)
                                                (_%g5415554273%_
                                                 _%hd5416354216%_))
                                            (if (and (gx#identifier?
                                                      _%g5415554273%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5415454272%_)))
                                                (_%__kont9196491965%_
                                                 _%g5415354270%_
                                                 _%g5415454272%_
                                                 _%g5415554273%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))))))))
                          (_%loop5417454248%_ _%target5417154242%_ '()))))
                     (_%__match9214092141%_
                      (lambda (_%e5412954314%_
                               _%hd5413054318%_
                               _%tl5413154321%_
                               _%e5413254324%_
                               _%hd5413354328%_
                               _%tl5413454331%_
                               _%e5413554334%_
                               _%hd5413654338%_
                               _%tl5413754341%_
                               _%e5413854344%_
                               _%hd5413954348%_
                               _%tl5414054351%_
                               _%e5414154354%_
                               _%hd5414254358%_
                               _%tl5414354361%_
                               _%__splice9196291963%_
                               _%target5414454364%_
                               _%tl5414654367%_)
                        (letrec ((_%loop5414754370%_
                                  (lambda (_%hd5414554374%_ _%body5415154377%_)
                                    (if (gx#stx-pair? _%hd5414554374%_)
                                        (let ((_%e5414854379%_
                                               (gx#syntax-e _%hd5414554374%_)))
                                          (let ((_%lp-tl5415054386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5414854379%_)))
                                                (_%lp-hd5414954383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5414854379%_))))
                                            (_%loop5414754370%_
                                             _%lp-tl5415054386%_
                                             (cons _%lp-hd5414954383%_
                                                   _%body5415154377%_))))
                                        (let ((_%body5415254389%_
                                               (reverse _%body5415154377%_)))
                                          (let ((_%g5412654392%_
                                                 _%body5415254389%_)
                                                (_%g5412754394%_
                                                 _%hd5414254358%_)
                                                (_%g5412854395%_
                                                 _%hd5413654338%_))
                                            (if (and (gx#identifier?
                                                      _%g5412854395%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5412754394%_)))
                                                (_%__kont9196091961%_
                                                 _%g5412654392%_
                                                 _%g5412754394%_
                                                 _%g5412854395%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))))))))
                          (_%loop5414754370%_ _%target5414454364%_ '()))))
                     (_%__match9209692097%_
                      (lambda (_%e5410254434%_
                               _%hd5410354438%_
                               _%tl5410454441%_
                               _%e5410554444%_
                               _%hd5410654448%_
                               _%tl5410754451%_
                               _%e5410854454%_
                               _%hd5410954458%_
                               _%tl5411054461%_
                               _%e5411154464%_
                               _%hd5411254468%_
                               _%tl5411354471%_
                               _%e5411454474%_
                               _%hd5411554478%_
                               _%tl5411654481%_
                               _%__splice9195891959%_
                               _%target5411754484%_
                               _%tl5411954487%_)
                        (letrec ((_%loop5412054490%_
                                  (lambda (_%hd5411854494%_ _%body5412454497%_)
                                    (if (gx#stx-pair? _%hd5411854494%_)
                                        (let ((_%e5412154499%_
                                               (gx#syntax-e _%hd5411854494%_)))
                                          (let ((_%lp-tl5412354506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5412154499%_)))
                                                (_%lp-hd5412254503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5412154499%_))))
                                            (_%loop5412054490%_
                                             _%lp-tl5412354506%_
                                             (cons _%lp-hd5412254503%_
                                                   _%body5412454497%_))))
                                        (let ((_%body5412554509%_
                                               (reverse _%body5412454497%_)))
                                          (let ((_%g5409954512%_
                                                 _%body5412554509%_)
                                                (_%g5410054514%_
                                                 _%hd5411554478%_)
                                                (_%g5410154515%_
                                                 _%hd5410954458%_))
                                            (if (and (gx#identifier?
                                                      _%g5410154515%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5410054514%_)))
                                                (_%__kont9195691957%_
                                                 _%g5409954512%_
                                                 _%g5410054514%_
                                                 _%g5410154515%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))))))))
                          (_%loop5412054490%_ _%target5411754484%_ '()))))
                     (_%__match9205292053%_
                      (lambda (_%e5407554554%_
                               _%hd5407654558%_
                               _%tl5407754561%_
                               _%e5407854564%_
                               _%hd5407954568%_
                               _%tl5408054571%_
                               _%e5408154574%_
                               _%hd5408254578%_
                               _%tl5408354581%_
                               _%e5408454584%_
                               _%hd5408554588%_
                               _%tl5408654591%_
                               _%e5408754594%_
                               _%hd5408854598%_
                               _%tl5408954601%_
                               _%__splice9195491955%_
                               _%target5409054604%_
                               _%tl5409254607%_)
                        (letrec ((_%loop5409354610%_
                                  (lambda (_%hd5409154614%_ _%body5409754617%_)
                                    (if (gx#stx-pair? _%hd5409154614%_)
                                        (let ((_%e5409454619%_
                                               (gx#syntax-e _%hd5409154614%_)))
                                          (let ((_%lp-tl5409654626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5409454619%_)))
                                                (_%lp-hd5409554623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5409454619%_))))
                                            (_%loop5409354610%_
                                             _%lp-tl5409654626%_
                                             (cons _%lp-hd5409554623%_
                                                   _%body5409754617%_))))
                                        (let ((_%body5409854629%_
                                               (reverse _%body5409754617%_)))
                                          (let ((_%g5407254632%_
                                                 _%body5409854629%_)
                                                (_%g5407354634%_
                                                 _%hd5408854598%_)
                                                (_%g5407454635%_
                                                 _%hd5408254578%_))
                                            (if (and (gx#identifier?
                                                      _%g5407454635%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5407354634%_)))
                                                (_%__kont9195291953%_
                                                 _%g5407254632%_
                                                 _%g5407354634%_
                                                 _%g5407454635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))))))))
                          (_%loop5409354610%_ _%target5409054604%_ '()))))
                     (_%__match9203292033%_
                      (lambda (_%e5407554554%_
                               _%hd5407654558%_
                               _%tl5407754561%_
                               _%e5407854564%_
                               _%hd5407954568%_
                               _%tl5408054571%_
                               _%e5408154574%_
                               _%hd5408254578%_
                               _%tl5408354581%_
                               _%e5408454584%_
                               _%hd5408554588%_
                               _%tl5408654591%_)
                        (if (gx#identifier? _%hd5408554588%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g97519_|
                                 _%hd5408554588%_)
                                (if (gx#stx-pair? _%tl5408654591%_)
                                    (let ((_%e5408754594%_
                                           (gx#syntax-e _%tl5408654591%_)))
                                      (let ((_%tl5408954601%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5408754594%_)))
                                            (_%hd5408854598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5408754594%_))))
                                        (if (gx#stx-null? _%tl5408954601%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5408054571%_)
                                                (let ((_%__splice9195491955%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5408054571%_
                                                        '0)))
                                                  (let ((_%tl5409254607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9195491955%_
                                                            '1)))
                                                        (_%target5409054604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9195491955%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5409254607%_)
                                                        (_%__match9205292053%_
                                                         _%e5407554554%_
                                                         _%hd5407654558%_
                                                         _%tl5407754561%_
                                                         _%e5407854564%_
                                                         _%hd5407954568%_
                                                         _%tl5408054571%_
                                                         _%e5408154574%_
                                                         _%hd5408254578%_
                                                         _%tl5408354581%_
                                                         _%e5408454584%_
                                                         _%hd5408554588%_
                                                         _%tl5408654591%_
                                                         _%e5408754594%_
                                                         _%hd5408854598%_
                                                         _%tl5408954601%_
                                                         _%__splice9195491955%_
                                                         _%target5409054604%_
                                                         _%tl5409254607%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5404254185%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5404254185%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5404254185%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g97520_|
                                     _%hd5408554588%_)
                                    (if (gx#stx-pair? _%tl5408654591%_)
                                        (let ((_%e5411454474%_
                                               (gx#syntax-e _%tl5408654591%_)))
                                          (let ((_%tl5411654481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5411454474%_)))
                                                (_%hd5411554478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5411454474%_))))
                                            (if (gx#stx-null? _%tl5411654481%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5408054571%_)
                                                    (let ((_%__splice9195891959%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5408054571%_
                                                            '0)))
                                                      (let ((_%tl5411954487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9195891959%_ '1)))
                    (_%target5411754484%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9195891959%_ '0))))
                (if (gx#stx-null? _%tl5411954487%_)
                    (_%__match9209692097%_
                     _%e5407554554%_
                     _%hd5407654558%_
                     _%tl5407754561%_
                     _%e5407854564%_
                     _%hd5407954568%_
                     _%tl5408054571%_
                     _%e5408154574%_
                     _%hd5408254578%_
                     _%tl5408354581%_
                     _%e5408454584%_
                     _%hd5408554588%_
                     _%tl5408654591%_
                     _%e5411454474%_
                     _%hd5411554478%_
                     _%tl5411654481%_
                     _%__splice9195891959%_
                     _%target5411754484%_
                     _%tl5411954487%_)
                    (let () (declare (not safe)) (_%g5404254185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5404254185%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5404254185%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g97521_|
                                         _%hd5408554588%_)
                                        (if (gx#stx-pair? _%tl5408654591%_)
                                            (let ((_%e5414154354%_
                                                   (gx#syntax-e
                                                    _%tl5408654591%_)))
                                              (let ((_%tl5414354361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5414154354%_)))
                                                    (_%hd5414254358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5414154354%_))))
                                                (if (gx#stx-null?
                                                     _%tl5414354361%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5408054571%_)
                                                        (let ((_%__splice9196291963%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5408054571%_
                                                                '0)))
                                                          (let ((_%tl5414654367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9196291963%_ '1)))
                        (_%target5414454364%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9196291963%_ '0))))
                    (if (gx#stx-null? _%tl5414654367%_)
                        (_%__match9214092141%_
                         _%e5407554554%_
                         _%hd5407654558%_
                         _%tl5407754561%_
                         _%e5407854564%_
                         _%hd5407954568%_
                         _%tl5408054571%_
                         _%e5408154574%_
                         _%hd5408254578%_
                         _%tl5408354581%_
                         _%e5408454584%_
                         _%hd5408554588%_
                         _%tl5408654591%_
                         _%e5414154354%_
                         _%hd5414254358%_
                         _%tl5414354361%_
                         _%__splice9196291963%_
                         _%target5414454364%_
                         _%tl5414654367%_)
                        (let () (declare (not safe)) (_%g5404254185%_)))))
                (let () (declare (not safe)) (_%g5404254185%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5404254185%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5404254185%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g97522_|
                                             _%hd5408554588%_)
                                            (if (gx#stx-pair? _%tl5408654591%_)
                                                (let ((_%e5416854232%_
                                                       (gx#syntax-e
                                                        _%tl5408654591%_)))
                                                  (let ((_%tl5417054239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5416854232%_)))
                                                        (_%hd5416954236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5416854232%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5417054239%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5408054571%_)
                                                            (let ((_%__splice9196691967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5408054571%_
                            '0)))
                      (let ((_%tl5417354245%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196691967%_ '1)))
                            (_%target5417154242%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9196691967%_ '0))))
                        (if (gx#stx-null? _%tl5417354245%_)
                            (_%__match9218492185%_
                             _%e5407554554%_
                             _%hd5407654558%_
                             _%tl5407754561%_
                             _%e5407854564%_
                             _%hd5407954568%_
                             _%tl5408054571%_
                             _%e5408154574%_
                             _%hd5408254578%_
                             _%tl5408354581%_
                             _%e5408454584%_
                             _%hd5408554588%_
                             _%tl5408654591%_
                             _%e5416854232%_
                             _%hd5416954236%_
                             _%tl5417054239%_
                             _%__splice9196691967%_
                             _%target5417154242%_
                             _%tl5417354245%_)
                            (let () (declare (not safe)) (_%g5404254185%_)))))
                    (let () (declare (not safe)) (_%g5404254185%_)))
                (let () (declare (not safe)) (_%g5404254185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5404254185%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5404254185%_))))))
                            (let () (declare (not safe)) (_%g5404254185%_)))))
                     (_%__match9200892009%_
                      (lambda (_%e5404854674%_
                               _%hd5404954678%_
                               _%tl5405054681%_
                               _%e5405154684%_
                               _%hd5405254688%_
                               _%tl5405354691%_
                               _%e5405454694%_
                               _%hd5405554698%_
                               _%tl5405654701%_
                               _%e5405754704%_
                               _%hd5405854708%_
                               _%tl5405954711%_
                               _%e5406054714%_
                               _%hd5406154718%_
                               _%tl5406254721%_
                               _%__splice9195091951%_
                               _%target5406354724%_
                               _%tl5406554727%_)
                        (letrec ((_%loop5406654730%_
                                  (lambda (_%hd5406454734%_ _%body5407054737%_)
                                    (if (gx#stx-pair? _%hd5406454734%_)
                                        (let ((_%e5406754739%_
                                               (gx#syntax-e _%hd5406454734%_)))
                                          (let ((_%lp-tl5406954746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5406754739%_)))
                                                (_%lp-hd5406854743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5406754739%_))))
                                            (_%loop5406654730%_
                                             _%lp-tl5406954746%_
                                             (cons _%lp-hd5406854743%_
                                                   _%body5407054737%_))))
                                        (let ((_%body5407154749%_
                                               (reverse _%body5407054737%_)))
                                          (let ((_%g5404454752%_
                                                 _%body5407154749%_)
                                                (_%g5404554754%_
                                                 _%hd5406154718%_)
                                                (_%g5404654755%_
                                                 _%hd5405854708%_)
                                                (_%g5404754756%_
                                                 _%hd5405554698%_))
                                            (if (let ((__tmp97523
                                                       (gx#syntax-local-value
                                                        _%g5404554754%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp97523))
                                                (_%__kont9194891949%_
                                                 _%g5404454752%_
                                                 _%g5404554754%_
                                                 _%g5404654755%_
                                                 _%g5404754756%_)
                                                (_%__match9203292033%_
                                                 _%e5404854674%_
                                                 _%hd5404954678%_
                                                 _%tl5405054681%_
                                                 _%e5405154684%_
                                                 _%hd5405254688%_
                                                 _%tl5405354691%_
                                                 _%e5405454694%_
                                                 _%hd5405554698%_
                                                 _%tl5405654701%_
                                                 _%e5405754704%_
                                                 _%hd5405854708%_
                                                 _%tl5405954711%_))))))))
                          (_%loop5406654730%_ _%target5406354724%_ '())))))
                (if (gx#stx-pair? _%__stx9194591946%_)
                    (let ((_%e5404854674%_ (gx#syntax-e _%__stx9194591946%_)))
                      (let ((_%tl5405054681%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5404854674%_)))
                            (_%hd5404954678%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5404854674%_))))
                        (if (gx#stx-pair? _%tl5405054681%_)
                            (let ((_%e5405154684%_
                                   (gx#syntax-e _%tl5405054681%_)))
                              (let ((_%tl5405354691%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5405154684%_)))
                                    (_%hd5405254688%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5405154684%_))))
                                (if (gx#stx-pair? _%hd5405254688%_)
                                    (let ((_%e5405454694%_
                                           (gx#syntax-e _%hd5405254688%_)))
                                      (let ((_%tl5405654701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5405454694%_)))
                                            (_%hd5405554698%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5405454694%_))))
                                        (if (gx#stx-pair? _%tl5405654701%_)
                                            (let ((_%e5405754704%_
                                                   (gx#syntax-e
                                                    _%tl5405654701%_)))
                                              (let ((_%tl5405954711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5405754704%_)))
                                                    (_%hd5405854708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5405754704%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5405954711%_)
                                                    (let ((_%e5406054714%_
                                                           (gx#syntax-e
                                                            _%tl5405954711%_)))
                                                      (let ((_%tl5406254721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5406054714%_)))
                    (_%hd5406154718%_
                     (let () (declare (not safe)) (##car _%e5406054714%_))))
                (if (gx#stx-null? _%tl5406254721%_)
                    (if (gx#stx-pair/null? _%tl5405354691%_)
                        (let ((_%__splice9195091951%_
                               (gx#syntax-split-splice->vector
                                _%tl5405354691%_
                                '0)))
                          (let ((_%tl5406554727%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9195091951%_ '1)))
                                (_%target5406354724%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9195091951%_ '0))))
                            (if (gx#stx-null? _%tl5406554727%_)
                                (_%__match9200892009%_
                                 _%e5404854674%_
                                 _%hd5404954678%_
                                 _%tl5405054681%_
                                 _%e5405154684%_
                                 _%hd5405254688%_
                                 _%tl5405354691%_
                                 _%e5405454694%_
                                 _%hd5405554698%_
                                 _%tl5405654701%_
                                 _%e5405754704%_
                                 _%hd5405854708%_
                                 _%tl5405954711%_
                                 _%e5406054714%_
                                 _%hd5406154718%_
                                 _%tl5406254721%_
                                 _%__splice9195091951%_
                                 _%target5406354724%_
                                 _%tl5406554727%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5404254185%_)))))
                        (let () (declare (not safe)) (_%g5404254185%_)))
                    (let () (declare (not safe)) (_%g5404254185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5404254185%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5404254185%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5404254185%_)))))
                            (let () (declare (not safe)) (_%g5404254185%_)))))
                    (let () (declare (not safe)) (_%g5404254185%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55244%_)
        (let* ((_%__stx9218792188%_ _%stx55244%_)
               (_%g5524955309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9218792188%_))))
          (let ((_%__kont9219092191%_
                 (lambda (_%g5525155865%_ _%g5525255867%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5525255867%_ '()))
                               (foldr (lambda (_%g5588355886%_ _%g5588455889%_)
                                        (cons _%g5588355886%_ _%g5588455889%_))
                                      '()
                                      _%g5525155865%_)))))
                (_%__kont9219492195%_
                 (lambda (_%g5526855453%_ _%g5526955455%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5526955455%_)
                       (let* ((_%g5547555482%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55244%_
                                _%g5526955455%_))
                              (_%E5547755488%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5547555482%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5547855786%_
                               (lambda (_%parts55492%_ _%var55494%_)
                                 (let ((_%$e55496%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55494%_))))
                                   (if _%$e55496%_
                                       ((lambda (_%te55500%_)
                                          (let _%loop55503%_ ((_%parts55506%_
                                                               _%parts55492%_)
                                                              (_%type55508%_
                                                               (##direct-structure-ref
                                                                _%te55500%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55509%_
                                                               _%var55494%_)
                                                              (_%checked-method?55510%_
                                                               (##direct-structure-ref
                                                                _%te55500%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55511%_
                                                               '#f))
                                            (let* ((_%parts5551255520%_
                                                    _%parts55506%_)
                                                   (_%else5551455581%_
                                                    (lambda ()
                                                      (let* ((_%g5553255540%_
                                                              (lambda (_%g5553355536%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5553355536%_)))
                     (_%g5553155577%_
                      (lambda (_%g5553355544%_)
                        ((lambda (_%g5553455547%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5553455547%_
                                       (foldr (lambda (_%g5556855571%_
                                                       _%g5556955574%_)
                                                (cons _%g5556855571%_
                                                      _%g5556955574%_))
                                              '()
                                              _%g5526855453%_))))
                         _%g5553355544%_))))
                (_%g5553155577%_ _%object55509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5551655760%_
                                                    (lambda (_%rest55585%_
                                                             _%part55587%_)
                                                      (if (and (not _%nil-check?55511%_)
                                                               (let ((__tmp97524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55587%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp97524)))
                  (let ((_%str55591%_ (symbol->string _%part55587%_)))
                    (_%loop55503%_
                     (cons (let ((__tmp97525
                                  (substring
                                   _%str55591%_
                                   '1
                                   (string-length _%str55591%_))))
                             (declare (not safe))
                             (##string->symbol __tmp97525))
                           _%rest55585%_)
                     _%type55508%_
                     _%object55509%_
                     _%checked-method?55510%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55508%_))
                      (let* ((_%g5559655611%_
                              (lambda (_%g5559755607%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5559755607%_)))
                             (_%g5559555680%_
                              (lambda (_%g5559755615%_)
                                (if (gx#stx-pair? _%g5559755615%_)
                                    (let ((_%e5560055618%_
                                           (gx#syntax-e _%g5559755615%_)))
                                      (let ((_%hd5560155622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5560055618%_)))
                                            (_%tl5560255625%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5560055618%_))))
                                        (if (gx#stx-pair? _%tl5560255625%_)
                                            (let ((_%e5560355628%_
                                                   (gx#syntax-e
                                                    _%tl5560255625%_)))
                                              (let ((_%hd5560455632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5560355628%_)))
                                                    (_%tl5560555635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5560355628%_))))
                                                (if (gx#stx-null?
                                                     _%tl5560555635%_)
                                                    ((lambda (_%g5559855638%_
                                                              _%g5559955640%_)
                                                       (if (null? _%rest55585%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5559855638%_
                                     (cons _%g5559955640%_ '()))
                               (foldr (lambda (_%g5565955662%_ _%g5566055665%_)
                                        (cons _%g5565955662%_ _%g5566055665%_))
                                      '()
                                      _%g5526855453%_)))
                   (let ((_%$e55668%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55508%_
                           _%part55587%_)))
                     (if _%$e55668%_
                         ((lambda (_%slot-type55672%_)
                            (let ((_%slot-type55675%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55244%_
                                      _%slot-type55672%_))))
                              (_%loop55503%_
                               _%rest55585%_
                               _%slot-type55675%_
                               (cons _%g5559855638%_
                                     (cons _%g5559955640%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55508%_
                                _%part55587%_)
                               '#f)))
                          _%$e55668%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55244%_
                          _%g5526955455%_
                          _%part55587%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5560455632%_
                                                     _%hd5560155622%_)
                                                    (_%g5559655611%_
                                                     _%g5559755615%_))))
                                            (_%g5559655611%_
                                             _%g5559755615%_))))
                                    (_%g5559655611%_ _%g5559755615%_)))))
                        (_%g5559555680%_
                         (list (if _%nil-check?55511%_
                                   (cons 'check-nil!
                                         (cons _%object55509%_ '()))
                                   _%object55509%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55244%_
                                _%type55508%_
                                _%part55587%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55508%_))
                          (if (null? _%rest55585%_)
                              (let* ((_%g5568655701%_
                                      (lambda (_%g5568755697%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5568755697%_)))
                                     (_%g5568555754%_
                                      (lambda (_%g5568755705%_)
                                        (if (gx#stx-pair? _%g5568755705%_)
                                            (let ((_%e5569055708%_
                                                   (gx#syntax-e
                                                    _%g5568755705%_)))
                                              (let ((_%hd5569155712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5569055708%_)))
                                                    (_%tl5569255715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5569055708%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5569255715%_)
                                                    (let ((_%e5569355718%_
                                                           (gx#syntax-e
                                                            _%tl5569255715%_)))
                                                      (let ((_%hd5569455722%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5569355718%_)))
                    (_%tl5569555725%_
                     (let () (declare (not safe)) (##cdr _%e5569355718%_))))
                (if (gx#stx-null? _%tl5569555725%_)
                    ((lambda (_%g5568855728%_ _%g5568955730%_)
                       (cons _%g5568855728%_
                             (cons _%g5568955730%_
                                   (foldr (lambda (_%g5574555748%_
                                                   _%g5574655751%_)
                                            (cons _%g5574555748%_
                                                  _%g5574655751%_))
                                          '()
                                          _%g5526855453%_))))
                     _%hd5569455722%_
                     _%hd5569155712%_)
                    (_%g5568655701%_ _%g5568755705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5568655701%_
                                                     _%g5568755705%_))))
                                            (_%g5568655701%_
                                             _%g5568755705%_)))))
                                (_%g5568555754%_
                                 (list (if _%nil-check?55511%_
                                           (cons 'check-nil!
                                                 (cons _%object55509%_ '()))
                                           _%object55509%_)
                                       (gx#stx-identifier
                                        _%g5526955455%_
                                        (if _%checked-method?55510%_ '"" '"&")
                                        (let ((__obj97320 _%type55508%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj97320
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj97320
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj97320
                                               'name)))
                                        '"-"
                                        _%part55587%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55244%_
                               _%g5526955455%_
                               _%part55587%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55244%_
                           _%type55508%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5551255520%_)
                                                  (let ((_%hd5551755764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5551255520%_)))
                                                        (_%tl5551855767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5551255520%_))))
                                                    (let* ((_%part55770%_
                                                            _%hd5551755764%_)
                                                           (_%rest55773%_
                                                            _%tl5551855767%_))
                                                      (_%K5551655760%_
                                                       _%rest55773%_
                                                       _%part55770%_)))
                                                  (_%else5551455581%_)))))
                                        _%$e55496%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5526955455%_
                                                   (foldr (lambda (_%g5577755780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5577855783%_)
                    (cons _%g5577755780%_ _%g5577855783%_))
                  '()
                  _%g5526855453%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5547555482%_)
                             (let ((_%hd5547955790%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5547555482%_)))
                                   (_%tl5548055793%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5547555482%_))))
                               (let* ((_%var55796%_ _%hd5547955790%_)
                                      (_%parts55799%_ _%tl5548055793%_))
                                 (_%K5547855786%_
                                  _%parts55799%_
                                  _%var55796%_)))
                             (_%E5547755488%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5526955455%_
                                   (foldr (lambda (_%g5580155804%_
                                                   _%g5580255807%_)
                                            (cons _%g5580155804%_
                                                  _%g5580255807%_))
                                          '()
                                          _%g5526855453%_))))))
                (_%__kont9219892199%_
                 (lambda (_%g5529155354%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5536955372%_ _%g5537055375%_)
                                  (cons _%g5536955372%_ _%g5537055375%_))
                                '()
                                _%g5529155354%_)))))
            (let* ((_%__match9227492275%_
                    (lambda (_%e5529255316%_
                             _%hd5529355320%_
                             _%tl5529455323%_
                             _%__splice9220092201%_
                             _%target5529555326%_
                             _%tl5529755329%_)
                      (letrec ((_%loop5529855332%_
                                (lambda (_%hd5529655336%_ _%arg5530255339%_)
                                  (if (gx#stx-pair? _%hd5529655336%_)
                                      (let ((_%e5529955341%_
                                             (gx#syntax-e _%hd5529655336%_)))
                                        (let ((_%lp-tl5530155348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5529955341%_)))
                                              (_%lp-hd5530055345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5529955341%_))))
                                          (_%loop5529855332%_
                                           _%lp-tl5530155348%_
                                           (cons _%lp-hd5530055345%_
                                                 _%arg5530255339%_))))
                                      (let ((_%arg5530355351%_
                                             (reverse _%arg5530255339%_)))
                                        (_%__kont9219892199%_
                                         _%arg5530355351%_))))))
                        (_%loop5529855332%_ _%target5529555326%_ '()))))
                   (_%__match9226092261%_
                    (lambda (_%e5527055385%_
                             _%hd5527155389%_
                             _%tl5527255392%_
                             _%e5527355395%_
                             _%hd5527455399%_
                             _%tl5527555402%_
                             _%e5527655405%_
                             _%hd5527755409%_
                             _%tl5527855412%_
                             _%e5527955415%_
                             _%hd5528055419%_
                             _%tl5528155422%_
                             _%__splice9219692197%_
                             _%target5528255425%_
                             _%tl5528455428%_)
                      (letrec ((_%loop5528555431%_
                                (lambda (_%hd5528355435%_ _%rand5528955438%_)
                                  (if (gx#stx-pair? _%hd5528355435%_)
                                      (let ((_%e5528655440%_
                                             (gx#syntax-e _%hd5528355435%_)))
                                        (let ((_%lp-tl5528855447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5528655440%_)))
                                              (_%lp-hd5528755444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5528655440%_))))
                                          (_%loop5528555431%_
                                           _%lp-tl5528855447%_
                                           (cons _%lp-hd5528755444%_
                                                 _%rand5528955438%_))))
                                      (let ((_%rand5529055450%_
                                             (reverse _%rand5528955438%_)))
                                        (_%__kont9219492195%_
                                         _%rand5529055450%_
                                         _%hd5528055419%_))))))
                        (_%loop5528555431%_ _%target5528255425%_ '()))))
                   (_%__match9223492235%_
                    (lambda (_%e5527055385%_
                             _%hd5527155389%_
                             _%tl5527255392%_
                             _%e5527355395%_
                             _%hd5527455399%_
                             _%tl5527555402%_)
                      (if (gx#stx-pair? _%hd5527455399%_)
                          (let ((_%e5527655405%_
                                 (gx#syntax-e _%hd5527455399%_)))
                            (let ((_%tl5527855412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5527655405%_)))
                                  (_%hd5527755409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5527655405%_))))
                              (if (gx#identifier? _%hd5527755409%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g97526_|
                                       _%hd5527755409%_)
                                      (if (gx#stx-pair? _%tl5527855412%_)
                                          (let ((_%e5527955415%_
                                                 (gx#syntax-e
                                                  _%tl5527855412%_)))
                                            (let ((_%tl5528155422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5527955415%_)))
                                                  (_%hd5528055419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5527955415%_))))
                                              (if (gx#stx-null?
                                                   _%tl5528155422%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5527555402%_)
                                                      (let ((_%__splice9219692197%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5527555402%_
                                                              '0)))
                                                        (let ((_%tl5528455428%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9219692197%_ '1)))
                      (_%target5528255425%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9219692197%_ '0))))
                  (if (gx#stx-null? _%tl5528455428%_)
                      (_%__match9226092261%_
                       _%e5527055385%_
                       _%hd5527155389%_
                       _%tl5527255392%_
                       _%e5527355395%_
                       _%hd5527455399%_
                       _%tl5527555402%_
                       _%e5527655405%_
                       _%hd5527755409%_
                       _%tl5527855412%_
                       _%e5527955415%_
                       _%hd5528055419%_
                       _%tl5528155422%_
                       _%__splice9219692197%_
                       _%target5528255425%_
                       _%tl5528455428%_)
                      (if (gx#stx-pair/null? _%tl5527255392%_)
                          (let ((_%__splice9220092201%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5527255392%_
                                  '0)))
                            (let ((_%tl5529755329%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9220092201%_ '1)))
                                  (_%target5529555326%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9220092201%_
                                      '0))))
                              (if (gx#stx-null? _%tl5529755329%_)
                                  (_%__match9227492275%_
                                   _%e5527055385%_
                                   _%hd5527155389%_
                                   _%tl5527255392%_
                                   _%__splice9220092201%_
                                   _%target5529555326%_
                                   _%tl5529755329%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5524955309%_)))))
                          (let () (declare (not safe)) (_%g5524955309%_))))))
              (if (gx#stx-pair/null? _%tl5527255392%_)
                  (let ((_%__splice9220092201%_
                         (gx#syntax-split-splice->vector _%tl5527255392%_ '0)))
                    (let ((_%tl5529755329%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '1)))
                          (_%target5529555326%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '0))))
                      (if (gx#stx-null? _%tl5529755329%_)
                          (_%__match9227492275%_
                           _%e5527055385%_
                           _%hd5527155389%_
                           _%tl5527255392%_
                           _%__splice9220092201%_
                           _%target5529555326%_
                           _%tl5529755329%_)
                          (let () (declare (not safe)) (_%g5524955309%_)))))
                  (let () (declare (not safe)) (_%g5524955309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5527255392%_)
                                                      (let ((_%__splice9220092201%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5527255392%_
                                                              '0)))
                                                        (let ((_%tl5529755329%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9220092201%_ '1)))
                      (_%target5529555326%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9220092201%_ '0))))
                  (if (gx#stx-null? _%tl5529755329%_)
                      (_%__match9227492275%_
                       _%e5527055385%_
                       _%hd5527155389%_
                       _%tl5527255392%_
                       _%__splice9220092201%_
                       _%target5529555326%_
                       _%tl5529755329%_)
                      (let () (declare (not safe)) (_%g5524955309%_)))))
              (let () (declare (not safe)) (_%g5524955309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5527255392%_)
                                              (let ((_%__splice9220092201%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5527255392%_
                                                      '0)))
                                                (let ((_%tl5529755329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9220092201%_
                                                          '1)))
                                                      (_%target5529555326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9220092201%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5529755329%_)
                                                      (_%__match9227492275%_
                                                       _%e5527055385%_
                                                       _%hd5527155389%_
                                                       _%tl5527255392%_
                                                       _%__splice9220092201%_
                                                       _%target5529555326%_
                                                       _%tl5529755329%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5524955309%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5524955309%_))))
                                      (if (gx#stx-pair/null? _%tl5527255392%_)
                                          (let ((_%__splice9220092201%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5527255392%_
                                                  '0)))
                                            (let ((_%tl5529755329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9220092201%_
                                                      '1)))
                                                  (_%target5529555326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9220092201%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5529755329%_)
                                                  (_%__match9227492275%_
                                                   _%e5527055385%_
                                                   _%hd5527155389%_
                                                   _%tl5527255392%_
                                                   _%__splice9220092201%_
                                                   _%target5529555326%_
                                                   _%tl5529755329%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5524955309%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5524955309%_))))
                                  (if (gx#stx-pair/null? _%tl5527255392%_)
                                      (let ((_%__splice9220092201%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5527255392%_
                                              '0)))
                                        (let ((_%tl5529755329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9220092201%_
                                                  '1)))
                                              (_%target5529555326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9220092201%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5529755329%_)
                                              (_%__match9227492275%_
                                               _%e5527055385%_
                                               _%hd5527155389%_
                                               _%tl5527255392%_
                                               _%__splice9220092201%_
                                               _%target5529555326%_
                                               _%tl5529755329%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5524955309%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5524955309%_))))))
                          (if (gx#stx-pair/null? _%tl5527255392%_)
                              (let ((_%__splice9220092201%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5527255392%_
                                      '0)))
                                (let ((_%tl5529755329%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '1)))
                                      (_%target5529555326%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5529755329%_)
                                      (_%__match9227492275%_
                                       _%e5527055385%_
                                       _%hd5527155389%_
                                       _%tl5527255392%_
                                       _%__splice9220092201%_
                                       _%target5529555326%_
                                       _%tl5529755329%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5524955309%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5524955309%_))))))
                   (_%__match9222292223%_
                    (lambda (_%e5525355817%_
                             _%hd5525455821%_
                             _%tl5525555824%_
                             _%e5525655827%_
                             _%hd5525755831%_
                             _%tl5525855834%_
                             _%__splice9219292193%_
                             _%target5525955837%_
                             _%tl5526155840%_)
                      (letrec ((_%loop5526255843%_
                                (lambda (_%hd5526055847%_ _%rand5526655850%_)
                                  (if (gx#stx-pair? _%hd5526055847%_)
                                      (let ((_%e5526355852%_
                                             (gx#syntax-e _%hd5526055847%_)))
                                        (let ((_%lp-tl5526555859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5526355852%_)))
                                              (_%lp-hd5526455856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5526355852%_))))
                                          (_%loop5526255843%_
                                           _%lp-tl5526555859%_
                                           (cons _%lp-hd5526455856%_
                                                 _%rand5526655850%_))))
                                      (let ((_%rand5526755862%_
                                             (reverse _%rand5526655850%_)))
                                        (let ((_%g5525155865%_
                                               _%rand5526755862%_)
                                              (_%g5525255867%_
                                               _%hd5525755831%_))
                                          (if (gx#identifier? _%g5525255867%_)
                                              (_%__kont9219092191%_
                                               _%g5525155865%_
                                               _%g5525255867%_)
                                              (_%__match9223492235%_
                                               _%e5525355817%_
                                               _%hd5525455821%_
                                               _%tl5525555824%_
                                               _%e5525655827%_
                                               _%hd5525755831%_
                                               _%tl5525855834%_))))))))
                        (_%loop5526255843%_ _%target5525955837%_ '())))))
              (if (gx#stx-pair? _%__stx9218792188%_)
                  (let ((_%e5525355817%_ (gx#syntax-e _%__stx9218792188%_)))
                    (let ((_%tl5525555824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5525355817%_)))
                          (_%hd5525455821%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5525355817%_))))
                      (if (gx#stx-pair? _%tl5525555824%_)
                          (let ((_%e5525655827%_
                                 (gx#syntax-e _%tl5525555824%_)))
                            (let ((_%tl5525855834%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5525655827%_)))
                                  (_%hd5525755831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5525655827%_))))
                              (if (gx#stx-pair/null? _%tl5525855834%_)
                                  (let ((_%__splice9219292193%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5525855834%_
                                          '0)))
                                    (let ((_%tl5526155840%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9219292193%_
                                              '1)))
                                          (_%target5525955837%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9219292193%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5526155840%_)
                                          (_%__match9222292223%_
                                           _%e5525355817%_
                                           _%hd5525455821%_
                                           _%tl5525555824%_
                                           _%e5525655827%_
                                           _%hd5525755831%_
                                           _%tl5525855834%_
                                           _%__splice9219292193%_
                                           _%target5525955837%_
                                           _%tl5526155840%_)
                                          (if (gx#stx-pair? _%hd5525755831%_)
                                              (let ((_%e5527655405%_
                                                     (gx#syntax-e
                                                      _%hd5525755831%_)))
                                                (let ((_%tl5527855412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5527655405%_)))
                                                      (_%hd5527755409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5527655405%_))))
                                                  (if (gx#identifier?
                                                       _%hd5527755409%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g97526_|
                                                           _%hd5527755409%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5527855412%_)
                                                              (let ((_%e5527955415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5527855412%_)))
                        (let ((_%tl5528155422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5527955415%_)))
                              (_%hd5528055419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5527955415%_))))
                          (if (gx#stx-pair/null? _%tl5525555824%_)
                              (let ((_%__splice9220092201%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5525555824%_
                                      '0)))
                                (let ((_%tl5529755329%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '1)))
                                      (_%target5529555326%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5529755329%_)
                                      (_%__match9227492275%_
                                       _%e5525355817%_
                                       _%hd5525455821%_
                                       _%tl5525555824%_
                                       _%__splice9220092201%_
                                       _%target5529555326%_
                                       _%tl5529755329%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5524955309%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5524955309%_)))))
                      (if (gx#stx-pair/null? _%tl5525555824%_)
                          (let ((_%__splice9220092201%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5525555824%_
                                  '0)))
                            (let ((_%tl5529755329%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9220092201%_ '1)))
                                  (_%target5529555326%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9220092201%_
                                      '0))))
                              (if (gx#stx-null? _%tl5529755329%_)
                                  (_%__match9227492275%_
                                   _%e5525355817%_
                                   _%hd5525455821%_
                                   _%tl5525555824%_
                                   _%__splice9220092201%_
                                   _%target5529555326%_
                                   _%tl5529755329%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5524955309%_)))))
                          (let () (declare (not safe)) (_%g5524955309%_))))
                  (if (gx#stx-pair/null? _%tl5525555824%_)
                      (let ((_%__splice9220092201%_
                             (gx#syntax-split-splice->vector
                              _%tl5525555824%_
                              '0)))
                        (let ((_%tl5529755329%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9220092201%_ '1)))
                              (_%target5529555326%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9220092201%_ '0))))
                          (if (gx#stx-null? _%tl5529755329%_)
                              (_%__match9227492275%_
                               _%e5525355817%_
                               _%hd5525455821%_
                               _%tl5525555824%_
                               _%__splice9220092201%_
                               _%target5529555326%_
                               _%tl5529755329%_)
                              (let ()
                                (declare (not safe))
                                (_%g5524955309%_)))))
                      (let () (declare (not safe)) (_%g5524955309%_))))
              (if (gx#stx-pair/null? _%tl5525555824%_)
                  (let ((_%__splice9220092201%_
                         (gx#syntax-split-splice->vector _%tl5525555824%_ '0)))
                    (let ((_%tl5529755329%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '1)))
                          (_%target5529555326%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '0))))
                      (if (gx#stx-null? _%tl5529755329%_)
                          (_%__match9227492275%_
                           _%e5525355817%_
                           _%hd5525455821%_
                           _%tl5525555824%_
                           _%__splice9220092201%_
                           _%target5529555326%_
                           _%tl5529755329%_)
                          (let () (declare (not safe)) (_%g5524955309%_)))))
                  (let () (declare (not safe)) (_%g5524955309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5525555824%_)
                                                  (let ((_%__splice9220092201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5525555824%_
                                                          '0)))
                                                    (let ((_%tl5529755329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9220092201%_
                                                              '1)))
                                                          (_%target5529555326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9220092201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5529755329%_)
                                                          (_%__match9227492275%_
                                                           _%e5525355817%_
                                                           _%hd5525455821%_
                                                           _%tl5525555824%_
                                                           _%__splice9220092201%_
                                                           _%target5529555326%_
                                                           _%tl5529755329%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5524955309%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5524955309%_)))))))
                                  (if (gx#stx-pair? _%hd5525755831%_)
                                      (let ((_%e5527655405%_
                                             (gx#syntax-e _%hd5525755831%_)))
                                        (let ((_%tl5527855412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5527655405%_)))
                                              (_%hd5527755409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5527655405%_))))
                                          (if (gx#identifier? _%hd5527755409%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g97526_|
                                                   _%hd5527755409%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5527855412%_)
                                                      (let ((_%e5527955415%_
                                                             (gx#syntax-e
                                                              _%tl5527855412%_)))
                                                        (let ((_%tl5528155422%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5527955415%_)))
                      (_%hd5528055419%_
                       (let () (declare (not safe)) (##car _%e5527955415%_))))
                  (if (gx#stx-pair/null? _%tl5525555824%_)
                      (let ((_%__splice9220092201%_
                             (gx#syntax-split-splice->vector
                              _%tl5525555824%_
                              '0)))
                        (let ((_%tl5529755329%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9220092201%_ '1)))
                              (_%target5529555326%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9220092201%_ '0))))
                          (if (gx#stx-null? _%tl5529755329%_)
                              (_%__match9227492275%_
                               _%e5525355817%_
                               _%hd5525455821%_
                               _%tl5525555824%_
                               _%__splice9220092201%_
                               _%target5529555326%_
                               _%tl5529755329%_)
                              (let ()
                                (declare (not safe))
                                (_%g5524955309%_)))))
                      (let () (declare (not safe)) (_%g5524955309%_)))))
              (if (gx#stx-pair/null? _%tl5525555824%_)
                  (let ((_%__splice9220092201%_
                         (gx#syntax-split-splice->vector _%tl5525555824%_ '0)))
                    (let ((_%tl5529755329%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '1)))
                          (_%target5529555326%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9220092201%_ '0))))
                      (if (gx#stx-null? _%tl5529755329%_)
                          (_%__match9227492275%_
                           _%e5525355817%_
                           _%hd5525455821%_
                           _%tl5525555824%_
                           _%__splice9220092201%_
                           _%target5529555326%_
                           _%tl5529755329%_)
                          (let () (declare (not safe)) (_%g5524955309%_)))))
                  (let () (declare (not safe)) (_%g5524955309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5525555824%_)
                                                      (let ((_%__splice9220092201%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5525555824%_
                                                              '0)))
                                                        (let ((_%tl5529755329%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9220092201%_ '1)))
                      (_%target5529555326%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9220092201%_ '0))))
                  (if (gx#stx-null? _%tl5529755329%_)
                      (_%__match9227492275%_
                       _%e5525355817%_
                       _%hd5525455821%_
                       _%tl5525555824%_
                       _%__splice9220092201%_
                       _%target5529555326%_
                       _%tl5529755329%_)
                      (let () (declare (not safe)) (_%g5524955309%_)))))
              (let () (declare (not safe)) (_%g5524955309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5525555824%_)
                                                  (let ((_%__splice9220092201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5525555824%_
                                                          '0)))
                                                    (let ((_%tl5529755329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9220092201%_
                                                              '1)))
                                                          (_%target5529555326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9220092201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5529755329%_)
                                                          (_%__match9227492275%_
                                                           _%e5525355817%_
                                                           _%hd5525455821%_
                                                           _%tl5525555824%_
                                                           _%__splice9220092201%_
                                                           _%target5529555326%_
                                                           _%tl5529755329%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5524955309%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5524955309%_))))))
                                      (if (gx#stx-pair/null? _%tl5525555824%_)
                                          (let ((_%__splice9220092201%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5525555824%_
                                                  '0)))
                                            (let ((_%tl5529755329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9220092201%_
                                                      '1)))
                                                  (_%target5529555326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9220092201%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5529755329%_)
                                                  (_%__match9227492275%_
                                                   _%e5525355817%_
                                                   _%hd5525455821%_
                                                   _%tl5525555824%_
                                                   _%__splice9220092201%_
                                                   _%target5529555326%_
                                                   _%tl5529755329%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5524955309%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5524955309%_)))))))
                          (if (gx#stx-pair/null? _%tl5525555824%_)
                              (let ((_%__splice9220092201%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5525555824%_
                                      '0)))
                                (let ((_%tl5529755329%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '1)))
                                      (_%target5529555326%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9220092201%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5529755329%_)
                                      (_%__match9227492275%_
                                       _%e5525355817%_
                                       _%hd5525455821%_
                                       _%tl5525555824%_
                                       _%__splice9220092201%_
                                       _%target5529555326%_
                                       _%tl5529755329%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5524955309%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5524955309%_))))))
                  (let () (declare (not safe)) (_%g5524955309%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx55899%_)
        (let* ((_%__stx9227792278%_ _%stx55899%_)
               (_%g5590355924%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9227792278%_))))
          (let ((_%__kont9228092281%_
                 (lambda (_%g5590555992%_)
                   (let* ((_%g5600456011%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55899%_
                            _%g5590555992%_))
                          (_%E5600656017%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5600456011%_
                                    '([var . parts]))
                             (void)))
                          (_%K5600756233%_
                           (lambda (_%parts56021%_ _%var56023%_)
                             (let ((_%$e56025%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56023%_))))
                               (if _%$e56025%_
                                   ((lambda (_%te56029%_)
                                      (let _%loop56032%_ ((_%parts56035%_
                                                           _%parts56021%_)
                                                          (_%type56037%_
                                                           (##direct-structure-ref
                                                            _%te56029%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56038%_
                                                           _%var56023%_)
                                                          (_%nil-check?56039%_
                                                           '#f))
                                        (let* ((_%parts5604056048%_
                                                _%parts56035%_)
                                               (_%else5604256060%_
                                                (lambda () _%object56038%_))
                                               (_%K5604456215%_
                                                (lambda (_%rest56064%_
                                                         _%part56066%_)
                                                  (if (and (not _%nil-check?56039%_)
                                                           (let ((__tmp97527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56066%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97527)))
              (let ((_%str56070%_ (symbol->string _%part56066%_)))
                (_%loop56032%_
                 (cons (let ((__tmp97528
                              (substring
                               _%str56070%_
                               '1
                               (string-length _%str56070%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97528))
                       _%rest56064%_)
                 _%type56037%_
                 _%object56038%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56037%_))
                  (let* ((_%g5607556090%_
                          (lambda (_%g5607656086%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5607656086%_)))
                         (_%g5607456207%_
                          (lambda (_%g5607656094%_)
                            (if (gx#stx-pair? _%g5607656094%_)
                                (let ((_%e5607956097%_
                                       (gx#syntax-e _%g5607656094%_)))
                                  (let ((_%hd5608056101%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5607956097%_)))
                                        (_%tl5608156104%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5607956097%_))))
                                    (if (gx#stx-pair? _%tl5608156104%_)
                                        (let ((_%e5608256107%_
                                               (gx#syntax-e _%tl5608156104%_)))
                                          (let ((_%hd5608356111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5608256107%_)))
                                                (_%tl5608456114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5608256107%_))))
                                            (if (gx#stx-null? _%tl5608456114%_)
                                                ((lambda (_%g5607756117%_
                                                          _%g5607856119%_)
                                                   (if (null? _%rest56064%_)
                                                       (let ((_%$e56149%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56037%_
                                                               _%part56066%_)))
                                                         (if _%$e56149%_
                                                             ((lambda (_%slot-type56153%_)
                                                                (let* ((_%g5615656164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5615756160%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5615756160%_)))
                               (_%g5615556187%_
                                (lambda (_%g5615756168%_)
                                  ((lambda (_%g5615856171%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5615856171%_
                                                             '()))
                                                 (cons (cons _%g5607756117%_
                                                             (cons _%g5607856119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5615756168%_))))
                          (_%g5615556187%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx55899%_
                              _%slot-type56153%_)))))
                      _%$e56149%_)
                     (if _%nil-check?56039%_
                         (cons _%g5607756117%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5607856119%_ '()))
                                     '()))
                         (cons _%g5607756117%_ (cons _%g5607856119%_ '())))))
               (let ((_%$e56195%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56037%_
                       _%part56066%_)))
                 (if _%$e56195%_
                     ((lambda (_%type56199%_)
                        (let ((_%type56202%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx55899%_
                                  _%type56199%_))))
                          (if _%nil-check?56039%_
                              (_%loop56032%_
                               _%rest56064%_
                               _%type56202%_
                               (cons _%g5607756117%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5607856119%_ '()))
                                           '()))
                               '#f)
                              (_%loop56032%_
                               _%rest56064%_
                               _%type56202%_
                               (cons _%g5607756117%_
                                     (cons _%g5607856119%_ '()))
                               '#f))))
                      _%$e56195%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx55899%_
                      _%g5590555992%_
                      _%part56066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5608356111%_
                                                 _%hd5608056101%_)
                                                (_%g5607556090%_
                                                 _%g5607656094%_))))
                                        (_%g5607556090%_ _%g5607656094%_))))
                                (_%g5607556090%_ _%g5607656094%_)))))
                    (_%g5607456207%_
                     (list (if _%nil-check?56039%_
                               (cons 'check-nil! (cons _%object56038%_ '()))
                               _%object56038%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx55899%_
                            _%type56037%_
                            _%part56066%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56037%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55899%_
                       _%type56037%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5604056048%_)
                                              (let ((_%hd5604556219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5604056048%_)))
                                                    (_%tl5604656222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5604056048%_))))
                                                (let* ((_%part56225%_
                                                        _%hd5604556219%_)
                                                       (_%rest56228%_
                                                        _%tl5604656222%_))
                                                  (_%K5604456215%_
                                                   _%rest56228%_
                                                   _%part56225%_)))
                                              (_%else5604256060%_)))))
                                    _%$e56025%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5590555992%_ '())))))))
                     (if (pair? _%g5600456011%_)
                         (let ((_%hd5600856237%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5600456011%_)))
                               (_%tl5600956240%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5600456011%_))))
                           (let* ((_%var56243%_ _%hd5600856237%_)
                                  (_%parts56246%_ _%tl5600956240%_))
                             (_%K5600756233%_ _%parts56246%_ _%var56243%_)))
                         (_%E5600656017%_)))))
                (_%__kont9228292283%_
                 (lambda (_%g5591255951%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5591255951%_ '())))))
            (let ((_%__match9229892299%_
                   (lambda (_%e5590655972%_
                            _%hd5590755976%_
                            _%tl5590855979%_
                            _%e5590955982%_
                            _%hd5591055986%_
                            _%tl5591155989%_)
                     (let ((_%g5590555992%_ _%hd5591055986%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5590555992%_)
                           (_%__kont9228092281%_ _%g5590555992%_)
                           (_%__kont9228292283%_ _%hd5591055986%_))))))
              (if (gx#stx-pair? _%__stx9227792278%_)
                  (let ((_%e5590655972%_ (gx#syntax-e _%__stx9227792278%_)))
                    (let ((_%tl5590855979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5590655972%_)))
                          (_%hd5590755976%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5590655972%_))))
                      (if (gx#stx-pair? _%tl5590855979%_)
                          (let ((_%e5590955982%_
                                 (gx#syntax-e _%tl5590855979%_)))
                            (let ((_%tl5591155989%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5590955982%_)))
                                  (_%hd5591055986%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5590955982%_))))
                              (if (gx#stx-null? _%tl5591155989%_)
                                  (_%__match9229892299%_
                                   _%e5590655972%_
                                   _%hd5590755976%_
                                   _%tl5590855979%_
                                   _%e5590955982%_
                                   _%hd5591055986%_
                                   _%tl5591155989%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5590355924%_)))))
                          (let () (declare (not safe)) (_%g5590355924%_)))))
                  (let () (declare (not safe)) (_%g5590355924%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56253%_)
        (let* ((_%__stx9231592316%_ _%stx56253%_)
               (_%g5625756286%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9231592316%_))))
          (let ((_%__kont9231892319%_
                 (lambda (_%g5625956378%_ _%g5626056380%_)
                   (let* ((_%g5639456401%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56253%_
                            _%g5626056380%_))
                          (_%E5639656407%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5639456401%_
                                    '([var . parts]))
                             (void)))
                          (_%K5639756637%_
                           (lambda (_%parts56411%_ _%var56413%_)
                             (let ((_%$e56415%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56413%_))))
                               (if _%$e56415%_
                                   ((lambda (_%te56419%_)
                                      (let _%loop56422%_ ((_%parts56425%_
                                                           _%parts56411%_)
                                                          (_%type56427%_
                                                           (##direct-structure-ref
                                                            _%te56419%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56428%_
                                                           _%var56413%_)
                                                          (_%checked-mutator?56429%_
                                                           (##direct-structure-ref
                                                            _%te56419%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56430%_
                                                           '#f))
                                        (let* ((_%parts5643156438%_
                                                _%parts56425%_)
                                               (_%E5643356444%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5643156438%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5643456619%_
                                                (lambda (_%rest56448%_
                                                         _%part56450%_)
                                                  (if (and (not _%nil-check?56430%_)
                                                           (let ((__tmp97529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56450%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp97529)))
              (let ((_%str56454%_ (symbol->string _%part56450%_)))
                (_%loop56422%_
                 (cons (let ((__tmp97530
                              (substring
                               _%str56454%_
                               '1
                               (string-length _%str56454%_))))
                         (declare (not safe))
                         (##string->symbol __tmp97530))
                       _%rest56448%_)
                 _%type56427%_
                 _%object56428%_
                 _%checked-mutator?56429%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56427%_))
                  (if (null? _%rest56448%_)
                      (let* ((_%g5646156476%_
                              (lambda (_%g5646256472%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5646256472%_)))
                             (_%g5646056533%_
                              (lambda (_%g5646256480%_)
                                (if (gx#stx-pair? _%g5646256480%_)
                                    (let ((_%e5646556483%_
                                           (gx#syntax-e _%g5646256480%_)))
                                      (let ((_%hd5646656487%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5646556483%_)))
                                            (_%tl5646756490%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5646556483%_))))
                                        (if (gx#stx-pair? _%tl5646756490%_)
                                            (let ((_%e5646856493%_
                                                   (gx#syntax-e
                                                    _%tl5646756490%_)))
                                              (let ((_%hd5646956497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5646856493%_)))
                                                    (_%tl5647056500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5646856493%_))))
                                                (if (gx#stx-null?
                                                     _%tl5647056500%_)
                                                    ((lambda (_%g5646356503%_
                                                              _%g5646456505%_)
                                                       (if _%nil-check?56430%_
                                                           (cons _%g5646356503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5646456505%_ '()))
                               (cons _%g5625956378%_ '())))
                   (cons _%g5646356503%_
                         (cons _%g5646456505%_ (cons _%g5625956378%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5646956497%_
                                                     _%hd5646656487%_)
                                                    (_%g5646156476%_
                                                     _%g5646256480%_))))
                                            (_%g5646156476%_
                                             _%g5646256480%_))))
                                    (_%g5646156476%_ _%g5646256480%_)))))
                        (_%g5646056533%_
                         (list _%object56428%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56253%_
                                _%type56427%_
                                _%part56450%_
                                (if _%checked-mutator?56429%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56427%_
                                     _%part56450%_)
                                    '#f)))))
                      (let ((_%$e56537%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56427%_
                              _%part56450%_)))
                        (if _%$e56537%_
                            ((lambda (_%type56541%_)
                               (let* ((_%type56544%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56253%_
                                          _%type56541%_)))
                                      (_%g5654756562%_
                                       (lambda (_%g5654856558%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5654856558%_)))
                                      (_%g5654656609%_
                                       (lambda (_%g5654856566%_)
                                         (if (gx#stx-pair? _%g5654856566%_)
                                             (let ((_%e5655156569%_
                                                    (gx#syntax-e
                                                     _%g5654856566%_)))
                                               (let ((_%hd5655256573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5655156569%_)))
                                                     (_%tl5655356576%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5655156569%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5655356576%_)
                                                     (let ((_%e5655456579%_
                                                            (gx#syntax-e
                                                             _%tl5655356576%_)))
                                                       (let ((_%hd5655556583%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5655456579%_)))
                     (_%tl5655656586%_
                      (let () (declare (not safe)) (##cdr _%e5655456579%_))))
                 (if (gx#stx-null? _%tl5655656586%_)
                     ((lambda (_%g5654956589%_ _%g5655056591%_)
                        (_%loop56422%_
                         _%rest56448%_
                         _%type56544%_
                         (cons _%g5654956589%_ (cons _%g5655056591%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56544%_
                          _%part56450%_)
                         '#f))
                      _%hd5655556583%_
                      _%hd5655256573%_)
                     (_%g5654756562%_ _%g5654856566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5654756562%_
                                                      _%g5654856566%_))))
                                             (_%g5654756562%_
                                              _%g5654856566%_)))))
                                 (_%g5654656609%_
                                  (list (if _%nil-check?56430%_
                                            (cons 'check-nil!
                                                  (cons _%object56428%_ '()))
                                            _%object56428%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56253%_
                                         _%type56544%_
                                         _%part56450%_)))))
                             _%$e56537%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56253%_
                             _%g5626056380%_
                             _%part56450%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56427%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56253%_
                       _%type56427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5643156438%_)
                                              (let ((_%hd5643556623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5643156438%_)))
                                                    (_%tl5643656626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5643156438%_))))
                                                (let* ((_%part56629%_
                                                        _%hd5643556623%_)
                                                       (_%rest56632%_
                                                        _%tl5643656626%_))
                                                  (_%K5643456619%_
                                                   _%rest56632%_
                                                   _%part56629%_)))
                                              (_%E5643356444%_)))))
                                    _%$e56415%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56253%_)))))))
                     (if (pair? _%g5639456401%_)
                         (let ((_%hd5639856641%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5639456401%_)))
                               (_%tl5639956644%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5639456401%_))))
                           (let* ((_%var56647%_ _%hd5639856641%_)
                                  (_%parts56650%_ _%tl5639956644%_))
                             (_%K5639756637%_ _%parts56650%_ _%var56647%_)))
                         (_%E5639656407%_)))))
                (_%__kont9232092321%_
                 (lambda (_%g5627056323%_ _%g5627156325%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56253%_)))))
            (let ((_%__match9234292343%_
                   (lambda (_%e5626156348%_
                            _%hd5626256352%_
                            _%tl5626356355%_
                            _%e5626456358%_
                            _%hd5626556362%_
                            _%tl5626656365%_
                            _%e5626756368%_
                            _%hd5626856372%_
                            _%tl5626956375%_)
                     (let ((_%g5625956378%_ _%hd5626856372%_)
                           (_%g5626056380%_ _%hd5626556362%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5626056380%_)
                           (_%__kont9231892319%_
                            _%g5625956378%_
                            _%g5626056380%_)
                           (_%__kont9232092321%_
                            _%hd5626856372%_
                            _%hd5626556362%_))))))
              (if (gx#stx-pair? _%__stx9231592316%_)
                  (let ((_%e5626156348%_ (gx#syntax-e _%__stx9231592316%_)))
                    (let ((_%tl5626356355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5626156348%_)))
                          (_%hd5626256352%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5626156348%_))))
                      (if (gx#stx-pair? _%tl5626356355%_)
                          (let ((_%e5626456358%_
                                 (gx#syntax-e _%tl5626356355%_)))
                            (let ((_%tl5626656365%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5626456358%_)))
                                  (_%hd5626556362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5626456358%_))))
                              (if (gx#stx-pair? _%tl5626656365%_)
                                  (let ((_%e5626756368%_
                                         (gx#syntax-e _%tl5626656365%_)))
                                    (let ((_%tl5626956375%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5626756368%_)))
                                          (_%hd5626856372%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5626756368%_))))
                                      (if (gx#stx-null? _%tl5626956375%_)
                                          (_%__match9234292343%_
                                           _%e5626156348%_
                                           _%hd5626256352%_
                                           _%tl5626356355%_
                                           _%e5626456358%_
                                           _%hd5626556362%_
                                           _%tl5626656365%_
                                           _%e5626756368%_
                                           _%hd5626856372%_
                                           _%tl5626956375%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5625756286%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5625756286%_)))))
                          (let () (declare (not safe)) (_%g5625756286%_)))))
                  (let () (declare (not safe)) (_%g5625756286%_))))))))))

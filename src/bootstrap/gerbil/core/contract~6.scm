(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g101444_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101445_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101446_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101449_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101450_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101453_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101454_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101455_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101456_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101460_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101461_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101462_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101463_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101467_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx52105%_)
        (let* ((_%__stx9477094771%_ _%stx52105%_)
               (_%$%g5211452323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9477094771%_))))
          (let ((_%__kont9477394774%_
                 (lambda (_%$%g5211653215%_
                          _%$%g5211753217%_
                          _%$%g5211853218%_
                          _%$%g5211953219%_
                          _%$%g5212053220%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5212053220%_
                                     (cons _%$%g5211953219%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5212053220%_
                                                       (cons _%$%g5211853218%_
                                                             (cons _%$%g5211753217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5326353266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5326453269%_)
                  (cons _%$%g5326353266%_ _%$%g5326453269%_))
                '()
                _%$%g5211653215%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9477794778%_
                 (lambda (_%$%g5214853061%_
                          _%$%g5214953063%_
                          _%$%g5215053064%_
                          _%$%g5215153065%_
                          _%$%g5215253066%_
                          _%$%g5215353067%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5215353067%_
                                     (cons _%$%g5215253066%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5215353067%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5215153065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5215353067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5215053064%_
                                       (cons _%$%g5214953063%_ '())))
                           (foldr (lambda (_%$%g5311153114%_ _%$%g5311253117%_)
                                    (cons _%$%g5311153114%_ _%$%g5311253117%_))
                                  '()
                                  _%$%g5214853061%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9478194782%_
                 (lambda (_%$%g5218752880%_
                          _%$%g5218852882%_
                          _%$%g5218952883%_
                          _%$%g5219052884%_)
                   (let ((_%meta52921%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx52105%_
                             _%$%g5218852882%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52921%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5219052884%_
                                           (cons _%$%g5218952883%_
                                                 (cons _%$%g5218852882%_ '())))
                                     (foldr (lambda (_%$%g5292552928%_
                                                     _%$%g5292652931%_)
                                              (cons _%$%g5292552928%_
                                                    _%$%g5292652931%_))
                                            '()
                                            _%$%g5218752880%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52921%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5219052884%_
                                               (cons _%$%g5218952883%_
                                                     (cons _%$%g5218852882%_
                                                           '())))
                                         (foldr (lambda (_%$%g5293552938%_
                                                         _%$%g5293652941%_)
                                                  (cons _%$%g5293552938%_
                                                        _%$%g5293652941%_))
                                                '()
                                                _%$%g5218752880%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx52105%_
                              _%$%g5218852882%_
                              _%meta52921%_))))))
                (_%__kont9478594786%_
                 (lambda (_%$%g5221552760%_
                          _%$%g5221652762%_
                          _%$%g5221752763%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5221752763%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5221652762%_ '())))
                               (foldr (lambda (_%$%g5278652789%_
                                               _%$%g5278752792%_)
                                        (cons _%$%g5278652789%_
                                              _%$%g5278752792%_))
                                      '()
                                      _%$%g5221552760%_)))))
                (_%__kont9478994790%_
                 (lambda (_%$%g5224252620%_
                          _%$%g5224352622%_
                          _%$%g5224452623%_
                          _%$%g5224552624%_
                          _%$%g5224652625%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5224652625%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5224552624%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5224652625%_
                                                       (cons _%$%g5224452623%_
                                                             (cons _%$%g5224352622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5266652669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5266752672%_)
                  (cons _%$%g5266652669%_ _%$%g5266752672%_))
                '()
                _%$%g5224252620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9479394794%_
                 (lambda (_%$%g5227752480%_
                          _%$%g5227852482%_
                          _%$%g5227952483%_
                          _%$%g5228052484%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5228052484%_ _%$%g5227952483%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5227852482%_
                                                 (foldr (lambda (_%$%g5250652509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5250752512%_)
                  (cons _%$%g5250652509%_ _%$%g5250752512%_))
                '()
                _%$%g5227752480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9479794798%_
                 (lambda (_%$%g5230252378%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5239652399%_
                                               _%$%g5239752402%_)
                                        (cons _%$%g5239652399%_
                                              _%$%g5239752402%_))
                                      '()
                                      _%$%g5230252378%_))))))
            (let* ((_%__match9510395104%_
                    (lambda (_%$%e5230352330%_
                             _%$%hd5230452334%_
                             _%$%tl5230552337%_
                             _%$%e5230652340%_
                             _%$%hd5230752344%_
                             _%$%tl5230852347%_
                             _%__splice9479994800%_
                             _%$%target5230952350%_
                             _%$%tl5231152353%_)
                      (letrec ((_%$%loop5231252356%_
                                (lambda (_%$%hd5231052360%_
                                         _%$%body5231652363%_)
                                  (if (gx#stx-pair? _%$%hd5231052360%_)
                                      (let ((_%$%e5231352365%_
                                             (gx#syntax-e _%$%hd5231052360%_)))
                                        (let ((_%$%lp-tl5231552372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5231352365%_)))
                                              (_%$%lp-hd5231452369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5231352365%_))))
                                          (_%$%loop5231252356%_
                                           _%$%lp-tl5231552372%_
                                           (cons _%$%lp-hd5231452369%_
                                                 _%$%body5231652363%_))))
                                      (let ((_%$%body5231752375%_
                                             (reverse _%$%body5231652363%_)))
                                        (_%__kont9479794798%_
                                         _%$%body5231752375%_))))))
                        (_%$%loop5231252356%_ _%$%target5230952350%_ '()))))
                   (_%__match9508195082%_
                    (lambda (_%$%e5228152412%_
                             _%$%hd5228252416%_
                             _%$%tl5228352419%_
                             _%$%e5228452422%_
                             _%$%hd5228552426%_
                             _%$%tl5228652429%_
                             _%$%e5228752432%_
                             _%$%hd5228852436%_
                             _%$%tl5228952439%_
                             _%$%e5229052442%_
                             _%$%hd5229152446%_
                             _%$%tl5229252449%_
                             _%__splice9479594796%_
                             _%$%target5229352452%_
                             _%$%tl5229552455%_)
                      (letrec ((_%$%loop5229652458%_
                                (lambda (_%$%hd5229452462%_
                                         _%$%body5230052465%_)
                                  (if (gx#stx-pair? _%$%hd5229452462%_)
                                      (let ((_%$%e5229752467%_
                                             (gx#syntax-e _%$%hd5229452462%_)))
                                        (let ((_%$%lp-tl5229952474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229752467%_)))
                                              (_%$%lp-hd5229852471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229752467%_))))
                                          (_%$%loop5229652458%_
                                           _%$%lp-tl5229952474%_
                                           (cons _%$%lp-hd5229852471%_
                                                 _%$%body5230052465%_))))
                                      (let ((_%$%body5230152477%_
                                             (reverse _%$%body5230052465%_)))
                                        (let ((_%$%g5227752480%_
                                               _%$%body5230152477%_)
                                              (_%$%g5227852482%_
                                               _%$%tl5228952439%_)
                                              (_%$%g5227952483%_
                                               _%$%tl5229252449%_)
                                              (_%$%g5228052484%_
                                               _%$%hd5229152446%_))
                                          (if (gx#identifier?
                                               _%$%g5228052484%_)
                                              (_%__kont9479394794%_
                                               _%$%g5227752480%_
                                               _%$%g5227852482%_
                                               _%$%g5227952483%_
                                               _%$%g5228052484%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_)))))))))
                        (_%$%loop5229652458%_ _%$%target5229352452%_ '()))))
                   (_%__match9506795068%_
                    (lambda (_%$%e5228152412%_
                             _%$%hd5228252416%_
                             _%$%tl5228352419%_
                             _%$%e5228452422%_
                             _%$%hd5228552426%_
                             _%$%tl5228652429%_
                             _%$%e5228752432%_
                             _%$%hd5228852436%_
                             _%$%tl5228952439%_)
                      (if (gx#stx-pair? _%$%hd5228852436%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5228852436%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (if (gx#stx-pair/null? _%$%tl5228652429%_)
                                  (let ((_%__splice9479594796%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5228652429%_
                                          '0)))
                                    (let ((_%$%tl5229552455%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '1)))
                                          (_%$%target5229352452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5229552455%_)
                                          (_%__match9508195082%_
                                           _%$%e5228152412%_
                                           _%$%hd5228252416%_
                                           _%$%tl5228352419%_
                                           _%$%e5228452422%_
                                           _%$%hd5228552426%_
                                           _%$%tl5228652429%_
                                           _%$%e5228752432%_
                                           _%$%hd5228852436%_
                                           _%$%tl5228952439%_
                                           _%$%e5229052442%_
                                           _%$%hd5229152446%_
                                           _%$%tl5229252449%_
                                           _%__splice9479594796%_
                                           _%$%target5229352452%_
                                           _%$%tl5229552455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                   (_%__match9504995050%_
                    (lambda (_%$%e5224752522%_
                             _%$%hd5224852526%_
                             _%$%tl5224952529%_
                             _%$%e5225052532%_
                             _%$%hd5225152536%_
                             _%$%tl5225252539%_
                             _%$%e5225352542%_
                             _%$%hd5225452546%_
                             _%$%tl5225552549%_
                             _%$%e5225652552%_
                             _%$%hd5225752556%_
                             _%$%tl5225852559%_
                             _%$%e5225952562%_
                             _%$%hd5226052566%_
                             _%$%tl5226152569%_
                             _%$%e5226252572%_
                             _%$%hd5226352576%_
                             _%$%tl5226452579%_
                             _%$%e5226552582%_
                             _%$%hd5226652586%_
                             _%$%tl5226752589%_
                             _%__splice9479194792%_
                             _%$%target5226852592%_
                             _%$%tl5227052595%_)
                      (letrec ((_%$%loop5227152598%_
                                (lambda (_%$%hd5226952602%_
                                         _%$%body5227552605%_)
                                  (if (gx#stx-pair? _%$%hd5226952602%_)
                                      (let ((_%$%e5227252607%_
                                             (gx#syntax-e _%$%hd5226952602%_)))
                                        (let ((_%$%lp-tl5227452614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5227252607%_)))
                                              (_%$%lp-hd5227352611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5227252607%_))))
                                          (_%$%loop5227152598%_
                                           _%$%lp-tl5227452614%_
                                           (cons _%$%lp-hd5227352611%_
                                                 _%$%body5227552605%_))))
                                      (let ((_%$%body5227652617%_
                                             (reverse _%$%body5227552605%_)))
                                        (let ((_%$%g5224252620%_
                                               _%$%body5227652617%_)
                                              (_%$%g5224352622%_
                                               _%$%hd5226652586%_)
                                              (_%$%g5224452623%_
                                               _%$%hd5226352576%_)
                                              (_%$%g5224552624%_
                                               _%$%hd5226052566%_)
                                              (_%$%g5224652625%_
                                               _%$%hd5225452546%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5224652625%_)
                                                   (gx#identifier?
                                                    _%$%g5224352622%_)
                                                   (gx#identifier?
                                                    _%$%g5224452623%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5224452623%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5224452623%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5224452623%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5224452623%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9478994790%_
                                               _%$%g5224252620%_
                                               _%$%g5224352622%_
                                               _%$%g5224452623%_
                                               _%$%g5224552624%_
                                               _%$%g5224652625%_)
                                              (_%__match9506795068%_
                                               _%$%e5224752522%_
                                               _%$%hd5224852526%_
                                               _%$%tl5224952529%_
                                               _%$%e5225052532%_
                                               _%$%hd5225152536%_
                                               _%$%tl5225252539%_
                                               _%$%e5225352542%_
                                               _%$%hd5225452546%_
                                               _%$%tl5225552549%_))))))))
                        (_%$%loop5227152598%_ _%$%target5226852592%_ '()))))
                   (_%__match9499394994%_
                    (lambda (_%$%e5221852682%_
                             _%$%hd5221952686%_
                             _%$%tl5222052689%_
                             _%$%e5222152692%_
                             _%$%hd5222252696%_
                             _%$%tl5222352699%_
                             _%$%e5222452702%_
                             _%$%hd5222552706%_
                             _%$%tl5222652709%_
                             _%$%e5222752712%_
                             _%$%hd5222852716%_
                             _%$%tl5222952719%_
                             _%$%e5223052722%_
                             _%$%hd5223152726%_
                             _%$%tl5223252729%_
                             _%__splice9478794788%_
                             _%$%target5223352732%_
                             _%$%tl5223552735%_)
                      (letrec ((_%$%loop5223652738%_
                                (lambda (_%$%hd5223452742%_
                                         _%$%body5224052745%_)
                                  (if (gx#stx-pair? _%$%hd5223452742%_)
                                      (let ((_%$%e5223752747%_
                                             (gx#syntax-e _%$%hd5223452742%_)))
                                        (let ((_%$%lp-tl5223952754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5223752747%_)))
                                              (_%$%lp-hd5223852751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5223752747%_))))
                                          (_%$%loop5223652738%_
                                           _%$%lp-tl5223952754%_
                                           (cons _%$%lp-hd5223852751%_
                                                 _%$%body5224052745%_))))
                                      (let ((_%$%body5224152757%_
                                             (reverse _%$%body5224052745%_)))
                                        (let ((_%$%g5221552760%_
                                               _%$%body5224152757%_)
                                              (_%$%g5221652762%_
                                               _%$%hd5223152726%_)
                                              (_%$%g5221752763%_
                                               _%$%hd5222552706%_))
                                          (if (gx#identifier?
                                               _%$%g5221752763%_)
                                              (_%__kont9478594786%_
                                               _%$%g5221552760%_
                                               _%$%g5221652762%_
                                               _%$%g5221752763%_)
                                              (_%__match9506795068%_
                                               _%$%e5221852682%_
                                               _%$%hd5221952686%_
                                               _%$%tl5222052689%_
                                               _%$%e5222152692%_
                                               _%$%hd5222252696%_
                                               _%$%tl5222352699%_
                                               _%$%e5222452702%_
                                               _%$%hd5222552706%_
                                               _%$%tl5222652709%_))))))))
                        (_%$%loop5223652738%_ _%$%target5223352732%_ '()))))
                   (_%__match9497394974%_
                    (lambda (_%$%e5221852682%_
                             _%$%hd5221952686%_
                             _%$%tl5222052689%_
                             _%$%e5222152692%_
                             _%$%hd5222252696%_
                             _%$%tl5222352699%_
                             _%$%e5222452702%_
                             _%$%hd5222552706%_
                             _%$%tl5222652709%_
                             _%$%e5222752712%_
                             _%$%hd5222852716%_
                             _%$%tl5222952719%_)
                      (if (gx#identifier? _%$%hd5222852716%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101444_|
                               _%$%hd5222852716%_)
                              (if (gx#stx-pair? _%$%tl5222952719%_)
                                  (let ((_%$%e5223052722%_
                                         (gx#syntax-e _%$%tl5222952719%_)))
                                    (let ((_%$%tl5223252729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5223052722%_)))
                                          (_%$%hd5223152726%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5223052722%_))))
                                      (if (gx#stx-null? _%$%tl5223252729%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5222352699%_)
                                              (let ((_%__splice9478794788%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5222352699%_
                                                      '0)))
                                                (let ((_%$%tl5223552735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9478794788%_
                                                          '1)))
                                                      (_%$%target5223352732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9478794788%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5223552735%_)
                                                      (_%__match9499394994%_
                                                       _%$%e5221852682%_
                                                       _%$%hd5221952686%_
                                                       _%$%tl5222052689%_
                                                       _%$%e5222152692%_
                                                       _%$%hd5222252696%_
                                                       _%$%tl5222352699%_
                                                       _%$%e5222452702%_
                                                       _%$%hd5222552706%_
                                                       _%$%tl5222652709%_
                                                       _%$%e5222752712%_
                                                       _%$%hd5222852716%_
                                                       _%$%tl5222952719%_
                                                       _%$%e5223052722%_
                                                       _%$%hd5223152726%_
                                                       _%$%tl5223252729%_
                                                       _%__splice9478794788%_
                                                       _%$%target5223352732%_
                                                       _%$%tl5223552735%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5222552706%_)
                                                          (let ((_%$%e5229052442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5222552706%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5222552706%_)
                                                  (let ((_%$%e5229052442%_
                                                         (gx#syntax-e
                                                          _%$%hd5222552706%_)))
                                                    (let ((_%$%tl5229252449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5229052442%_)))
                                                          (_%$%hd5229152446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5229052442%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5211452323%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))
                                          (if (gx#stx-pair? _%$%tl5223252729%_)
                                              (let ((_%$%e5226252572%_
                                                     (gx#syntax-e
                                                      _%$%tl5223252729%_)))
                                                (let ((_%$%tl5226452579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5226252572%_)))
                                                      (_%$%hd5226352576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5226252572%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5226452579%_)
                                                      (let ((_%$%e5226552582%_
                                                             (gx#syntax-e
                                                              _%$%tl5226452579%_)))
                                                        (let ((_%$%tl5226752589%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5226552582%_)))
                      (_%$%hd5226652586%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5226552582%_))))
                  (if (gx#stx-null? _%$%tl5226752589%_)
                      (if (gx#stx-pair/null? _%$%tl5222352699%_)
                          (let ((_%__splice9479194792%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5222352699%_
                                  '0)))
                            (let ((_%$%tl5227052595%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479194792%_ '1)))
                                  (_%$%target5226852592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479194792%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5227052595%_)
                                  (_%__match9504995050%_
                                   _%$%e5221852682%_
                                   _%$%hd5221952686%_
                                   _%$%tl5222052689%_
                                   _%$%e5222152692%_
                                   _%$%hd5222252696%_
                                   _%$%tl5222352699%_
                                   _%$%e5222452702%_
                                   _%$%hd5222552706%_
                                   _%$%tl5222652709%_
                                   _%$%e5222752712%_
                                   _%$%hd5222852716%_
                                   _%$%tl5222952719%_
                                   _%$%e5223052722%_
                                   _%$%hd5223152726%_
                                   _%$%tl5223252729%_
                                   _%$%e5226252572%_
                                   _%$%hd5226352576%_
                                   _%$%tl5226452579%_
                                   _%$%e5226552582%_
                                   _%$%hd5226652586%_
                                   _%$%tl5226752589%_
                                   _%__splice9479194792%_
                                   _%$%target5226852592%_
                                   _%$%tl5227052595%_)
                                  (if (gx#stx-pair? _%$%hd5222552706%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5222552706%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))
                          (if (gx#stx-pair? _%$%hd5222552706%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5222552706%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                      (if (gx#stx-pair? _%$%hd5222552706%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5222552706%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (if (gx#stx-pair/null? _%$%tl5222352699%_)
                                  (let ((_%__splice9479594796%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5222352699%_
                                          '0)))
                                    (let ((_%$%tl5229552455%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '1)))
                                          (_%$%target5229352452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5229552455%_)
                                          (_%__match9508195082%_
                                           _%$%e5221852682%_
                                           _%$%hd5221952686%_
                                           _%$%tl5222052689%_
                                           _%$%e5222152692%_
                                           _%$%hd5222252696%_
                                           _%$%tl5222352699%_
                                           _%$%e5222452702%_
                                           _%$%hd5222552706%_
                                           _%$%tl5222652709%_
                                           _%$%e5229052442%_
                                           _%$%hd5229152446%_
                                           _%$%tl5229252449%_
                                           _%__splice9479594796%_
                                           _%$%target5229352452%_
                                           _%$%tl5229552455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))))
              (if (gx#stx-pair? _%$%hd5222552706%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5222552706%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5222352699%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5222352699%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5221852682%_
                                   _%$%hd5221952686%_
                                   _%$%tl5222052689%_
                                   _%$%e5222152692%_
                                   _%$%hd5222252696%_
                                   _%$%tl5222352699%_
                                   _%$%e5222452702%_
                                   _%$%hd5222552706%_
                                   _%$%tl5222652709%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5222552706%_)
                                                  (let ((_%$%e5229052442%_
                                                         (gx#syntax-e
                                                          _%$%hd5222552706%_)))
                                                    (let ((_%$%tl5229252449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5229052442%_)))
                                                          (_%$%hd5229152446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5229052442%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5222352699%_)
                                                          (let ((_%__splice9479594796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5222352699%_
                          '0)))
                    (let ((_%$%tl5229552455%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '1)))
                          (_%$%target5229352452%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '0))))
                      (if (gx#stx-null? _%$%tl5229552455%_)
                          (_%__match9508195082%_
                           _%$%e5221852682%_
                           _%$%hd5221952686%_
                           _%$%tl5222052689%_
                           _%$%e5222152692%_
                           _%$%hd5222252696%_
                           _%$%tl5222352699%_
                           _%$%e5222452702%_
                           _%$%hd5222552706%_
                           _%$%tl5222652709%_
                           _%$%e5229052442%_
                           _%$%hd5229152446%_
                           _%$%tl5229252449%_
                           _%__splice9479594796%_
                           _%$%target5229352452%_
                           _%$%tl5229552455%_)
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))))
                                  (if (gx#stx-pair? _%$%hd5222552706%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5222552706%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5222352699%_)
                                              (let ((_%__splice9479594796%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5222352699%_
                                                      '0)))
                                                (let ((_%$%tl5229552455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '1)))
                                                      (_%$%target5229352452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5229552455%_)
                                                      (_%__match9508195082%_
                                                       _%$%e5221852682%_
                                                       _%$%hd5221952686%_
                                                       _%$%tl5222052689%_
                                                       _%$%e5222152692%_
                                                       _%$%hd5222252696%_
                                                       _%$%tl5222352699%_
                                                       _%$%e5222452702%_
                                                       _%$%hd5222552706%_
                                                       _%$%tl5222652709%_
                                                       _%$%e5229052442%_
                                                       _%$%hd5229152446%_
                                                       _%$%tl5229252449%_
                                                       _%__splice9479594796%_
                                                       _%$%target5229352452%_
                                                       _%$%tl5229552455%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5211452323%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                              (if (gx#stx-pair? _%$%hd5222552706%_)
                                  (let ((_%$%e5229052442%_
                                         (gx#syntax-e _%$%hd5222552706%_)))
                                    (let ((_%$%tl5229252449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5229052442%_)))
                                          (_%$%hd5229152446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5229052442%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5222352699%_)
                                          (let ((_%__splice9479594796%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5222352699%_
                                                  '0)))
                                            (let ((_%$%tl5229552455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9479594796%_
                                                      '1)))
                                                  (_%$%target5229352452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9479594796%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5229552455%_)
                                                  (_%__match9508195082%_
                                                   _%$%e5221852682%_
                                                   _%$%hd5221952686%_
                                                   _%$%tl5222052689%_
                                                   _%$%e5222152692%_
                                                   _%$%hd5222252696%_
                                                   _%$%tl5222352699%_
                                                   _%$%e5222452702%_
                                                   _%$%hd5222552706%_
                                                   _%$%tl5222652709%_
                                                   _%$%e5229052442%_
                                                   _%$%hd5229152446%_
                                                   _%$%tl5229252449%_
                                                   _%__splice9479594796%_
                                                   _%$%target5229352452%_
                                                   _%$%tl5229552455%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                          (if (gx#stx-pair? _%$%hd5222552706%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5222552706%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (if (gx#stx-pair/null? _%$%tl5222352699%_)
                                      (let ((_%__splice9479594796%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5222352699%_
                                              '0)))
                                        (let ((_%$%tl5229552455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9479594796%_
                                                  '1)))
                                              (_%$%target5229352452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9479594796%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5229552455%_)
                                              (_%__match9508195082%_
                                               _%$%e5221852682%_
                                               _%$%hd5221952686%_
                                               _%$%tl5222052689%_
                                               _%$%e5222152692%_
                                               _%$%hd5222252696%_
                                               _%$%tl5222352699%_
                                               _%$%e5222452702%_
                                               _%$%hd5222552706%_
                                               _%$%tl5222652709%_
                                               _%$%e5229052442%_
                                               _%$%hd5229152446%_
                                               _%$%tl5229252449%_
                                               _%__splice9479594796%_
                                               _%$%target5229352452%_
                                               _%$%tl5229552455%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))))
                   (_%__match9494994950%_
                    (lambda (_%$%e5219152802%_
                             _%$%hd5219252806%_
                             _%$%tl5219352809%_
                             _%$%e5219452812%_
                             _%$%hd5219552816%_
                             _%$%tl5219652819%_
                             _%$%e5219752822%_
                             _%$%hd5219852826%_
                             _%$%tl5219952829%_
                             _%$%e5220052832%_
                             _%$%hd5220152836%_
                             _%$%tl5220252839%_
                             _%$%e5220352842%_
                             _%$%hd5220452846%_
                             _%$%tl5220552849%_
                             _%__splice9478394784%_
                             _%$%target5220652852%_
                             _%$%tl5220852855%_)
                      (letrec ((_%$%loop5220952858%_
                                (lambda (_%$%hd5220752862%_
                                         _%$%body5221352865%_)
                                  (if (gx#stx-pair? _%$%hd5220752862%_)
                                      (let ((_%$%e5221052867%_
                                             (gx#syntax-e _%$%hd5220752862%_)))
                                        (let ((_%$%lp-tl5221252874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5221052867%_)))
                                              (_%$%lp-hd5221152871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5221052867%_))))
                                          (_%$%loop5220952858%_
                                           _%$%lp-tl5221252874%_
                                           (cons _%$%lp-hd5221152871%_
                                                 _%$%body5221352865%_))))
                                      (let ((_%$%body5221452877%_
                                             (reverse _%$%body5221352865%_)))
                                        (let ((_%$%g5218752880%_
                                               _%$%body5221452877%_)
                                              (_%$%g5218852882%_
                                               _%$%hd5220452846%_)
                                              (_%$%g5218952883%_
                                               _%$%hd5220152836%_)
                                              (_%$%g5219052884%_
                                               _%$%hd5219852826%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5219052884%_)
                                                   (gx#identifier?
                                                    _%$%g5218852882%_)
                                                   (gx#identifier?
                                                    _%$%g5218952883%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5218952883%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5218952883%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5218952883%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5218952883%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9478194782%_
                                               _%$%g5218752880%_
                                               _%$%g5218852882%_
                                               _%$%g5218952883%_
                                               _%$%g5219052884%_)
                                              (_%__match9497394974%_
                                               _%$%e5219152802%_
                                               _%$%hd5219252806%_
                                               _%$%tl5219352809%_
                                               _%$%e5219452812%_
                                               _%$%hd5219552816%_
                                               _%$%tl5219652819%_
                                               _%$%e5219752822%_
                                               _%$%hd5219852826%_
                                               _%$%tl5219952829%_
                                               _%$%e5220052832%_
                                               _%$%hd5220152836%_
                                               _%$%tl5220252839%_))))))))
                        (_%$%loop5220952858%_ _%$%target5220652852%_ '()))))
                   (_%__match9490994910%_
                    (lambda (_%$%e5215452953%_
                             _%$%hd5215552957%_
                             _%$%tl5215652960%_
                             _%$%e5215752963%_
                             _%$%hd5215852967%_
                             _%$%tl5215952970%_
                             _%$%e5216052973%_
                             _%$%hd5216152977%_
                             _%$%tl5216252980%_
                             _%$%e5216352983%_
                             _%$%hd5216452987%_
                             _%$%tl5216552990%_
                             _%$%e5216652993%_
                             _%$%hd5216752997%_
                             _%$%tl5216853000%_
                             _%$%e5216953003%_
                             _%$%hd5217053007%_
                             _%$%tl5217153010%_
                             _%$%e5217253013%_
                             _%$%hd5217353017%_
                             _%$%tl5217453020%_
                             _%$%e5217553023%_
                             _%$%hd5217653027%_
                             _%$%tl5217753030%_
                             _%__splice9477994780%_
                             _%$%target5217853033%_
                             _%$%tl5218053036%_)
                      (letrec ((_%$%loop5218153039%_
                                (lambda (_%$%hd5217953043%_
                                         _%$%body5218553046%_)
                                  (if (gx#stx-pair? _%$%hd5217953043%_)
                                      (let ((_%$%e5218253048%_
                                             (gx#syntax-e _%$%hd5217953043%_)))
                                        (let ((_%$%lp-tl5218453055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5218253048%_)))
                                              (_%$%lp-hd5218353052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5218253048%_))))
                                          (_%$%loop5218153039%_
                                           _%$%lp-tl5218453055%_
                                           (cons _%$%lp-hd5218353052%_
                                                 _%$%body5218553046%_))))
                                      (let ((_%$%body5218653058%_
                                             (reverse _%$%body5218553046%_)))
                                        (let ((_%$%g5214853061%_
                                               _%$%body5218653058%_)
                                              (_%$%g5214953063%_
                                               _%$%hd5217653027%_)
                                              (_%$%g5215053064%_
                                               _%$%hd5217353017%_)
                                              (_%$%g5215153065%_
                                               _%$%hd5217053007%_)
                                              (_%$%g5215253066%_
                                               _%$%hd5216452987%_)
                                              (_%$%g5215353067%_
                                               _%$%hd5216152977%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5215353067%_)
                                                   (gx#identifier?
                                                    _%$%g5214953063%_)
                                                   (gx#identifier?
                                                    _%$%g5215053064%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5215053064%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5215053064%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5215053064%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5215053064%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9477794778%_
                                               _%$%g5214853061%_
                                               _%$%g5214953063%_
                                               _%$%g5215053064%_
                                               _%$%g5215153065%_
                                               _%$%g5215253066%_
                                               _%$%g5215353067%_)
                                              (_%__match9497394974%_
                                               _%$%e5215452953%_
                                               _%$%hd5215552957%_
                                               _%$%tl5215652960%_
                                               _%$%e5215752963%_
                                               _%$%hd5215852967%_
                                               _%$%tl5215952970%_
                                               _%$%e5216052973%_
                                               _%$%hd5216152977%_
                                               _%$%tl5216252980%_
                                               _%$%e5216352983%_
                                               _%$%hd5216452987%_
                                               _%$%tl5216552990%_))))))))
                        (_%$%loop5218153039%_ _%$%target5217853033%_ '()))))
                   (_%__match9487794878%_
                    (lambda (_%$%e5215452953%_
                             _%$%hd5215552957%_
                             _%$%tl5215652960%_
                             _%$%e5215752963%_
                             _%$%hd5215852967%_
                             _%$%tl5215952970%_
                             _%$%e5216052973%_
                             _%$%hd5216152977%_
                             _%$%tl5216252980%_
                             _%$%e5216352983%_
                             _%$%hd5216452987%_
                             _%$%tl5216552990%_
                             _%$%e5216652993%_
                             _%$%hd5216752997%_
                             _%$%tl5216853000%_)
                      (if (gx#identifier? _%$%hd5216752997%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101445_|
                               _%$%hd5216752997%_)
                              (if (gx#stx-pair? _%$%tl5216853000%_)
                                  (let ((_%$%e5216953003%_
                                         (gx#syntax-e _%$%tl5216853000%_)))
                                    (let ((_%$%tl5217153010%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5216953003%_)))
                                          (_%$%hd5217053007%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5216953003%_))))
                                      (if (gx#stx-pair? _%$%tl5217153010%_)
                                          (let ((_%$%e5217253013%_
                                                 (gx#syntax-e
                                                  _%$%tl5217153010%_)))
                                            (let ((_%$%tl5217453020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5217253013%_)))
                                                  (_%$%hd5217353017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5217253013%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5217453020%_)
                                                  (let ((_%$%e5217553023%_
                                                         (gx#syntax-e
                                                          _%$%tl5217453020%_)))
                                                    (let ((_%$%tl5217753030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5217553023%_)))
                                                          (_%$%hd5217653027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5217553023%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5217753030%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5215952970%_)
                                                              (let ((_%__splice9477994780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5215952970%_
                              '0)))
                        (let ((_%$%tl5218053036%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9477994780%_ '1)))
                              (_%$%target5217853033%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9477994780%_ '0))))
                          (if (gx#stx-null? _%$%tl5218053036%_)
                              (_%__match9490994910%_
                               _%$%e5215452953%_
                               _%$%hd5215552957%_
                               _%$%tl5215652960%_
                               _%$%e5215752963%_
                               _%$%hd5215852967%_
                               _%$%tl5215952970%_
                               _%$%e5216052973%_
                               _%$%hd5216152977%_
                               _%$%tl5216252980%_
                               _%$%e5216352983%_
                               _%$%hd5216452987%_
                               _%$%tl5216552990%_
                               _%$%e5216652993%_
                               _%$%hd5216752997%_
                               _%$%tl5216853000%_
                               _%$%e5216953003%_
                               _%$%hd5217053007%_
                               _%$%tl5217153010%_
                               _%$%e5217253013%_
                               _%$%hd5217353017%_
                               _%$%tl5217453020%_
                               _%$%e5217553023%_
                               _%$%hd5217653027%_
                               _%$%tl5217753030%_
                               _%__splice9477994780%_
                               _%$%target5217853033%_
                               _%$%tl5218053036%_)
                              (if (gx#stx-pair? _%$%hd5216152977%_)
                                  (let ((_%$%e5229052442%_
                                         (gx#syntax-e _%$%hd5216152977%_)))
                                    (let ((_%$%tl5229252449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5229052442%_)))
                                          (_%$%hd5229152446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5229052442%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))))
                      (if (gx#stx-pair? _%$%hd5216152977%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5216152977%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (if (gx#stx-pair? _%$%hd5216152977%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5216152977%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (if (gx#stx-pair/null? _%$%tl5215952970%_)
                              (let ((_%__splice9479594796%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5215952970%_
                                      '0)))
                                (let ((_%$%tl5229552455%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '1)))
                                      (_%$%target5229352452%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5229552455%_)
                                      (_%__match9508195082%_
                                       _%$%e5215452953%_
                                       _%$%hd5215552957%_
                                       _%$%tl5215652960%_
                                       _%$%e5215752963%_
                                       _%$%hd5215852967%_
                                       _%$%tl5215952970%_
                                       _%$%e5216052973%_
                                       _%$%hd5216152977%_
                                       _%$%tl5216252980%_
                                       _%$%e5229052442%_
                                       _%$%hd5229152446%_
                                       _%$%tl5229252449%_
                                       _%__splice9479594796%_
                                       _%$%target5229352452%_
                                       _%$%tl5229552455%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5216452987%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101444_|
                                                           _%$%hd5216452987%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5217453020%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5215952970%_)
                          (let ((_%__splice9479194792%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5215952970%_
                                  '0)))
                            (let ((_%$%tl5227052595%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479194792%_ '1)))
                                  (_%$%target5226852592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479194792%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5227052595%_)
                                  (_%__match9504995050%_
                                   _%$%e5215452953%_
                                   _%$%hd5215552957%_
                                   _%$%tl5215652960%_
                                   _%$%e5215752963%_
                                   _%$%hd5215852967%_
                                   _%$%tl5215952970%_
                                   _%$%e5216052973%_
                                   _%$%hd5216152977%_
                                   _%$%tl5216252980%_
                                   _%$%e5216352983%_
                                   _%$%hd5216452987%_
                                   _%$%tl5216552990%_
                                   _%$%e5216652993%_
                                   _%$%hd5216752997%_
                                   _%$%tl5216853000%_
                                   _%$%e5216953003%_
                                   _%$%hd5217053007%_
                                   _%$%tl5217153010%_
                                   _%$%e5217253013%_
                                   _%$%hd5217353017%_
                                   _%$%tl5217453020%_
                                   _%__splice9479194792%_
                                   _%$%target5226852592%_
                                   _%$%tl5227052595%_)
                                  (if (gx#stx-pair? _%$%hd5216152977%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5216152977%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))
                          (if (gx#stx-pair? _%$%hd5216152977%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5216152977%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                      (if (gx#stx-pair? _%$%hd5216152977%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5216152977%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (if (gx#stx-pair/null? _%$%tl5215952970%_)
                                  (let ((_%__splice9479594796%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5215952970%_
                                          '0)))
                                    (let ((_%$%tl5229552455%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '1)))
                                          (_%$%target5229352452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5229552455%_)
                                          (_%__match9508195082%_
                                           _%$%e5215452953%_
                                           _%$%hd5215552957%_
                                           _%$%tl5215652960%_
                                           _%$%e5215752963%_
                                           _%$%hd5215852967%_
                                           _%$%tl5215952970%_
                                           _%$%e5216052973%_
                                           _%$%hd5216152977%_
                                           _%$%tl5216252980%_
                                           _%$%e5229052442%_
                                           _%$%hd5229152446%_
                                           _%$%tl5229252449%_
                                           _%__splice9479594796%_
                                           _%$%target5229352452%_
                                           _%$%tl5229552455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (if (gx#stx-pair? _%$%hd5216152977%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5216152977%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (if (gx#stx-pair/null? _%$%tl5215952970%_)
                              (let ((_%__splice9479594796%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5215952970%_
                                      '0)))
                                (let ((_%$%tl5229552455%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '1)))
                                      (_%$%target5229352452%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5229552455%_)
                                      (_%__match9508195082%_
                                       _%$%e5215452953%_
                                       _%$%hd5215552957%_
                                       _%$%tl5215652960%_
                                       _%$%e5215752963%_
                                       _%$%hd5215852967%_
                                       _%$%tl5215952970%_
                                       _%$%e5216052973%_
                                       _%$%hd5216152977%_
                                       _%$%tl5216252980%_
                                       _%$%e5229052442%_
                                       _%$%hd5229152446%_
                                       _%$%tl5229252449%_
                                       _%__splice9479594796%_
                                       _%$%target5229352452%_
                                       _%$%tl5229552455%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
              (if (gx#stx-pair? _%$%hd5216152977%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5216152977%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5215952970%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5215952970%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5215452953%_
                                   _%$%hd5215552957%_
                                   _%$%tl5215652960%_
                                   _%$%e5215752963%_
                                   _%$%hd5215852967%_
                                   _%$%tl5215952970%_
                                   _%$%e5216052973%_
                                   _%$%hd5216152977%_
                                   _%$%tl5216252980%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5216152977%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5216152977%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5215952970%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5215952970%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5215452953%_
                       _%$%hd5215552957%_
                       _%$%tl5215652960%_
                       _%$%e5215752963%_
                       _%$%hd5215852967%_
                       _%$%tl5215952970%_
                       _%$%e5216052973%_
                       _%$%hd5216152977%_
                       _%$%tl5216252980%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))))
                                  (if (gx#stx-null? _%$%tl5216853000%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5215952970%_)
                                          (let ((_%__splice9478394784%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5215952970%_
                                                  '0)))
                                            (let ((_%$%tl5220852855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9478394784%_
                                                      '1)))
                                                  (_%$%target5220652852%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9478394784%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5220852855%_)
                                                  (_%__match9494994950%_
                                                   _%$%e5215452953%_
                                                   _%$%hd5215552957%_
                                                   _%$%tl5215652960%_
                                                   _%$%e5215752963%_
                                                   _%$%hd5215852967%_
                                                   _%$%tl5215952970%_
                                                   _%$%e5216052973%_
                                                   _%$%hd5216152977%_
                                                   _%$%tl5216252980%_
                                                   _%$%e5216352983%_
                                                   _%$%hd5216452987%_
                                                   _%$%tl5216552990%_
                                                   _%$%e5216652993%_
                                                   _%$%hd5216752997%_
                                                   _%$%tl5216853000%_
                                                   _%__splice9478394784%_
                                                   _%$%target5220652852%_
                                                   _%$%tl5220852855%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5216152977%_)
                                                      (let ((_%$%e5229052442%_
                                                             (gx#syntax-e
                                                              _%$%hd5216152977%_)))
                                                        (let ((_%$%tl5229252449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5229052442%_)))
                      (_%$%hd5229152446%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5229052442%_))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))
              (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5216152977%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5216152977%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                      (if (gx#stx-pair? _%$%hd5216152977%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5216152977%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5215952970%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5215952970%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5215452953%_
                                                           _%$%hd5215552957%_
                                                           _%$%tl5215652960%_
                                                           _%$%e5215752963%_
                                                           _%$%hd5215852967%_
                                                           _%$%tl5215952970%_
                                                           _%$%e5216052973%_
                                                           _%$%hd5216152977%_
                                                           _%$%tl5216252980%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                              (if (gx#stx-null? _%$%tl5216853000%_)
                                  (if (gx#stx-pair/null? _%$%tl5215952970%_)
                                      (let ((_%__splice9478394784%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5215952970%_
                                              '0)))
                                        (let ((_%$%tl5220852855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9478394784%_
                                                  '1)))
                                              (_%$%target5220652852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9478394784%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5220852855%_)
                                              (_%__match9494994950%_
                                               _%$%e5215452953%_
                                               _%$%hd5215552957%_
                                               _%$%tl5215652960%_
                                               _%$%e5215752963%_
                                               _%$%hd5215852967%_
                                               _%$%tl5215952970%_
                                               _%$%e5216052973%_
                                               _%$%hd5216152977%_
                                               _%$%tl5216252980%_
                                               _%$%e5216352983%_
                                               _%$%hd5216452987%_
                                               _%$%tl5216552990%_
                                               _%$%e5216652993%_
                                               _%$%hd5216752997%_
                                               _%$%tl5216853000%_
                                               _%__splice9478394784%_
                                               _%$%target5220652852%_
                                               _%$%tl5220852855%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5216152977%_)
                                                  (let ((_%$%e5229052442%_
                                                         (gx#syntax-e
                                                          _%$%hd5216152977%_)))
                                                    (let ((_%$%tl5229252449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5229052442%_)))
                                                          (_%$%hd5229152446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5229052442%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5211452323%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))))
                                      (if (gx#stx-pair? _%$%hd5216152977%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5216152977%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                  (if (gx#identifier? _%$%hd5216452987%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101444_|
                                           _%$%hd5216452987%_)
                                          (if (gx#stx-pair? _%$%tl5216853000%_)
                                              (let ((_%$%e5226252572%_
                                                     (gx#syntax-e
                                                      _%$%tl5216853000%_)))
                                                (let ((_%$%tl5226452579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5226252572%_)))
                                                      (_%$%hd5226352576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5226252572%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5226452579%_)
                                                      (let ((_%$%e5226552582%_
                                                             (gx#syntax-e
                                                              _%$%tl5226452579%_)))
                                                        (let ((_%$%tl5226752589%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5226552582%_)))
                      (_%$%hd5226652586%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5226552582%_))))
                  (if (gx#stx-null? _%$%tl5226752589%_)
                      (if (gx#stx-pair/null? _%$%tl5215952970%_)
                          (let ((_%__splice9479194792%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5215952970%_
                                  '0)))
                            (let ((_%$%tl5227052595%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479194792%_ '1)))
                                  (_%$%target5226852592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479194792%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5227052595%_)
                                  (_%__match9504995050%_
                                   _%$%e5215452953%_
                                   _%$%hd5215552957%_
                                   _%$%tl5215652960%_
                                   _%$%e5215752963%_
                                   _%$%hd5215852967%_
                                   _%$%tl5215952970%_
                                   _%$%e5216052973%_
                                   _%$%hd5216152977%_
                                   _%$%tl5216252980%_
                                   _%$%e5216352983%_
                                   _%$%hd5216452987%_
                                   _%$%tl5216552990%_
                                   _%$%e5216652993%_
                                   _%$%hd5216752997%_
                                   _%$%tl5216853000%_
                                   _%$%e5226252572%_
                                   _%$%hd5226352576%_
                                   _%$%tl5226452579%_
                                   _%$%e5226552582%_
                                   _%$%hd5226652586%_
                                   _%$%tl5226752589%_
                                   _%__splice9479194792%_
                                   _%$%target5226852592%_
                                   _%$%tl5227052595%_)
                                  (if (gx#stx-pair? _%$%hd5216152977%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5216152977%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))
                          (if (gx#stx-pair? _%$%hd5216152977%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5216152977%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                      (if (gx#stx-pair? _%$%hd5216152977%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5216152977%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (if (gx#stx-pair/null? _%$%tl5215952970%_)
                                  (let ((_%__splice9479594796%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5215952970%_
                                          '0)))
                                    (let ((_%$%tl5229552455%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '1)))
                                          (_%$%target5229352452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5229552455%_)
                                          (_%__match9508195082%_
                                           _%$%e5215452953%_
                                           _%$%hd5215552957%_
                                           _%$%tl5215652960%_
                                           _%$%e5215752963%_
                                           _%$%hd5215852967%_
                                           _%$%tl5215952970%_
                                           _%$%e5216052973%_
                                           _%$%hd5216152977%_
                                           _%$%tl5216252980%_
                                           _%$%e5229052442%_
                                           _%$%hd5229152446%_
                                           _%$%tl5229252449%_
                                           _%__splice9479594796%_
                                           _%$%target5229352452%_
                                           _%$%tl5229552455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))))
              (if (gx#stx-pair? _%$%hd5216152977%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5216152977%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5215952970%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5215952970%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5215452953%_
                                   _%$%hd5215552957%_
                                   _%$%tl5215652960%_
                                   _%$%e5215752963%_
                                   _%$%hd5215852967%_
                                   _%$%tl5215952970%_
                                   _%$%e5216052973%_
                                   _%$%hd5216152977%_
                                   _%$%tl5216252980%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5216152977%_)
                                                  (let ((_%$%e5229052442%_
                                                         (gx#syntax-e
                                                          _%$%hd5216152977%_)))
                                                    (let ((_%$%tl5229252449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5229052442%_)))
                                                          (_%$%hd5229152446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5229052442%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5215952970%_)
                                                          (let ((_%__splice9479594796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5215952970%_
                          '0)))
                    (let ((_%$%tl5229552455%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '1)))
                          (_%$%target5229352452%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '0))))
                      (if (gx#stx-null? _%$%tl5229552455%_)
                          (_%__match9508195082%_
                           _%$%e5215452953%_
                           _%$%hd5215552957%_
                           _%$%tl5215652960%_
                           _%$%e5215752963%_
                           _%$%hd5215852967%_
                           _%$%tl5215952970%_
                           _%$%e5216052973%_
                           _%$%hd5216152977%_
                           _%$%tl5216252980%_
                           _%$%e5229052442%_
                           _%$%hd5229152446%_
                           _%$%tl5229252449%_
                           _%__splice9479594796%_
                           _%$%target5229352452%_
                           _%$%tl5229552455%_)
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))
                                          (if (gx#stx-pair? _%$%hd5216152977%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5216152977%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5215952970%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5215952970%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5215452953%_
                       _%$%hd5215552957%_
                       _%$%tl5215652960%_
                       _%$%e5215752963%_
                       _%$%hd5215852967%_
                       _%$%tl5215952970%_
                       _%$%e5216052973%_
                       _%$%hd5216152977%_
                       _%$%tl5216252980%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                      (if (gx#stx-pair? _%$%hd5216152977%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5216152977%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5215952970%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5215952970%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5215452953%_
                                                           _%$%hd5215552957%_
                                                           _%$%tl5215652960%_
                                                           _%$%e5215752963%_
                                                           _%$%hd5215852967%_
                                                           _%$%tl5215952970%_
                                                           _%$%e5216052973%_
                                                           _%$%hd5216152977%_
                                                           _%$%tl5216252980%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))))
                          (if (gx#stx-null? _%$%tl5216853000%_)
                              (if (gx#stx-pair/null? _%$%tl5215952970%_)
                                  (let ((_%__splice9478394784%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5215952970%_
                                          '0)))
                                    (let ((_%$%tl5220852855%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9478394784%_
                                              '1)))
                                          (_%$%target5220652852%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9478394784%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5220852855%_)
                                          (_%__match9494994950%_
                                           _%$%e5215452953%_
                                           _%$%hd5215552957%_
                                           _%$%tl5215652960%_
                                           _%$%e5215752963%_
                                           _%$%hd5215852967%_
                                           _%$%tl5215952970%_
                                           _%$%e5216052973%_
                                           _%$%hd5216152977%_
                                           _%$%tl5216252980%_
                                           _%$%e5216352983%_
                                           _%$%hd5216452987%_
                                           _%$%tl5216552990%_
                                           _%$%e5216652993%_
                                           _%$%hd5216752997%_
                                           _%$%tl5216853000%_
                                           _%__splice9478394784%_
                                           _%$%target5220652852%_
                                           _%$%tl5220852855%_)
                                          (if (gx#stx-pair? _%$%hd5216152977%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5216152977%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))))
                                  (if (gx#stx-pair? _%$%hd5216152977%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5216152977%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                              (if (gx#identifier? _%$%hd5216452987%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101444_|
                                       _%$%hd5216452987%_)
                                      (if (gx#stx-pair? _%$%tl5216853000%_)
                                          (let ((_%$%e5226252572%_
                                                 (gx#syntax-e
                                                  _%$%tl5216853000%_)))
                                            (let ((_%$%tl5226452579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5226252572%_)))
                                                  (_%$%hd5226352576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5226252572%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5226452579%_)
                                                  (let ((_%$%e5226552582%_
                                                         (gx#syntax-e
                                                          _%$%tl5226452579%_)))
                                                    (let ((_%$%tl5226752589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5226552582%_)))
                                                          (_%$%hd5226652586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5226552582%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5226752589%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5215952970%_)
                                                              (let ((_%__splice9479194792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5215952970%_
                              '0)))
                        (let ((_%$%tl5227052595%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479194792%_ '1)))
                              (_%$%target5226852592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479194792%_ '0))))
                          (if (gx#stx-null? _%$%tl5227052595%_)
                              (_%__match9504995050%_
                               _%$%e5215452953%_
                               _%$%hd5215552957%_
                               _%$%tl5215652960%_
                               _%$%e5215752963%_
                               _%$%hd5215852967%_
                               _%$%tl5215952970%_
                               _%$%e5216052973%_
                               _%$%hd5216152977%_
                               _%$%tl5216252980%_
                               _%$%e5216352983%_
                               _%$%hd5216452987%_
                               _%$%tl5216552990%_
                               _%$%e5216652993%_
                               _%$%hd5216752997%_
                               _%$%tl5216853000%_
                               _%$%e5226252572%_
                               _%$%hd5226352576%_
                               _%$%tl5226452579%_
                               _%$%e5226552582%_
                               _%$%hd5226652586%_
                               _%$%tl5226752589%_
                               _%__splice9479194792%_
                               _%$%target5226852592%_
                               _%$%tl5227052595%_)
                              (if (gx#stx-pair? _%$%hd5216152977%_)
                                  (let ((_%$%e5229052442%_
                                         (gx#syntax-e _%$%hd5216152977%_)))
                                    (let ((_%$%tl5229252449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5229052442%_)))
                                          (_%$%hd5229152446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5229052442%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))))
                      (if (gx#stx-pair? _%$%hd5216152977%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5216152977%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (if (gx#stx-pair? _%$%hd5216152977%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5216152977%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (if (gx#stx-pair/null? _%$%tl5215952970%_)
                              (let ((_%__splice9479594796%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5215952970%_
                                      '0)))
                                (let ((_%$%tl5229552455%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '1)))
                                      (_%$%target5229352452%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5229552455%_)
                                      (_%__match9508195082%_
                                       _%$%e5215452953%_
                                       _%$%hd5215552957%_
                                       _%$%tl5215652960%_
                                       _%$%e5215752963%_
                                       _%$%hd5215852967%_
                                       _%$%tl5215952970%_
                                       _%$%e5216052973%_
                                       _%$%hd5216152977%_
                                       _%$%tl5216252980%_
                                       _%$%e5229052442%_
                                       _%$%hd5229152446%_
                                       _%$%tl5229252449%_
                                       _%__splice9479594796%_
                                       _%$%target5229352452%_
                                       _%$%tl5229552455%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5216152977%_)
                                                      (let ((_%$%e5229052442%_
                                                             (gx#syntax-e
                                                              _%$%hd5216152977%_)))
                                                        (let ((_%$%tl5229252449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5229052442%_)))
                      (_%$%hd5229152446%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5229052442%_))))
                  (if (gx#stx-pair/null? _%$%tl5215952970%_)
                      (let ((_%__splice9479594796%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5215952970%_
                              '0)))
                        (let ((_%$%tl5229552455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '1)))
                              (_%$%target5229352452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '0))))
                          (if (gx#stx-null? _%$%tl5229552455%_)
                              (_%__match9508195082%_
                               _%$%e5215452953%_
                               _%$%hd5215552957%_
                               _%$%tl5215652960%_
                               _%$%e5215752963%_
                               _%$%hd5215852967%_
                               _%$%tl5215952970%_
                               _%$%e5216052973%_
                               _%$%hd5216152977%_
                               _%$%tl5216252980%_
                               _%$%e5229052442%_
                               _%$%hd5229152446%_
                               _%$%tl5229252449%_
                               _%__splice9479594796%_
                               _%$%target5229352452%_
                               _%$%tl5229552455%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5216152977%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5216152977%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5215952970%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5215952970%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5215452953%_
                       _%$%hd5215552957%_
                       _%$%tl5215652960%_
                       _%$%e5215752963%_
                       _%$%hd5215852967%_
                       _%$%tl5215952970%_
                       _%$%e5216052973%_
                       _%$%hd5216152977%_
                       _%$%tl5216252980%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                      (if (gx#stx-pair? _%$%hd5216152977%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5216152977%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5215952970%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5215952970%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5215452953%_
                                                           _%$%hd5215552957%_
                                                           _%$%tl5215652960%_
                                                           _%$%e5215752963%_
                                                           _%$%hd5215852967%_
                                                           _%$%tl5215952970%_
                                                           _%$%e5216052973%_
                                                           _%$%hd5216152977%_
                                                           _%$%tl5216252980%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                  (if (gx#stx-pair? _%$%hd5216152977%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5216152977%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5215952970%_)
                                              (let ((_%__splice9479594796%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5215952970%_
                                                      '0)))
                                                (let ((_%$%tl5229552455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '1)))
                                                      (_%$%target5229352452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5229552455%_)
                                                      (_%__match9508195082%_
                                                       _%$%e5215452953%_
                                                       _%$%hd5215552957%_
                                                       _%$%tl5215652960%_
                                                       _%$%e5215752963%_
                                                       _%$%hd5215852967%_
                                                       _%$%tl5215952970%_
                                                       _%$%e5216052973%_
                                                       _%$%hd5216152977%_
                                                       _%$%tl5216252980%_
                                                       _%$%e5229052442%_
                                                       _%$%hd5229152446%_
                                                       _%$%tl5229252449%_
                                                       _%__splice9479594796%_
                                                       _%$%target5229352452%_
                                                       _%$%tl5229552455%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5211452323%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))))
                   (_%__match9484794848%_
                    (lambda (_%$%e5212153127%_
                             _%$%hd5212253131%_
                             _%$%tl5212353134%_
                             _%$%e5212453137%_
                             _%$%hd5212553141%_
                             _%$%tl5212653144%_
                             _%$%e5212753147%_
                             _%$%hd5212853151%_
                             _%$%tl5212953154%_
                             _%$%e5213053157%_
                             _%$%hd5213153161%_
                             _%$%tl5213253164%_
                             _%$%e5213353167%_
                             _%$%hd5213453171%_
                             _%$%tl5213553174%_
                             _%$%e5213653177%_
                             _%$%hd5213753181%_
                             _%$%tl5213853184%_
                             _%__splice9477594776%_
                             _%$%target5213953187%_
                             _%$%tl5214153190%_)
                      (letrec ((_%$%loop5214253193%_
                                (lambda (_%$%hd5214053197%_
                                         _%$%body5214653200%_)
                                  (if (gx#stx-pair? _%$%hd5214053197%_)
                                      (let ((_%$%e5214353202%_
                                             (gx#syntax-e _%$%hd5214053197%_)))
                                        (let ((_%$%lp-tl5214553209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5214353202%_)))
                                              (_%$%lp-hd5214453206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5214353202%_))))
                                          (_%$%loop5214253193%_
                                           _%$%lp-tl5214553209%_
                                           (cons _%$%lp-hd5214453206%_
                                                 _%$%body5214653200%_))))
                                      (let ((_%$%body5214753212%_
                                             (reverse _%$%body5214653200%_)))
                                        (let ((_%$%g5211653215%_
                                               _%$%body5214753212%_)
                                              (_%$%g5211753217%_
                                               _%$%hd5213753181%_)
                                              (_%$%g5211853218%_
                                               _%$%hd5213453171%_)
                                              (_%$%g5211953219%_
                                               _%$%hd5213153161%_)
                                              (_%$%g5212053220%_
                                               _%$%hd5212853151%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5212053220%_)
                                                   (gx#identifier?
                                                    _%$%g5211853218%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5211853218%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5211853218%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5211853218%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5211853218%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5211853218%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9477394774%_
                                               _%$%g5211653215%_
                                               _%$%g5211753217%_
                                               _%$%g5211853218%_
                                               _%$%g5211953219%_
                                               _%$%g5212053220%_)
                                              (_%__match9487794878%_
                                               _%$%e5212153127%_
                                               _%$%hd5212253131%_
                                               _%$%tl5212353134%_
                                               _%$%e5212453137%_
                                               _%$%hd5212553141%_
                                               _%$%tl5212653144%_
                                               _%$%e5212753147%_
                                               _%$%hd5212853151%_
                                               _%$%tl5212953154%_
                                               _%$%e5213053157%_
                                               _%$%hd5213153161%_
                                               _%$%tl5213253164%_
                                               _%$%e5213353167%_
                                               _%$%hd5213453171%_
                                               _%$%tl5213553174%_))))))))
                        (_%$%loop5214253193%_ _%$%target5213953187%_ '())))))
              (if (gx#stx-pair? _%__stx9477094771%_)
                  (let ((_%$%e5212153127%_ (gx#syntax-e _%__stx9477094771%_)))
                    (let ((_%$%tl5212353134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5212153127%_)))
                          (_%$%hd5212253131%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5212153127%_))))
                      (if (gx#stx-pair? _%$%tl5212353134%_)
                          (let ((_%$%e5212453137%_
                                 (gx#syntax-e _%$%tl5212353134%_)))
                            (let ((_%$%tl5212653144%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5212453137%_)))
                                  (_%$%hd5212553141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5212453137%_))))
                              (if (gx#stx-pair? _%$%hd5212553141%_)
                                  (let ((_%$%e5212753147%_
                                         (gx#syntax-e _%$%hd5212553141%_)))
                                    (let ((_%$%tl5212953154%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5212753147%_)))
                                          (_%$%hd5212853151%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5212753147%_))))
                                      (if (gx#stx-pair? _%$%tl5212953154%_)
                                          (let ((_%$%e5213053157%_
                                                 (gx#syntax-e
                                                  _%$%tl5212953154%_)))
                                            (let ((_%$%tl5213253164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5213053157%_)))
                                                  (_%$%hd5213153161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5213053157%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5213253164%_)
                                                  (let ((_%$%e5213353167%_
                                                         (gx#syntax-e
                                                          _%$%tl5213253164%_)))
                                                    (let ((_%$%tl5213553174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5213353167%_)))
                                                          (_%$%hd5213453171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5213353167%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5213553174%_)
                                                          (let ((_%$%e5213653177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5213553174%_)))
                    (let ((_%$%tl5213853184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5213653177%_)))
                          (_%$%hd5213753181%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5213653177%_))))
                      (if (gx#stx-null? _%$%tl5213853184%_)
                          (if (gx#stx-pair/null? _%$%tl5212653144%_)
                              (let ((_%__splice9477594776%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5212653144%_
                                      '0)))
                                (let ((_%$%tl5214153190%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9477594776%_
                                          '1)))
                                      (_%$%target5213953187%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9477594776%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5214153190%_)
                                      (_%__match9484794848%_
                                       _%$%e5212153127%_
                                       _%$%hd5212253131%_
                                       _%$%tl5212353134%_
                                       _%$%e5212453137%_
                                       _%$%hd5212553141%_
                                       _%$%tl5212653144%_
                                       _%$%e5212753147%_
                                       _%$%hd5212853151%_
                                       _%$%tl5212953154%_
                                       _%$%e5213053157%_
                                       _%$%hd5213153161%_
                                       _%$%tl5213253164%_
                                       _%$%e5213353167%_
                                       _%$%hd5213453171%_
                                       _%$%tl5213553174%_
                                       _%$%e5213653177%_
                                       _%$%hd5213753181%_
                                       _%$%tl5213853184%_
                                       _%__splice9477594776%_
                                       _%$%target5213953187%_
                                       _%$%tl5214153190%_)
                                      (if (gx#stx-pair? _%$%hd5212853151%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5212853151%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))))
                              (if (gx#stx-pair? _%$%hd5212853151%_)
                                  (let ((_%$%e5229052442%_
                                         (gx#syntax-e _%$%hd5212853151%_)))
                                    (let ((_%$%tl5229252449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5229052442%_)))
                                          (_%$%hd5229152446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5229052442%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                          (if (gx#identifier? _%$%hd5213453171%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g101445_|
                                   _%$%hd5213453171%_)
                                  (if (gx#stx-pair? _%$%tl5213853184%_)
                                      (let ((_%$%e5217253013%_
                                             (gx#syntax-e _%$%tl5213853184%_)))
                                        (let ((_%$%tl5217453020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5217253013%_)))
                                              (_%$%hd5217353017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5217253013%_))))
                                          (if (gx#stx-pair? _%$%tl5217453020%_)
                                              (let ((_%$%e5217553023%_
                                                     (gx#syntax-e
                                                      _%$%tl5217453020%_)))
                                                (let ((_%$%tl5217753030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5217553023%_)))
                                                      (_%$%hd5217653027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5217553023%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5217753030%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5212653144%_)
                                                          (let ((_%__splice9477994780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5212653144%_
                          '0)))
                    (let ((_%$%tl5218053036%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9477994780%_ '1)))
                          (_%$%target5217853033%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9477994780%_ '0))))
                      (if (gx#stx-null? _%$%tl5218053036%_)
                          (_%__match9490994910%_
                           _%$%e5212153127%_
                           _%$%hd5212253131%_
                           _%$%tl5212353134%_
                           _%$%e5212453137%_
                           _%$%hd5212553141%_
                           _%$%tl5212653144%_
                           _%$%e5212753147%_
                           _%$%hd5212853151%_
                           _%$%tl5212953154%_
                           _%$%e5213053157%_
                           _%$%hd5213153161%_
                           _%$%tl5213253164%_
                           _%$%e5213353167%_
                           _%$%hd5213453171%_
                           _%$%tl5213553174%_
                           _%$%e5213653177%_
                           _%$%hd5213753181%_
                           _%$%tl5213853184%_
                           _%$%e5217253013%_
                           _%$%hd5217353017%_
                           _%$%tl5217453020%_
                           _%$%e5217553023%_
                           _%$%hd5217653027%_
                           _%$%tl5217753030%_
                           _%__splice9477994780%_
                           _%$%target5217853033%_
                           _%$%tl5218053036%_)
                          (if (gx#stx-pair? _%$%hd5212853151%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5212853151%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))))
                  (if (gx#stx-pair? _%$%hd5212853151%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5212853151%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
              (if (gx#stx-pair? _%$%hd5212853151%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5212853151%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5212653144%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5212653144%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5212153127%_
                                   _%$%hd5212253131%_
                                   _%$%tl5212353134%_
                                   _%$%e5212453137%_
                                   _%$%hd5212553141%_
                                   _%$%tl5212653144%_
                                   _%$%e5212753147%_
                                   _%$%hd5212853151%_
                                   _%$%tl5212953154%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5213153161%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g101444_|
                                                       _%$%hd5213153161%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5217453020%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5212653144%_)
                                                              (let ((_%__splice9479194792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5212653144%_
                              '0)))
                        (let ((_%$%tl5227052595%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479194792%_ '1)))
                              (_%$%target5226852592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479194792%_ '0))))
                          (if (gx#stx-null? _%$%tl5227052595%_)
                              (_%__match9504995050%_
                               _%$%e5212153127%_
                               _%$%hd5212253131%_
                               _%$%tl5212353134%_
                               _%$%e5212453137%_
                               _%$%hd5212553141%_
                               _%$%tl5212653144%_
                               _%$%e5212753147%_
                               _%$%hd5212853151%_
                               _%$%tl5212953154%_
                               _%$%e5213053157%_
                               _%$%hd5213153161%_
                               _%$%tl5213253164%_
                               _%$%e5213353167%_
                               _%$%hd5213453171%_
                               _%$%tl5213553174%_
                               _%$%e5213653177%_
                               _%$%hd5213753181%_
                               _%$%tl5213853184%_
                               _%$%e5217253013%_
                               _%$%hd5217353017%_
                               _%$%tl5217453020%_
                               _%__splice9479194792%_
                               _%$%target5226852592%_
                               _%$%tl5227052595%_)
                              (if (gx#stx-pair? _%$%hd5212853151%_)
                                  (let ((_%$%e5229052442%_
                                         (gx#syntax-e _%$%hd5212853151%_)))
                                    (let ((_%$%tl5229252449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5229052442%_)))
                                          (_%$%hd5229152446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5229052442%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))))
                      (if (gx#stx-pair? _%$%hd5212853151%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5212853151%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (if (gx#stx-pair? _%$%hd5212853151%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5212853151%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (if (gx#stx-pair/null? _%$%tl5212653144%_)
                              (let ((_%__splice9479594796%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5212653144%_
                                      '0)))
                                (let ((_%$%tl5229552455%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '1)))
                                      (_%$%target5229352452%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9479594796%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5229552455%_)
                                      (_%__match9508195082%_
                                       _%$%e5212153127%_
                                       _%$%hd5212253131%_
                                       _%$%tl5212353134%_
                                       _%$%e5212453137%_
                                       _%$%hd5212553141%_
                                       _%$%tl5212653144%_
                                       _%$%e5212753147%_
                                       _%$%hd5212853151%_
                                       _%$%tl5212953154%_
                                       _%$%e5229052442%_
                                       _%$%hd5229152446%_
                                       _%$%tl5229252449%_
                                       _%__splice9479594796%_
                                       _%$%target5229352452%_
                                       _%$%tl5229552455%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
              (if (gx#stx-pair? _%$%hd5212853151%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5212853151%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5212653144%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5212653144%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5212153127%_
                                   _%$%hd5212253131%_
                                   _%$%tl5212353134%_
                                   _%$%e5212453137%_
                                   _%$%hd5212553141%_
                                   _%$%tl5212653144%_
                                   _%$%e5212753147%_
                                   _%$%hd5212853151%_
                                   _%$%tl5212953154%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5212853151%_)
                                                      (let ((_%$%e5229052442%_
                                                             (gx#syntax-e
                                                              _%$%hd5212853151%_)))
                                                        (let ((_%$%tl5229252449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5229052442%_)))
                      (_%$%hd5229152446%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5229052442%_))))
                  (if (gx#stx-pair/null? _%$%tl5212653144%_)
                      (let ((_%__splice9479594796%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5212653144%_
                              '0)))
                        (let ((_%$%tl5229552455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '1)))
                              (_%$%target5229352452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '0))))
                          (if (gx#stx-null? _%$%tl5229552455%_)
                              (_%__match9508195082%_
                               _%$%e5212153127%_
                               _%$%hd5212253131%_
                               _%$%tl5212353134%_
                               _%$%e5212453137%_
                               _%$%hd5212553141%_
                               _%$%tl5212653144%_
                               _%$%e5212753147%_
                               _%$%hd5212853151%_
                               _%$%tl5212953154%_
                               _%$%e5229052442%_
                               _%$%hd5229152446%_
                               _%$%tl5229252449%_
                               _%__splice9479594796%_
                               _%$%target5229352452%_
                               _%$%tl5229552455%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5212853151%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5212853151%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5212653144%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5212653144%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5212153127%_
                                                           _%$%hd5212253131%_
                                                           _%$%tl5212353134%_
                                                           _%$%e5212453137%_
                                                           _%$%hd5212553141%_
                                                           _%$%tl5212653144%_
                                                           _%$%e5212753147%_
                                                           _%$%hd5212853151%_
                                                           _%$%tl5212953154%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                  (if (gx#identifier? _%$%hd5213153161%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101444_|
                                           _%$%hd5213153161%_)
                                          (if (gx#stx-pair? _%$%tl5213853184%_)
                                              (let ((_%$%e5226552582%_
                                                     (gx#syntax-e
                                                      _%$%tl5213853184%_)))
                                                (let ((_%$%tl5226752589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5226552582%_)))
                                                      (_%$%hd5226652586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5226552582%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5226752589%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5212653144%_)
                                                          (let ((_%__splice9479194792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5212653144%_
                          '0)))
                    (let ((_%$%tl5227052595%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479194792%_ '1)))
                          (_%$%target5226852592%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479194792%_ '0))))
                      (if (gx#stx-null? _%$%tl5227052595%_)
                          (_%__match9504995050%_
                           _%$%e5212153127%_
                           _%$%hd5212253131%_
                           _%$%tl5212353134%_
                           _%$%e5212453137%_
                           _%$%hd5212553141%_
                           _%$%tl5212653144%_
                           _%$%e5212753147%_
                           _%$%hd5212853151%_
                           _%$%tl5212953154%_
                           _%$%e5213053157%_
                           _%$%hd5213153161%_
                           _%$%tl5213253164%_
                           _%$%e5213353167%_
                           _%$%hd5213453171%_
                           _%$%tl5213553174%_
                           _%$%e5213653177%_
                           _%$%hd5213753181%_
                           _%$%tl5213853184%_
                           _%$%e5226552582%_
                           _%$%hd5226652586%_
                           _%$%tl5226752589%_
                           _%__splice9479194792%_
                           _%$%target5226852592%_
                           _%$%tl5227052595%_)
                          (if (gx#stx-pair? _%$%hd5212853151%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5212853151%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))))
                  (if (gx#stx-pair? _%$%hd5212853151%_)
                      (let ((_%$%e5229052442%_
                             (gx#syntax-e _%$%hd5212853151%_)))
                        (let ((_%$%tl5229252449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5229052442%_)))
                              (_%$%hd5229152446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5229052442%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
              (if (gx#stx-pair? _%$%hd5212853151%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5212853151%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (if (gx#stx-pair/null? _%$%tl5212653144%_)
                          (let ((_%__splice9479594796%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5212653144%_
                                  '0)))
                            (let ((_%$%tl5229552455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9479594796%_ '1)))
                                  (_%$%target5229352452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9479594796%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5229552455%_)
                                  (_%__match9508195082%_
                                   _%$%e5212153127%_
                                   _%$%hd5212253131%_
                                   _%$%tl5212353134%_
                                   _%$%e5212453137%_
                                   _%$%hd5212553141%_
                                   _%$%tl5212653144%_
                                   _%$%e5212753147%_
                                   _%$%hd5212853151%_
                                   _%$%tl5212953154%_
                                   _%$%e5229052442%_
                                   _%$%hd5229152446%_
                                   _%$%tl5229252449%_
                                   _%__splice9479594796%_
                                   _%$%target5229352452%_
                                   _%$%tl5229552455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5212853151%_)
                                                  (let ((_%$%e5229052442%_
                                                         (gx#syntax-e
                                                          _%$%hd5212853151%_)))
                                                    (let ((_%$%tl5229252449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5229052442%_)))
                                                          (_%$%hd5229152446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5229052442%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5212653144%_)
                                                          (let ((_%__splice9479594796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5212653144%_
                          '0)))
                    (let ((_%$%tl5229552455%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '1)))
                          (_%$%target5229352452%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9479594796%_ '0))))
                      (if (gx#stx-null? _%$%tl5229552455%_)
                          (_%__match9508195082%_
                           _%$%e5212153127%_
                           _%$%hd5212253131%_
                           _%$%tl5212353134%_
                           _%$%e5212453137%_
                           _%$%hd5212553141%_
                           _%$%tl5212653144%_
                           _%$%e5212753147%_
                           _%$%hd5212853151%_
                           _%$%tl5212953154%_
                           _%$%e5229052442%_
                           _%$%hd5229152446%_
                           _%$%tl5229252449%_
                           _%__splice9479594796%_
                           _%$%target5229352452%_
                           _%$%tl5229552455%_)
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_))))
                                          (if (gx#stx-pair? _%$%hd5212853151%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5212853151%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5212653144%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5212653144%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5212153127%_
                       _%$%hd5212253131%_
                       _%$%tl5212353134%_
                       _%$%e5212453137%_
                       _%$%hd5212553141%_
                       _%$%tl5212653144%_
                       _%$%e5212753147%_
                       _%$%hd5212853151%_
                       _%$%tl5212953154%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                      (if (gx#stx-pair? _%$%hd5212853151%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5212853151%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5212653144%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5212653144%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5212153127%_
                                                           _%$%hd5212253131%_
                                                           _%$%tl5212353134%_
                                                           _%$%e5212453137%_
                                                           _%$%hd5212553141%_
                                                           _%$%tl5212653144%_
                                                           _%$%e5212753147%_
                                                           _%$%hd5212853151%_
                                                           _%$%tl5212953154%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                              (if (gx#identifier? _%$%hd5213153161%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101444_|
                                       _%$%hd5213153161%_)
                                      (if (gx#stx-pair? _%$%tl5213853184%_)
                                          (let ((_%$%e5226552582%_
                                                 (gx#syntax-e
                                                  _%$%tl5213853184%_)))
                                            (let ((_%$%tl5226752589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5226552582%_)))
                                                  (_%$%hd5226652586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5226552582%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5226752589%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5212653144%_)
                                                      (let ((_%__splice9479194792%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5212653144%_
                                                              '0)))
                                                        (let ((_%$%tl5227052595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479194792%_ '1)))
                      (_%$%target5226852592%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479194792%_ '0))))
                  (if (gx#stx-null? _%$%tl5227052595%_)
                      (_%__match9504995050%_
                       _%$%e5212153127%_
                       _%$%hd5212253131%_
                       _%$%tl5212353134%_
                       _%$%e5212453137%_
                       _%$%hd5212553141%_
                       _%$%tl5212653144%_
                       _%$%e5212753147%_
                       _%$%hd5212853151%_
                       _%$%tl5212953154%_
                       _%$%e5213053157%_
                       _%$%hd5213153161%_
                       _%$%tl5213253164%_
                       _%$%e5213353167%_
                       _%$%hd5213453171%_
                       _%$%tl5213553174%_
                       _%$%e5213653177%_
                       _%$%hd5213753181%_
                       _%$%tl5213853184%_
                       _%$%e5226552582%_
                       _%$%hd5226652586%_
                       _%$%tl5226752589%_
                       _%__splice9479194792%_
                       _%$%target5226852592%_
                       _%$%tl5227052595%_)
                      (if (gx#stx-pair? _%$%hd5212853151%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5212853151%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                          (let () (declare (not safe)) (_%$%g5211452323%_))))))
              (if (gx#stx-pair? _%$%hd5212853151%_)
                  (let ((_%$%e5229052442%_ (gx#syntax-e _%$%hd5212853151%_)))
                    (let ((_%$%tl5229252449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5229052442%_)))
                          (_%$%hd5229152446%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5229052442%_))))
                      (let () (declare (not safe)) (_%$%g5211452323%_))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5212853151%_)
                                                      (let ((_%$%e5229052442%_
                                                             (gx#syntax-e
                                                              _%$%hd5212853151%_)))
                                                        (let ((_%$%tl5229252449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5229052442%_)))
                      (_%$%hd5229152446%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5229052442%_))))
                  (if (gx#stx-pair/null? _%$%tl5212653144%_)
                      (let ((_%__splice9479594796%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5212653144%_
                              '0)))
                        (let ((_%$%tl5229552455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '1)))
                              (_%$%target5229352452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '0))))
                          (if (gx#stx-null? _%$%tl5229552455%_)
                              (_%__match9508195082%_
                               _%$%e5212153127%_
                               _%$%hd5212253131%_
                               _%$%tl5212353134%_
                               _%$%e5212453137%_
                               _%$%hd5212553141%_
                               _%$%tl5212653144%_
                               _%$%e5212753147%_
                               _%$%hd5212853151%_
                               _%$%tl5212953154%_
                               _%$%e5229052442%_
                               _%$%hd5229152446%_
                               _%$%tl5229252449%_
                               _%__splice9479594796%_
                               _%$%target5229352452%_
                               _%$%tl5229552455%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5212853151%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5212853151%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5212653144%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5212653144%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5212153127%_
                       _%$%hd5212253131%_
                       _%$%tl5212353134%_
                       _%$%e5212453137%_
                       _%$%hd5212553141%_
                       _%$%tl5212653144%_
                       _%$%e5212753147%_
                       _%$%hd5212853151%_
                       _%$%tl5212953154%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))
                                      (if (gx#stx-pair? _%$%hd5212853151%_)
                                          (let ((_%$%e5229052442%_
                                                 (gx#syntax-e
                                                  _%$%hd5212853151%_)))
                                            (let ((_%$%tl5229252449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5229052442%_)))
                                                  (_%$%hd5229152446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5229052442%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5212653144%_)
                                                  (let ((_%__splice9479594796%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5212653144%_
                                                          '0)))
                                                    (let ((_%$%tl5229552455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '1)))
                                                          (_%$%target5229352452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9479594796%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5229552455%_)
                                                          (_%__match9508195082%_
                                                           _%$%e5212153127%_
                                                           _%$%hd5212253131%_
                                                           _%$%tl5212353134%_
                                                           _%$%e5212453137%_
                                                           _%$%hd5212553141%_
                                                           _%$%tl5212653144%_
                                                           _%$%e5212753147%_
                                                           _%$%hd5212853151%_
                                                           _%$%tl5212953154%_
                                                           _%$%e5229052442%_
                                                           _%$%hd5229152446%_
                                                           _%$%tl5229252449%_
                                                           _%__splice9479594796%_
                                                           _%$%target5229352452%_
                                                           _%$%tl5229552455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5211452323%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                  (if (gx#stx-pair? _%$%hd5212853151%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5212853151%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5212653144%_)
                                              (let ((_%__splice9479594796%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5212653144%_
                                                      '0)))
                                                (let ((_%$%tl5229552455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '1)))
                                                      (_%$%target5229352452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9479594796%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5229552455%_)
                                                      (_%__match9508195082%_
                                                       _%$%e5212153127%_
                                                       _%$%hd5212253131%_
                                                       _%$%tl5212353134%_
                                                       _%$%e5212453137%_
                                                       _%$%hd5212553141%_
                                                       _%$%tl5212653144%_
                                                       _%$%e5212753147%_
                                                       _%$%hd5212853151%_
                                                       _%$%tl5212953154%_
                                                       _%$%e5229052442%_
                                                       _%$%hd5229152446%_
                                                       _%$%tl5229252449%_
                                                       _%__splice9479594796%_
                                                       _%$%target5229352452%_
                                                       _%$%tl5229552455%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5211452323%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))))
                  (if (gx#stx-null? _%$%tl5213553174%_)
                      (if (gx#stx-pair/null? _%$%tl5212653144%_)
                          (let ((_%__splice9478394784%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5212653144%_
                                  '0)))
                            (let ((_%$%tl5220852855%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9478394784%_ '1)))
                                  (_%$%target5220652852%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9478394784%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5220852855%_)
                                  (_%__match9494994950%_
                                   _%$%e5212153127%_
                                   _%$%hd5212253131%_
                                   _%$%tl5212353134%_
                                   _%$%e5212453137%_
                                   _%$%hd5212553141%_
                                   _%$%tl5212653144%_
                                   _%$%e5212753147%_
                                   _%$%hd5212853151%_
                                   _%$%tl5212953154%_
                                   _%$%e5213053157%_
                                   _%$%hd5213153161%_
                                   _%$%tl5213253164%_
                                   _%$%e5213353167%_
                                   _%$%hd5213453171%_
                                   _%$%tl5213553174%_
                                   _%__splice9478394784%_
                                   _%$%target5220652852%_
                                   _%$%tl5220852855%_)
                                  (if (gx#stx-pair? _%$%hd5212853151%_)
                                      (let ((_%$%e5229052442%_
                                             (gx#syntax-e _%$%hd5212853151%_)))
                                        (let ((_%$%tl5229252449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5229052442%_)))
                                              (_%$%hd5229152446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5229052442%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))
                          (if (gx#stx-pair? _%$%hd5212853151%_)
                              (let ((_%$%e5229052442%_
                                     (gx#syntax-e _%$%hd5212853151%_)))
                                (let ((_%$%tl5229252449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5229052442%_)))
                                      (_%$%hd5229152446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5229052442%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_))))
                      (if (gx#stx-pair? _%$%hd5212853151%_)
                          (let ((_%$%e5229052442%_
                                 (gx#syntax-e _%$%hd5212853151%_)))
                            (let ((_%$%tl5229252449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5229052442%_)))
                                  (_%$%hd5229152446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5229052442%_))))
                              (if (gx#stx-pair/null? _%$%tl5212653144%_)
                                  (let ((_%__splice9479594796%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5212653144%_
                                          '0)))
                                    (let ((_%$%tl5229552455%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '1)))
                                          (_%$%target5229352452%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9479594796%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5229552455%_)
                                          (_%__match9508195082%_
                                           _%$%e5212153127%_
                                           _%$%hd5212253131%_
                                           _%$%tl5212353134%_
                                           _%$%e5212453137%_
                                           _%$%hd5212553141%_
                                           _%$%tl5212653144%_
                                           _%$%e5212753147%_
                                           _%$%hd5212853151%_
                                           _%$%tl5212953154%_
                                           _%$%e5229052442%_
                                           _%$%hd5229152446%_
                                           _%$%tl5229252449%_
                                           _%__splice9479594796%_
                                           _%$%target5229352452%_
                                           _%$%tl5229552455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5211452323%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5211452323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5212853151%_)
                                                      (let ((_%$%e5229052442%_
                                                             (gx#syntax-e
                                                              _%$%hd5212853151%_)))
                                                        (let ((_%$%tl5229252449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5229052442%_)))
                      (_%$%hd5229152446%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5229052442%_))))
                  (if (gx#stx-pair/null? _%$%tl5212653144%_)
                      (let ((_%__splice9479594796%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5212653144%_
                              '0)))
                        (let ((_%$%tl5229552455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '1)))
                              (_%$%target5229352452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9479594796%_ '0))))
                          (if (gx#stx-null? _%$%tl5229552455%_)
                              (_%__match9508195082%_
                               _%$%e5212153127%_
                               _%$%hd5212253131%_
                               _%$%tl5212353134%_
                               _%$%e5212453137%_
                               _%$%hd5212553141%_
                               _%$%tl5212653144%_
                               _%$%e5212753147%_
                               _%$%hd5212853151%_
                               _%$%tl5212953154%_
                               _%$%e5229052442%_
                               _%$%hd5229152446%_
                               _%$%tl5229252449%_
                               _%__splice9479594796%_
                               _%$%target5229352452%_
                               _%$%tl5229552455%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5211452323%_)))))
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5212853151%_)
                                              (let ((_%$%e5229052442%_
                                                     (gx#syntax-e
                                                      _%$%hd5212853151%_)))
                                                (let ((_%$%tl5229252449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5229052442%_)))
                                                      (_%$%hd5229152446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5229052442%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5212653144%_)
                                                      (let ((_%__splice9479594796%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5212653144%_
                                                              '0)))
                                                        (let ((_%$%tl5229552455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '1)))
                      (_%$%target5229352452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9479594796%_ '0))))
                  (if (gx#stx-null? _%$%tl5229552455%_)
                      (_%__match9508195082%_
                       _%$%e5212153127%_
                       _%$%hd5212253131%_
                       _%$%tl5212353134%_
                       _%$%e5212453137%_
                       _%$%hd5212553141%_
                       _%$%tl5212653144%_
                       _%$%e5212753147%_
                       _%$%hd5212853151%_
                       _%$%tl5212953154%_
                       _%$%e5229052442%_
                       _%$%hd5229152446%_
                       _%$%tl5229252449%_
                       _%__splice9479594796%_
                       _%$%target5229352452%_
                       _%$%tl5229552455%_)
                      (let () (declare (not safe)) (_%$%g5211452323%_)))))
              (let () (declare (not safe)) (_%$%g5211452323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5211452323%_))))))
                                  (if (gx#stx-null? _%$%hd5212553141%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5212653144%_)
                                          (let ((_%__splice9479994800%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5212653144%_
                                                  '0)))
                                            (let ((_%$%tl5231152353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9479994800%_
                                                      '1)))
                                                  (_%$%target5230952350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9479994800%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5231152353%_)
                                                  (_%__match9510395104%_
                                                   _%$%e5212153127%_
                                                   _%$%hd5212253131%_
                                                   _%$%tl5212353134%_
                                                   _%$%e5212453137%_
                                                   _%$%hd5212553141%_
                                                   _%$%tl5212653144%_
                                                   _%__splice9479994800%_
                                                   _%$%target5230952350%_
                                                   _%$%tl5231152353%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5211452323%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5211452323%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5211452323%_))))))
                          (let () (declare (not safe)) (_%$%g5211452323%_)))))
                  (let () (declare (not safe)) (_%$%g5211452323%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx53283%_)
        (let* ((_%$%g5328753321%_
                (lambda (_%$%g5328853317%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5328853317%_)))
               (_%$%g5328653442%_
                (lambda (_%$%g5328853325%_)
                  (if (gx#stx-pair? _%$%g5328853325%_)
                      (let ((_%$%e5329253328%_
                             (gx#syntax-e _%$%g5328853325%_)))
                        (let ((_%$%hd5329353332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5329253328%_)))
                              (_%$%tl5329453335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5329253328%_))))
                          (if (gx#stx-pair? _%$%tl5329453335%_)
                              (let ((_%$%e5329553338%_
                                     (gx#syntax-e _%$%tl5329453335%_)))
                                (let ((_%$%hd5329653342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5329553338%_)))
                                      (_%$%tl5329753345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5329553338%_))))
                                  (if (gx#stx-pair? _%$%hd5329653342%_)
                                      (let ((_%$%e5329853348%_
                                             (gx#syntax-e _%$%hd5329653342%_)))
                                        (let ((_%$%hd5329953352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5329853348%_)))
                                              (_%$%tl5330053355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5329853348%_))))
                                          (if (gx#stx-pair? _%$%tl5330053355%_)
                                              (let ((_%$%e5330153358%_
                                                     (gx#syntax-e
                                                      _%$%tl5330053355%_)))
                                                (let ((_%$%hd5330253362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5330153358%_)))
                                                      (_%$%tl5330353365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5330153358%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5330253362%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101446_|
                                                           _%$%hd5330253362%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5330353365%_)
                                                              (let ((_%$%e5330453368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5330353365%_)))
                        (let ((_%$%hd5330553372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5330453368%_)))
                              (_%$%tl5330653375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5330453368%_))))
                          (if (gx#stx-null? _%$%tl5330653375%_)
                              (if (gx#stx-pair/null? _%$%tl5329753345%_)
                                  (let ((_g101447_
                                         (gx#syntax-split-splice
                                          _%$%tl5329753345%_
                                          '0)))
                                    (begin
                                      (let ((_g101448_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g101447_)
                                                   (##values-length _g101447_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g101448_ 2)))
                                            (error "Context expects 2 values"
                                                   _g101448_)))
                                      (let ((_%$%target5330753378%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101447_ 0)))
                                            (_%$%tl5330953381%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101447_ 1))))
                                        (if (gx#stx-null? _%$%tl5330953381%_)
                                            (letrec ((_%$%loop5331053384%_
                                                      (lambda (_%$%hd5330853388%_
                                                               _%$%body5331453391%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5330853388%_)
                                                            (let ((_%$%e5331153393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5330853388%_)))
                      (let ((_%$%lp-hd5331253397%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5331153393%_)))
                            (_%$%lp-tl5331353400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5331153393%_))))
                        (_%$%loop5331053384%_
                         _%$%lp-tl5331353400%_
                         (cons _%$%lp-hd5331253397%_ _%$%body5331453391%_))))
                    (let ((_%$%body5331553403%_
                           (reverse _%$%body5331453391%_)))
                      (if (gx#identifier? _%$%hd5329953352%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5330553372%_
                                            (cons _%$%hd5329953352%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5343353436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5343453439%_)
                         (cons _%$%g5343353436%_ _%$%g5343453439%_))
                       '()
                       _%$%body5331553403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5329953352%_
                                                              (cons _%$%hd5330553372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5329953352%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5328753321%_ _%$%g5328853325%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5331053384%_
                                               _%$%target5330753378%_
                                               '()))
                                            (_%$%g5328753321%_
                                             _%$%g5328853325%_)))))
                                  (_%$%g5328753321%_ _%$%g5328853325%_))
                              (_%$%g5328753321%_ _%$%g5328853325%_))))
                      (_%$%g5328753321%_ _%$%g5328853325%_))
                  (_%$%g5328753321%_ _%$%g5328853325%_))
              (_%$%g5328753321%_ _%$%g5328853325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5328753321%_
                                               _%$%g5328853325%_))))
                                      (_%$%g5328753321%_ _%$%g5328853325%_))))
                              (_%$%g5328753321%_ _%$%g5328853325%_))))
                      (_%$%g5328753321%_ _%$%g5328853325%_)))))
          (_%$%g5328653442%_ _%$stx53283%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass54200%_ _%slot54202%_)
        (let ((_%$e54204%_
               (let ((__obj101242 _%klass54200%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101242
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101242 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101242
                      'slot-types)))))
          (if _%$e54204%_ (agetq _%slot54202%_ _%$e54204%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass54181%_ _%slot54183%_)
        (let ((_%$e54185%_
               (let ((__obj101243 _%klass54181%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101243
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101243 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101243
                      'slot-defaults)))))
          (if _%$e54185%_
              (let ((_%$e54192%_ (agetq _%slot54183%_ _%$e54185%_)))
                (if _%$e54192%_ (gx#syntax-local-introduce _%$e54192%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass54162%_ _%slot54164%_)
        (let ((_%$e54166%_
               (let ((__obj101244 _%klass54162%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101244
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101244 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101244
                      'slot-defaults)))))
          (if _%$e54166%_
              (let ((_%$e54173%_ (agetq _%slot54164%_ _%$e54166%_)))
                (if _%$e54173%_ (gx#syntax-local-introduce _%$e54173%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53931%_ _%slot53933%_)
        (let ((_%$%contract5393453936%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53931%_
                _%slot53933%_)))
          (if _%$%contract5393453936%_
              (let* ((_%contract53939%_ _%$%contract5393453936%_)
                     (_%__stx9510695107%_ _%contract53939%_)
                     (_%$%g5394453981%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9510695107%_))))
                (let ((_%__kont9510995110%_
                       (lambda (_%$%g5394654131%_ _%$%g5394754133%_)
                         (not (gx#free-identifier=?
                               _%$%g5394754133%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9511195112%_
                       (lambda (_%$%g5395454071%_
                                _%$%g5395554073%_
                                _%$%g5395654074%_)
                         (not (gx#free-identifier=?
                               _%$%g5395554073%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9511395114%_ (lambda (_%$%g5396954008%_) '#f)))
                  (let* ((_%__match9515995160%_
                          (lambda (_%$%e5395754031%_
                                   _%$%hd5395854035%_
                                   _%$%tl5395954038%_
                                   _%$%e5396054041%_
                                   _%$%hd5396154045%_
                                   _%$%tl5396254048%_
                                   _%$%e5396354051%_
                                   _%$%hd5396454055%_
                                   _%$%tl5396554058%_
                                   _%$%e5396654061%_
                                   _%$%hd5396754065%_
                                   _%$%tl5396854068%_)
                            (let ((_%$%g5395454071%_ _%$%hd5396754065%_)
                                  (_%$%g5395554073%_ _%$%hd5396454055%_)
                                  (_%$%g5395654074%_ _%$%hd5396154045%_))
                              (if (and (gx#identifier? _%$%g5395554073%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5395554073%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5395554073%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5395554073%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5395554073%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9511195112%_
                                   _%$%g5395454071%_
                                   _%$%g5395554073%_
                                   _%$%g5395654074%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5394453981%_))))))
                         (_%__match9512995130%_
                          (lambda (_%$%e5394854111%_
                                   _%$%hd5394954115%_
                                   _%$%tl5395054118%_
                                   _%$%e5395154121%_
                                   _%$%hd5395254125%_
                                   _%$%tl5395354128%_)
                            (let ((_%$%g5394654131%_ _%$%hd5395254125%_)
                                  (_%$%g5394754133%_ _%$%hd5394954115%_))
                              (if (and (gx#identifier? _%$%g5394754133%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5394754133%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5394754133%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5394754133%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5394754133%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9510995110%_
                                   _%$%g5394654131%_
                                   _%$%g5394754133%_)
                                  (if (gx#identifier? _%$%hd5394954115%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101449_|
                                           _%$%hd5394954115%_)
                                          (_%__kont9511395114%_
                                           _%$%hd5395254125%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5394453981%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5394453981%_))))))))
                    (if (gx#stx-pair? _%__stx9510695107%_)
                        (let ((_%$%e5394854111%_
                               (gx#syntax-e _%__stx9510695107%_)))
                          (let ((_%$%tl5395054118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5394854111%_)))
                                (_%$%hd5394954115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5394854111%_))))
                            (if (gx#stx-pair? _%$%tl5395054118%_)
                                (let ((_%$%e5395154121%_
                                       (gx#syntax-e _%$%tl5395054118%_)))
                                  (let ((_%$%tl5395354128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5395154121%_)))
                                        (_%$%hd5395254125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5395154121%_))))
                                    (if (gx#stx-null? _%$%tl5395354128%_)
                                        (_%__match9512995130%_
                                         _%$%e5394854111%_
                                         _%$%hd5394954115%_
                                         _%$%tl5395054118%_
                                         _%$%e5395154121%_
                                         _%$%hd5395254125%_
                                         _%$%tl5395354128%_)
                                        (if (gx#identifier? _%$%hd5394954115%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101449_|
                                                 _%$%hd5394954115%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5395354128%_)
                                                    (let ((_%$%e5396354051%_
                                                           (gx#syntax-e
                                                            _%$%tl5395354128%_)))
                                                      (let ((_%$%tl5396554058%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5396354051%_)))
                    (_%$%hd5396454055%_
                     (let () (declare (not safe)) (##car _%$%e5396354051%_))))
                (if (gx#stx-pair? _%$%tl5396554058%_)
                    (let ((_%$%e5396654061%_ (gx#syntax-e _%$%tl5396554058%_)))
                      (let ((_%$%tl5396854068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5396654061%_)))
                            (_%$%hd5396754065%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5396654061%_))))
                        (if (gx#stx-null? _%$%tl5396854068%_)
                            (_%__match9515995160%_
                             _%$%e5394854111%_
                             _%$%hd5394954115%_
                             _%$%tl5395054118%_
                             _%$%e5395154121%_
                             _%$%hd5395254125%_
                             _%$%tl5395354128%_
                             _%$%e5396354051%_
                             _%$%hd5396454055%_
                             _%$%tl5396554058%_
                             _%$%e5396654061%_
                             _%$%hd5396754065%_
                             _%$%tl5396854068%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5394453981%_)))))
                    (let () (declare (not safe)) (_%$%g5394453981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5394453981%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5394453981%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5394453981%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5394453981%_)))))
                        (let () (declare (not safe)) (_%$%g5394453981%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53700%_ _%slot53702%_)
        (let ((_%$%contract5370353705%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53700%_
                _%slot53702%_)))
          (if _%$%contract5370353705%_
              (let* ((_%contract53708%_ _%$%contract5370353705%_)
                     (_%__stx9518095181%_ _%contract53708%_)
                     (_%$%g5371353750%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9518095181%_))))
                (let ((_%__kont9518395184%_
                       (lambda (_%$%g5371553900%_ _%$%g5371653902%_)
                         (not (gx#free-identifier=?
                               _%$%g5371653902%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9518595186%_
                       (lambda (_%$%g5372353840%_
                                _%$%g5372453842%_
                                _%$%g5372553843%_)
                         '#t))
                      (_%__kont9518795188%_ (lambda (_%$%g5373853777%_) '#t)))
                  (let* ((_%__match9523395234%_
                          (lambda (_%$%e5372653800%_
                                   _%$%hd5372753804%_
                                   _%$%tl5372853807%_
                                   _%$%e5372953810%_
                                   _%$%hd5373053814%_
                                   _%$%tl5373153817%_
                                   _%$%e5373253820%_
                                   _%$%hd5373353824%_
                                   _%$%tl5373453827%_
                                   _%$%e5373553830%_
                                   _%$%hd5373653834%_
                                   _%$%tl5373753837%_)
                            (let ((_%$%g5372353840%_ _%$%hd5373653834%_)
                                  (_%$%g5372453842%_ _%$%hd5373353824%_)
                                  (_%$%g5372553843%_ _%$%hd5373053814%_))
                              (if (and (gx#identifier? _%$%g5372453842%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5372453842%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5372453842%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5372453842%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5372453842%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9518595186%_
                                   _%$%g5372353840%_
                                   _%$%g5372453842%_
                                   _%$%g5372553843%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5371353750%_))))))
                         (_%__match9520395204%_
                          (lambda (_%$%e5371753880%_
                                   _%$%hd5371853884%_
                                   _%$%tl5371953887%_
                                   _%$%e5372053890%_
                                   _%$%hd5372153894%_
                                   _%$%tl5372253897%_)
                            (let ((_%$%g5371553900%_ _%$%hd5372153894%_)
                                  (_%$%g5371653902%_ _%$%hd5371853884%_))
                              (if (and (gx#identifier? _%$%g5371653902%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5371653902%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5371653902%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5371653902%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5371653902%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9518395184%_
                                   _%$%g5371553900%_
                                   _%$%g5371653902%_)
                                  (if (gx#identifier? _%$%hd5371853884%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101450_|
                                           _%$%hd5371853884%_)
                                          (_%__kont9518795188%_
                                           _%$%hd5372153894%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5371353750%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5371353750%_))))))))
                    (if (gx#stx-pair? _%__stx9518095181%_)
                        (let ((_%$%e5371753880%_
                               (gx#syntax-e _%__stx9518095181%_)))
                          (let ((_%$%tl5371953887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5371753880%_)))
                                (_%$%hd5371853884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5371753880%_))))
                            (if (gx#stx-pair? _%$%tl5371953887%_)
                                (let ((_%$%e5372053890%_
                                       (gx#syntax-e _%$%tl5371953887%_)))
                                  (let ((_%$%tl5372253897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5372053890%_)))
                                        (_%$%hd5372153894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5372053890%_))))
                                    (if (gx#stx-null? _%$%tl5372253897%_)
                                        (_%__match9520395204%_
                                         _%$%e5371753880%_
                                         _%$%hd5371853884%_
                                         _%$%tl5371953887%_
                                         _%$%e5372053890%_
                                         _%$%hd5372153894%_
                                         _%$%tl5372253897%_)
                                        (if (gx#identifier? _%$%hd5371853884%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101450_|
                                                 _%$%hd5371853884%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5372253897%_)
                                                    (let ((_%$%e5373253820%_
                                                           (gx#syntax-e
                                                            _%$%tl5372253897%_)))
                                                      (let ((_%$%tl5373453827%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5373253820%_)))
                    (_%$%hd5373353824%_
                     (let () (declare (not safe)) (##car _%$%e5373253820%_))))
                (if (gx#stx-pair? _%$%tl5373453827%_)
                    (let ((_%$%e5373553830%_ (gx#syntax-e _%$%tl5373453827%_)))
                      (let ((_%$%tl5373753837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5373553830%_)))
                            (_%$%hd5373653834%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5373553830%_))))
                        (if (gx#stx-null? _%$%tl5373753837%_)
                            (_%__match9523395234%_
                             _%$%e5371753880%_
                             _%$%hd5371853884%_
                             _%$%tl5371953887%_
                             _%$%e5372053890%_
                             _%$%hd5372153894%_
                             _%$%tl5372253897%_
                             _%$%e5373253820%_
                             _%$%hd5373353824%_
                             _%$%tl5373453827%_
                             _%$%e5373553830%_
                             _%$%hd5373653834%_
                             _%$%tl5373753837%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5371353750%_)))))
                    (let () (declare (not safe)) (_%$%g5371353750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5371353750%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5371353750%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5371353750%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5371353750%_)))))
                        (let () (declare (not safe)) (_%$%g5371353750%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53687%_)
        (if (gx#identifier? _%id53687%_)
            (let* ((_%str53690%_ (symbol->string (gx#stx-e _%id53687%_)))
                   (_%$%index5369253694%_ (string-index _%str53690%_ '#\.)))
              (if _%$%index5369253694%_
                  (let ((_%index53697%_ _%$%index5369253694%_))
                    (if (let () (declare (not safe)) (##fx> _%index53697%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53690%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53680%_ _%id53682%_)
        (let ((_%parts53684%_
               (string-split (symbol->string (gx#stx-e _%id53682%_)) '#\.)))
          (if (find string-empty? _%parts53684%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53680%_
               _%id53682%_)
              (cons (gx#stx-identifier _%id53682%_ (car _%parts53684%_))
                    (map string->symbol (cdr _%parts53684%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53566%_ _%klass-or-id53568%_ _%slot53569%_)
        (let* ((_%klass53571%_
                (if (gx#identifier? _%klass-or-id53568%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53566%_
                       _%klass-or-id53568%_))
                    _%klass-or-id53568%_))
               (_%$e53576%_
                (agetq _%slot53569%_
                       (let ((__obj101245 _%klass53571%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj101245
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj101245
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj101245
                              'unchecked-accessors))))))
          (if _%$e53576%_
              _%$e53576%_
              (let ((_%$e53584%_
                     (agetq _%slot53569%_
                            (let ((_%$e53580%_
                                   (let ((__obj101246 _%klass53571%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101246
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101246
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101246
                                          'slot-offsets)))))
                              (if _%$e53580%_ _%$e53580%_ '())))))
                (if _%$e53584%_
                    (let* ((_%$%g5359153610%_
                            (lambda (_%$%g5359253606%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5359253606%_)))
                           (_%$%g5359053674%_
                            (lambda (_%$%g5359253614%_)
                              (if (gx#stx-pair? _%$%g5359253614%_)
                                  (let ((_%$%e5359653617%_
                                         (gx#syntax-e _%$%g5359253614%_)))
                                    (let ((_%$%hd5359753621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5359653617%_)))
                                          (_%$%tl5359853624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5359653617%_))))
                                      (if (gx#stx-pair? _%$%tl5359853624%_)
                                          (let ((_%$%e5359953627%_
                                                 (gx#syntax-e
                                                  _%$%tl5359853624%_)))
                                            (let ((_%$%hd5360053631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5359953627%_)))
                                                  (_%$%tl5360153634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5359953627%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5360153634%_)
                                                  (let ((_%$%e5360253637%_
                                                         (gx#syntax-e
                                                          _%$%tl5360153634%_)))
                                                    (let ((_%$%hd5360353641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5360253637%_)))
                                                          (_%$%tl5360453644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5360253637%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5360453644%_)
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
                                                 (cons _%$%hd5360353641%_
                                                       (cons _%$%hd5359753621%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5360053631%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53566%_))
                  (_%$%g5359153610%_ _%$%g5359253614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5359153610%_
                                                   _%$%g5359253614%_))))
                                          (_%$%g5359153610%_
                                           _%$%g5359253614%_))))
                                  (_%$%g5359153610%_ _%$%g5359253614%_)))))
                      (_%$%g5359053674%_
                       (list (let ((__obj101247 _%klass53571%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101247
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101247
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101247
                                    'type-descriptor)))
                             _%slot53569%_
                             _%$e53584%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53566%_
                     _%klass53571%_
                     _%slot53569%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx53447%_
               _%klass-or-id53449%_
               _%slot53450%_
               _%checked?53451%_)
        (let* ((_%klass53453%_
                (if (gx#identifier? _%klass-or-id53449%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53447%_
                       _%klass-or-id53449%_))
                    _%klass-or-id53449%_))
               (_%mutators53456%_
                (if _%checked?53451%_
                    (let ((__obj101248 _%klass53453%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101248
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101248
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101248
                           'mutators)))
                    (let ((__obj101249 _%klass53453%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101249
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101249
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101249
                           'unchecked-mutators)))))
               (_%$e53461%_ (agetq _%slot53450%_ _%mutators53456%_)))
          (if _%$e53461%_
              _%$e53461%_
              (let ((_%$e53469%_
                     (agetq _%slot53450%_
                            (let ((_%$e53465%_
                                   (let ((__obj101250 _%klass53453%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101250
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101250
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101250
                                          'slot-offsets)))))
                              (if _%$e53465%_ _%$e53465%_ '())))))
                (if _%$e53469%_
                    (let* ((_%$%g5347653495%_
                            (lambda (_%$%g5347753491%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5347753491%_)))
                           (_%$%g5347553560%_
                            (lambda (_%$%g5347753499%_)
                              (if (gx#stx-pair? _%$%g5347753499%_)
                                  (let ((_%$%e5348153502%_
                                         (gx#syntax-e _%$%g5347753499%_)))
                                    (let ((_%$%hd5348253506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5348153502%_)))
                                          (_%$%tl5348353509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5348153502%_))))
                                      (if (gx#stx-pair? _%$%tl5348353509%_)
                                          (let ((_%$%e5348453512%_
                                                 (gx#syntax-e
                                                  _%$%tl5348353509%_)))
                                            (let ((_%$%hd5348553516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5348453512%_)))
                                                  (_%$%tl5348653519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5348453512%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5348653519%_)
                                                  (let ((_%$%e5348753522%_
                                                         (gx#syntax-e
                                                          _%$%tl5348653519%_)))
                                                    (let ((_%$%hd5348853526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5348753522%_)))
                                                          (_%$%tl5348953529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5348753522%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5348953529%_)
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
                                                       (cons _%$%hd5348853526%_
                                                             (cons _%$%hd5348253506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5348553516%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53447%_))
                  (_%$%g5347653495%_ _%$%g5347753499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5347653495%_
                                                   _%$%g5347753499%_))))
                                          (_%$%g5347653495%_
                                           _%$%g5347753499%_))))
                                  (_%$%g5347653495%_ _%$%g5347753499%_)))))
                      (_%$%g5347553560%_
                       (list (let ((__obj101251 _%klass53453%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101251
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101251
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101251
                                    'type-descriptor)))
                             _%slot53450%_
                             _%$e53469%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx53447%_
                     _%klass53453%_
                     _%slot53450%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx54213%_)
        (letrec ((_%expand-body54216%_
                  (lambda (_%klass55114%_
                           _%var55116%_
                           _%Type55117%_
                           _%body55118%_
                           _%checked?55119%_)
                    (let* ((_%$%g5512155165%_
                            (lambda (_%$%g5512255161%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5512255161%_)))
                           (_%$%g5512055320%_
                            (lambda (_%$%g5512255169%_)
                              (if (gx#stx-pair? _%$%g5512255169%_)
                                  (let ((_%$%e5513055172%_
                                         (gx#syntax-e _%$%g5512255169%_)))
                                    (let ((_%$%hd5513155176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5513055172%_)))
                                          (_%$%tl5513255179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5513055172%_))))
                                      (if (gx#stx-pair? _%$%tl5513255179%_)
                                          (let ((_%$%e5513355182%_
                                                 (gx#syntax-e
                                                  _%$%tl5513255179%_)))
                                            (let ((_%$%hd5513455186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5513355182%_)))
                                                  (_%$%tl5513555189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5513355182%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5513555189%_)
                                                  (let ((_%$%e5513655192%_
                                                         (gx#syntax-e
                                                          _%$%tl5513555189%_)))
                                                    (let ((_%$%hd5513755196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5513655192%_)))
                                                          (_%$%tl5513855199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5513655192%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5513855199%_)
                                                          (let ((_%$%e5513955202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5513855199%_)))
                    (let ((_%$%hd5514055206%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5513955202%_)))
                          (_%$%tl5514155209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5513955202%_))))
                      (if (gx#stx-pair? _%$%tl5514155209%_)
                          (let ((_%$%e5514255212%_
                                 (gx#syntax-e _%$%tl5514155209%_)))
                            (let ((_%$%hd5514355216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5514255212%_)))
                                  (_%$%tl5514455219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5514255212%_))))
                              (if (gx#stx-pair? _%$%tl5514455219%_)
                                  (let ((_%$%e5514555222%_
                                         (gx#syntax-e _%$%tl5514455219%_)))
                                    (let ((_%$%hd5514655226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5514555222%_)))
                                          (_%$%tl5514755229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5514555222%_))))
                                      (if (gx#stx-pair? _%$%tl5514755229%_)
                                          (let ((_%$%e5514855232%_
                                                 (gx#syntax-e
                                                  _%$%tl5514755229%_)))
                                            (let ((_%$%hd5514955236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5514855232%_)))
                                                  (_%$%tl5515055239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5514855232%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5514955236%_)
                                                  (let ((_g101451_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5514955236%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101452_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101451_)
                           (##values-length _g101451_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101452_ 2)))
                    (error "Context expects 2 values" _g101452_)))
              (let ((_%$%target5515155242%_
                     (let () (declare (not safe)) (##values-ref _g101451_ 0)))
                    (_%$%tl5515355245%_
                     (let () (declare (not safe)) (##values-ref _g101451_ 1))))
                (if (gx#stx-null? _%$%tl5515355245%_)
                    (letrec ((_%$%loop5515455248%_
                              (lambda (_%$%hd5515255252%_ _%$%body5515855255%_)
                                (if (gx#stx-pair? _%$%hd5515255252%_)
                                    (let ((_%$%e5515555257%_
                                           (gx#syntax-e _%$%hd5515255252%_)))
                                      (let ((_%$%lp-hd5515655261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5515555257%_)))
                                            (_%$%lp-tl5515755264%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5515555257%_))))
                                        (_%$%loop5515455248%_
                                         _%$%lp-tl5515755264%_
                                         (cons _%$%lp-hd5515655261%_
                                               _%$%body5515855255%_))))
                                    (let ((_%$%body5515955267%_
                                           (reverse _%$%body5515855255%_)))
                                      (if (gx#stx-null? _%$%tl5515055239%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5513755196%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5513455186%_ '()))
                                      (cons _%$%hd5513755196%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5513155176%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5513755196%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5514055206%_ '()))
                            (cons _%$%hd5514355216%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5514655226%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5531155314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5531255317%_)
                   (cons _%$%g5531155314%_ _%$%g5531255317%_))
                 '()
                 _%$%body5515955267%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5512155165%_
                                           _%$%g5512255169%_)))))))
                      (_%$%loop5515455248%_ _%$%target5515155242%_ '()))
                    (_%$%g5512155165%_ _%$%g5512255169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5512155165%_
                                                   _%$%g5512255169%_))))
                                          (_%$%g5512155165%_
                                           _%$%g5512255169%_))))
                                  (_%$%g5512155165%_ _%$%g5512255169%_))))
                          (_%$%g5512155165%_ _%$%g5512255169%_))))
                  (_%$%g5512155165%_ _%$%g5512255169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5512155165%_
                                                   _%$%g5512255169%_))))
                                          (_%$%g5512155165%_
                                           _%$%g5512255169%_))))
                                  (_%$%g5512155165%_ _%$%g5512255169%_)))))
                      (_%$%g5512055320%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj101252 _%klass55114%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101252
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101252
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj101252
                                    'type-descriptor)))
                             _%var55116%_
                             _%klass55114%_
                             _%checked?55119%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55118%_)))))
                 (_%expand54218%_
                  (lambda (_%var55006%_
                           _%Type55008%_
                           _%body55009%_
                           _%checked?55010%_
                           _%checked-mutators?55011%_
                           _%maybe?55012%_)
                    (let* ((_%klass55014%_
                            (gx#syntax-local-value _%Type55008%_ false))
                           (_%expr-body55021%_
                            (_%expand-body54216%_
                             _%klass55014%_
                             _%var55006%_
                             _%Type55008%_
                             _%body55009%_
                             (let ((_%$e55017%_ _%checked?55010%_))
                               (if _%$e55017%_
                                   _%$e55017%_
                                   _%checked-mutators?55011%_)))))
                      (if _%checked?55010%_
                          (let* ((_%$%g5502655045%_
                                  (lambda (_%$%g5502755041%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5502755041%_)))
                                 (_%$%g5502555107%_
                                  (lambda (_%$%g5502755049%_)
                                    (if (gx#stx-pair? _%$%g5502755049%_)
                                        (let ((_%$%e5503155052%_
                                               (gx#syntax-e
                                                _%$%g5502755049%_)))
                                          (let ((_%$%hd5503255056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5503155052%_)))
                                                (_%$%tl5503355059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5503155052%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5503355059%_)
                                                (let ((_%$%e5503455062%_
                                                       (gx#syntax-e
                                                        _%$%tl5503355059%_)))
                                                  (let ((_%$%hd5503555066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5503455062%_)))
                                                        (_%$%tl5503655069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5503455062%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5503655069%_)
                                                        (let ((_%$%e5503755072%_
                                                               (gx#syntax-e
                                                                _%$%tl5503655069%_)))
                                                          (let ((_%$%hd5503855076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5503755072%_)))
                        (_%$%tl5503955079%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5503755072%_))))
                    (if (gx#stx-null? _%$%tl5503955079%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5503555066%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5503255056%_ '())))
                                    (cons _%$%hd5503855076%_ '())))
                        (_%$%g5502655045%_ _%$%g5502755049%_))))
                (_%$%g5502655045%_ _%$%g5502755049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5502655045%_
                                                 _%$%g5502755049%_))))
                                        (_%$%g5502655045%_
                                         _%$%g5502755049%_)))))
                            (_%$%g5502555107%_
                             (list (let ((_%instance?55111%_
                                          (let ((__obj101253 _%klass55014%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj101253
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj101253
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj101253
                                                 'predicate)))))
                                     (if _%maybe?55012%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?55111%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?55111%_))
                                   _%var55006%_
                                   _%expr-body55021%_)))
                          _%expr-body55021%_)))))
          (let* ((_%__stx9525495255%_ _%stx54213%_)
                 (_%$%g5422454367%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9525495255%_))))
            (let ((_%__kont9525795258%_
                   (lambda (_%$%g5422654934%_
                            _%$%g5422754936%_
                            _%$%g5422854937%_
                            _%$%g5422954938%_)
                     (let* ((_%$%g5496354971%_
                             (lambda (_%$%g5496454967%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5496454967%_)))
                            (_%$%g5496254998%_
                             (lambda (_%$%g5496454975%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5422954938%_
                                                 (cons _%$%g5422854937%_
                                                       (cons _%$%g5496454975%_
                                                             '())))
                                           (foldr (lambda (_%$%g5498954992%_
                                                           _%$%g5499054995%_)
                                                    (cons _%$%g5498954992%_
                                                          _%$%g5499054995%_))
                                                  '()
                                                  _%$%g5422654934%_))))))
                       (_%$%g5496254998%_
                        (let ((__obj101254
                               (gx#syntax-local-value _%$%g5422754936%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101254
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101254
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101254
                               'identifier)))))))
                  (_%__kont9526195262%_
                   (lambda (_%$%g5425454814%_
                            _%$%g5425554816%_
                            _%$%g5425654817%_)
                     (_%expand54218%_
                      _%$%g5425654817%_
                      _%$%g5425554816%_
                      (foldr (lambda (_%$%g5484054843%_ _%$%g5484154846%_)
                               (cons _%$%g5484054843%_ _%$%g5484154846%_))
                             '()
                             _%$%g5425454814%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9526595266%_
                   (lambda (_%$%g5428154694%_
                            _%$%g5428254696%_
                            _%$%g5428354697%_)
                     (_%expand54218%_
                      _%$%g5428354697%_
                      _%$%g5428254696%_
                      (foldr (lambda (_%$%g5472054723%_ _%$%g5472154726%_)
                               (cons _%$%g5472054723%_ _%$%g5472154726%_))
                             '()
                             _%$%g5428154694%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9526995270%_
                   (lambda (_%$%g5430854574%_
                            _%$%g5430954576%_
                            _%$%g5431054577%_)
                     (_%expand54218%_
                      _%$%g5431054577%_
                      _%$%g5430954576%_
                      (foldr (lambda (_%$%g5460054603%_ _%$%g5460154606%_)
                               (cons _%$%g5460054603%_ _%$%g5460154606%_))
                             '()
                             _%$%g5430854574%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9527395274%_
                   (lambda (_%$%g5433554452%_
                            _%$%g5433654454%_
                            _%$%g5433754455%_)
                     (_%expand54218%_
                      _%$%g5433754455%_
                      _%$%g5433654454%_
                      (foldr (lambda (_%$%g5448054483%_ _%$%g5448154486%_)
                               (cons _%$%g5448054483%_ _%$%g5448154486%_))
                             '()
                             _%$%g5433554452%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9549395494%_
                      (lambda (_%$%e5433854374%_
                               _%$%hd5433954378%_
                               _%$%tl5434054381%_
                               _%$%e5434154384%_
                               _%$%hd5434254388%_
                               _%$%tl5434354391%_
                               _%$%e5434454394%_
                               _%$%hd5434554398%_
                               _%$%tl5434654401%_
                               _%$%e5434754404%_
                               _%$%hd5434854408%_
                               _%$%tl5434954411%_
                               _%$%e5435054414%_
                               _%$%hd5435154418%_
                               _%$%tl5435254421%_
                               _%__splice9527595276%_
                               _%$%target5435354424%_
                               _%$%tl5435554427%_)
                        (letrec ((_%$%loop5435654430%_
                                  (lambda (_%$%hd5435454434%_
                                           _%$%body5436054437%_)
                                    (if (gx#stx-pair? _%$%hd5435454434%_)
                                        (let ((_%$%e5435754439%_
                                               (gx#syntax-e
                                                _%$%hd5435454434%_)))
                                          (let ((_%$%lp-tl5435954446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5435754439%_)))
                                                (_%$%lp-hd5435854443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5435754439%_))))
                                            (_%$%loop5435654430%_
                                             _%$%lp-tl5435954446%_
                                             (cons _%$%lp-hd5435854443%_
                                                   _%$%body5436054437%_))))
                                        (let ((_%$%body5436154449%_
                                               (reverse _%$%body5436054437%_)))
                                          (let ((_%$%g5433554452%_
                                                 _%$%body5436154449%_)
                                                (_%$%g5433654454%_
                                                 _%$%hd5435154418%_)
                                                (_%$%g5433754455%_
                                                 _%$%hd5434554398%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5433654454%_))
                                                (_%__kont9527395274%_
                                                 _%$%g5433554452%_
                                                 _%$%g5433654454%_
                                                 _%$%g5433754455%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))))))))
                          (_%$%loop5435654430%_ _%$%target5435354424%_ '()))))
                     (_%__match9544995450%_
                      (lambda (_%$%e5431154496%_
                               _%$%hd5431254500%_
                               _%$%tl5431354503%_
                               _%$%e5431454506%_
                               _%$%hd5431554510%_
                               _%$%tl5431654513%_
                               _%$%e5431754516%_
                               _%$%hd5431854520%_
                               _%$%tl5431954523%_
                               _%$%e5432054526%_
                               _%$%hd5432154530%_
                               _%$%tl5432254533%_
                               _%$%e5432354536%_
                               _%$%hd5432454540%_
                               _%$%tl5432554543%_
                               _%__splice9527195272%_
                               _%$%target5432654546%_
                               _%$%tl5432854549%_)
                        (letrec ((_%$%loop5432954552%_
                                  (lambda (_%$%hd5432754556%_
                                           _%$%body5433354559%_)
                                    (if (gx#stx-pair? _%$%hd5432754556%_)
                                        (let ((_%$%e5433054561%_
                                               (gx#syntax-e
                                                _%$%hd5432754556%_)))
                                          (let ((_%$%lp-tl5433254568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5433054561%_)))
                                                (_%$%lp-hd5433154565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5433054561%_))))
                                            (_%$%loop5432954552%_
                                             _%$%lp-tl5433254568%_
                                             (cons _%$%lp-hd5433154565%_
                                                   _%$%body5433354559%_))))
                                        (let ((_%$%body5433454571%_
                                               (reverse _%$%body5433354559%_)))
                                          (let ((_%$%g5430854574%_
                                                 _%$%body5433454571%_)
                                                (_%$%g5430954576%_
                                                 _%$%hd5432454540%_)
                                                (_%$%g5431054577%_
                                                 _%$%hd5431854520%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5430954576%_))
                                                (_%__kont9526995270%_
                                                 _%$%g5430854574%_
                                                 _%$%g5430954576%_
                                                 _%$%g5431054577%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))))))))
                          (_%$%loop5432954552%_ _%$%target5432654546%_ '()))))
                     (_%__match9540595406%_
                      (lambda (_%$%e5428454616%_
                               _%$%hd5428554620%_
                               _%$%tl5428654623%_
                               _%$%e5428754626%_
                               _%$%hd5428854630%_
                               _%$%tl5428954633%_
                               _%$%e5429054636%_
                               _%$%hd5429154640%_
                               _%$%tl5429254643%_
                               _%$%e5429354646%_
                               _%$%hd5429454650%_
                               _%$%tl5429554653%_
                               _%$%e5429654656%_
                               _%$%hd5429754660%_
                               _%$%tl5429854663%_
                               _%__splice9526795268%_
                               _%$%target5429954666%_
                               _%$%tl5430154669%_)
                        (letrec ((_%$%loop5430254672%_
                                  (lambda (_%$%hd5430054676%_
                                           _%$%body5430654679%_)
                                    (if (gx#stx-pair? _%$%hd5430054676%_)
                                        (let ((_%$%e5430354681%_
                                               (gx#syntax-e
                                                _%$%hd5430054676%_)))
                                          (let ((_%$%lp-tl5430554688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5430354681%_)))
                                                (_%$%lp-hd5430454685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5430354681%_))))
                                            (_%$%loop5430254672%_
                                             _%$%lp-tl5430554688%_
                                             (cons _%$%lp-hd5430454685%_
                                                   _%$%body5430654679%_))))
                                        (let ((_%$%body5430754691%_
                                               (reverse _%$%body5430654679%_)))
                                          (let ((_%$%g5428154694%_
                                                 _%$%body5430754691%_)
                                                (_%$%g5428254696%_
                                                 _%$%hd5429754660%_)
                                                (_%$%g5428354697%_
                                                 _%$%hd5429154640%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5428254696%_))
                                                (_%__kont9526595266%_
                                                 _%$%g5428154694%_
                                                 _%$%g5428254696%_
                                                 _%$%g5428354697%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))))))))
                          (_%$%loop5430254672%_ _%$%target5429954666%_ '()))))
                     (_%__match9536195362%_
                      (lambda (_%$%e5425754736%_
                               _%$%hd5425854740%_
                               _%$%tl5425954743%_
                               _%$%e5426054746%_
                               _%$%hd5426154750%_
                               _%$%tl5426254753%_
                               _%$%e5426354756%_
                               _%$%hd5426454760%_
                               _%$%tl5426554763%_
                               _%$%e5426654766%_
                               _%$%hd5426754770%_
                               _%$%tl5426854773%_
                               _%$%e5426954776%_
                               _%$%hd5427054780%_
                               _%$%tl5427154783%_
                               _%__splice9526395264%_
                               _%$%target5427254786%_
                               _%$%tl5427454789%_)
                        (letrec ((_%$%loop5427554792%_
                                  (lambda (_%$%hd5427354796%_
                                           _%$%body5427954799%_)
                                    (if (gx#stx-pair? _%$%hd5427354796%_)
                                        (let ((_%$%e5427654801%_
                                               (gx#syntax-e
                                                _%$%hd5427354796%_)))
                                          (let ((_%$%lp-tl5427854808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5427654801%_)))
                                                (_%$%lp-hd5427754805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5427654801%_))))
                                            (_%$%loop5427554792%_
                                             _%$%lp-tl5427854808%_
                                             (cons _%$%lp-hd5427754805%_
                                                   _%$%body5427954799%_))))
                                        (let ((_%$%body5428054811%_
                                               (reverse _%$%body5427954799%_)))
                                          (let ((_%$%g5425454814%_
                                                 _%$%body5428054811%_)
                                                (_%$%g5425554816%_
                                                 _%$%hd5427054780%_)
                                                (_%$%g5425654817%_
                                                 _%$%hd5426454760%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5425554816%_))
                                                (_%__kont9526195262%_
                                                 _%$%g5425454814%_
                                                 _%$%g5425554816%_
                                                 _%$%g5425654817%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))))))))
                          (_%$%loop5427554792%_ _%$%target5427254786%_ '()))))
                     (_%__match9534195342%_
                      (lambda (_%$%e5425754736%_
                               _%$%hd5425854740%_
                               _%$%tl5425954743%_
                               _%$%e5426054746%_
                               _%$%hd5426154750%_
                               _%$%tl5426254753%_
                               _%$%e5426354756%_
                               _%$%hd5426454760%_
                               _%$%tl5426554763%_
                               _%$%e5426654766%_
                               _%$%hd5426754770%_
                               _%$%tl5426854773%_)
                        (if (gx#identifier? _%$%hd5426754770%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101453_|
                                 _%$%hd5426754770%_)
                                (if (gx#stx-pair? _%$%tl5426854773%_)
                                    (let ((_%$%e5426954776%_
                                           (gx#syntax-e _%$%tl5426854773%_)))
                                      (let ((_%$%tl5427154783%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5426954776%_)))
                                            (_%$%hd5427054780%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5426954776%_))))
                                        (if (gx#stx-null? _%$%tl5427154783%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5426254753%_)
                                                (let ((_%__splice9526395264%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5426254753%_
                                                        '0)))
                                                  (let ((_%$%tl5427454789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9526395264%_
                                                            '1)))
                                                        (_%$%target5427254786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9526395264%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5427454789%_)
                                                        (_%__match9536195362%_
                                                         _%$%e5425754736%_
                                                         _%$%hd5425854740%_
                                                         _%$%tl5425954743%_
                                                         _%$%e5426054746%_
                                                         _%$%hd5426154750%_
                                                         _%$%tl5426254753%_
                                                         _%$%e5426354756%_
                                                         _%$%hd5426454760%_
                                                         _%$%tl5426554763%_
                                                         _%$%e5426654766%_
                                                         _%$%hd5426754770%_
                                                         _%$%tl5426854773%_
                                                         _%$%e5426954776%_
                                                         _%$%hd5427054780%_
                                                         _%$%tl5427154783%_
                                                         _%__splice9526395264%_
                                                         _%$%target5427254786%_
                                                         _%$%tl5427454789%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5422454367%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5422454367%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5422454367%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101454_|
                                     _%$%hd5426754770%_)
                                    (if (gx#stx-pair? _%$%tl5426854773%_)
                                        (let ((_%$%e5429654656%_
                                               (gx#syntax-e
                                                _%$%tl5426854773%_)))
                                          (let ((_%$%tl5429854663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5429654656%_)))
                                                (_%$%hd5429754660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5429654656%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5429854663%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5426254753%_)
                                                    (let ((_%__splice9526795268%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5426254753%_
                                                            '0)))
                                                      (let ((_%$%tl5430154669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9526795268%_ '1)))
                    (_%$%target5429954666%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9526795268%_ '0))))
                (if (gx#stx-null? _%$%tl5430154669%_)
                    (_%__match9540595406%_
                     _%$%e5425754736%_
                     _%$%hd5425854740%_
                     _%$%tl5425954743%_
                     _%$%e5426054746%_
                     _%$%hd5426154750%_
                     _%$%tl5426254753%_
                     _%$%e5426354756%_
                     _%$%hd5426454760%_
                     _%$%tl5426554763%_
                     _%$%e5426654766%_
                     _%$%hd5426754770%_
                     _%$%tl5426854773%_
                     _%$%e5429654656%_
                     _%$%hd5429754660%_
                     _%$%tl5429854663%_
                     _%__splice9526795268%_
                     _%$%target5429954666%_
                     _%$%tl5430154669%_)
                    (let () (declare (not safe)) (_%$%g5422454367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5422454367%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5422454367%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101455_|
                                         _%$%hd5426754770%_)
                                        (if (gx#stx-pair? _%$%tl5426854773%_)
                                            (let ((_%$%e5432354536%_
                                                   (gx#syntax-e
                                                    _%$%tl5426854773%_)))
                                              (let ((_%$%tl5432554543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5432354536%_)))
                                                    (_%$%hd5432454540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5432354536%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5432554543%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5426254753%_)
                                                        (let ((_%__splice9527195272%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5426254753%_
                                                                '0)))
                                                          (let ((_%$%tl5432854549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9527195272%_ '1)))
                        (_%$%target5432654546%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9527195272%_ '0))))
                    (if (gx#stx-null? _%$%tl5432854549%_)
                        (_%__match9544995450%_
                         _%$%e5425754736%_
                         _%$%hd5425854740%_
                         _%$%tl5425954743%_
                         _%$%e5426054746%_
                         _%$%hd5426154750%_
                         _%$%tl5426254753%_
                         _%$%e5426354756%_
                         _%$%hd5426454760%_
                         _%$%tl5426554763%_
                         _%$%e5426654766%_
                         _%$%hd5426754770%_
                         _%$%tl5426854773%_
                         _%$%e5432354536%_
                         _%$%hd5432454540%_
                         _%$%tl5432554543%_
                         _%__splice9527195272%_
                         _%$%target5432654546%_
                         _%$%tl5432854549%_)
                        (let () (declare (not safe)) (_%$%g5422454367%_)))))
                (let () (declare (not safe)) (_%$%g5422454367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5422454367%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5422454367%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101456_|
                                             _%$%hd5426754770%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5426854773%_)
                                                (let ((_%$%e5435054414%_
                                                       (gx#syntax-e
                                                        _%$%tl5426854773%_)))
                                                  (let ((_%$%tl5435254421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5435054414%_)))
                                                        (_%$%hd5435154418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5435054414%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5435254421%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5426254753%_)
                                                            (let ((_%__splice9527595276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5426254753%_
                            '0)))
                      (let ((_%$%tl5435554427%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9527595276%_ '1)))
                            (_%$%target5435354424%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9527595276%_ '0))))
                        (if (gx#stx-null? _%$%tl5435554427%_)
                            (_%__match9549395494%_
                             _%$%e5425754736%_
                             _%$%hd5425854740%_
                             _%$%tl5425954743%_
                             _%$%e5426054746%_
                             _%$%hd5426154750%_
                             _%$%tl5426254753%_
                             _%$%e5426354756%_
                             _%$%hd5426454760%_
                             _%$%tl5426554763%_
                             _%$%e5426654766%_
                             _%$%hd5426754770%_
                             _%$%tl5426854773%_
                             _%$%e5435054414%_
                             _%$%hd5435154418%_
                             _%$%tl5435254421%_
                             _%__splice9527595276%_
                             _%$%target5435354424%_
                             _%$%tl5435554427%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5422454367%_)))))
                    (let () (declare (not safe)) (_%$%g5422454367%_)))
                (let () (declare (not safe)) (_%$%g5422454367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5422454367%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5422454367%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5422454367%_)))))
                     (_%__match9531795318%_
                      (lambda (_%$%e5423054856%_
                               _%$%hd5423154860%_
                               _%$%tl5423254863%_
                               _%$%e5423354866%_
                               _%$%hd5423454870%_
                               _%$%tl5423554873%_
                               _%$%e5423654876%_
                               _%$%hd5423754880%_
                               _%$%tl5423854883%_
                               _%$%e5423954886%_
                               _%$%hd5424054890%_
                               _%$%tl5424154893%_
                               _%$%e5424254896%_
                               _%$%hd5424354900%_
                               _%$%tl5424454903%_
                               _%__splice9525995260%_
                               _%$%target5424554906%_
                               _%$%tl5424754909%_)
                        (letrec ((_%$%loop5424854912%_
                                  (lambda (_%$%hd5424654916%_
                                           _%$%body5425254919%_)
                                    (if (gx#stx-pair? _%$%hd5424654916%_)
                                        (let ((_%$%e5424954921%_
                                               (gx#syntax-e
                                                _%$%hd5424654916%_)))
                                          (let ((_%$%lp-tl5425154928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5424954921%_)))
                                                (_%$%lp-hd5425054925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5424954921%_))))
                                            (_%$%loop5424854912%_
                                             _%$%lp-tl5425154928%_
                                             (cons _%$%lp-hd5425054925%_
                                                   _%$%body5425254919%_))))
                                        (let ((_%$%body5425354931%_
                                               (reverse _%$%body5425254919%_)))
                                          (let ((_%$%g5422654934%_
                                                 _%$%body5425354931%_)
                                                (_%$%g5422754936%_
                                                 _%$%hd5424354900%_)
                                                (_%$%g5422854937%_
                                                 _%$%hd5424054890%_)
                                                (_%$%g5422954938%_
                                                 _%$%hd5423754880%_))
                                            (if (let ((__tmp101457
                                                       (gx#syntax-local-value
                                                        _%$%g5422754936%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101457))
                                                (_%__kont9525795258%_
                                                 _%$%g5422654934%_
                                                 _%$%g5422754936%_
                                                 _%$%g5422854937%_
                                                 _%$%g5422954938%_)
                                                (_%__match9534195342%_
                                                 _%$%e5423054856%_
                                                 _%$%hd5423154860%_
                                                 _%$%tl5423254863%_
                                                 _%$%e5423354866%_
                                                 _%$%hd5423454870%_
                                                 _%$%tl5423554873%_
                                                 _%$%e5423654876%_
                                                 _%$%hd5423754880%_
                                                 _%$%tl5423854883%_
                                                 _%$%e5423954886%_
                                                 _%$%hd5424054890%_
                                                 _%$%tl5424154893%_))))))))
                          (_%$%loop5424854912%_ _%$%target5424554906%_ '())))))
                (if (gx#stx-pair? _%__stx9525495255%_)
                    (let ((_%$%e5423054856%_
                           (gx#syntax-e _%__stx9525495255%_)))
                      (let ((_%$%tl5423254863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5423054856%_)))
                            (_%$%hd5423154860%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5423054856%_))))
                        (if (gx#stx-pair? _%$%tl5423254863%_)
                            (let ((_%$%e5423354866%_
                                   (gx#syntax-e _%$%tl5423254863%_)))
                              (let ((_%$%tl5423554873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5423354866%_)))
                                    (_%$%hd5423454870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5423354866%_))))
                                (if (gx#stx-pair? _%$%hd5423454870%_)
                                    (let ((_%$%e5423654876%_
                                           (gx#syntax-e _%$%hd5423454870%_)))
                                      (let ((_%$%tl5423854883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5423654876%_)))
                                            (_%$%hd5423754880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5423654876%_))))
                                        (if (gx#stx-pair? _%$%tl5423854883%_)
                                            (let ((_%$%e5423954886%_
                                                   (gx#syntax-e
                                                    _%$%tl5423854883%_)))
                                              (let ((_%$%tl5424154893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5423954886%_)))
                                                    (_%$%hd5424054890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5423954886%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5424154893%_)
                                                    (let ((_%$%e5424254896%_
                                                           (gx#syntax-e
                                                            _%$%tl5424154893%_)))
                                                      (let ((_%$%tl5424454903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5424254896%_)))
                    (_%$%hd5424354900%_
                     (let () (declare (not safe)) (##car _%$%e5424254896%_))))
                (if (gx#stx-null? _%$%tl5424454903%_)
                    (if (gx#stx-pair/null? _%$%tl5423554873%_)
                        (let ((_%__splice9525995260%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5423554873%_
                                '0)))
                          (let ((_%$%tl5424754909%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9525995260%_ '1)))
                                (_%$%target5424554906%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9525995260%_ '0))))
                            (if (gx#stx-null? _%$%tl5424754909%_)
                                (_%__match9531795318%_
                                 _%$%e5423054856%_
                                 _%$%hd5423154860%_
                                 _%$%tl5423254863%_
                                 _%$%e5423354866%_
                                 _%$%hd5423454870%_
                                 _%$%tl5423554873%_
                                 _%$%e5423654876%_
                                 _%$%hd5423754880%_
                                 _%$%tl5423854883%_
                                 _%$%e5423954886%_
                                 _%$%hd5424054890%_
                                 _%$%tl5424154893%_
                                 _%$%e5424254896%_
                                 _%$%hd5424354900%_
                                 _%$%tl5424454903%_
                                 _%__splice9525995260%_
                                 _%$%target5424554906%_
                                 _%$%tl5424754909%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5422454367%_)))))
                        (let () (declare (not safe)) (_%$%g5422454367%_)))
                    (let () (declare (not safe)) (_%$%g5422454367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5422454367%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5422454367%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5422454367%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5422454367%_)))))
                    (let () (declare (not safe)) (_%$%g5422454367%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx55330%_)
        (letrec ((_%expand-body55333%_
                  (lambda (_%var56324%_
                           _%Interface56326%_
                           _%body56327%_
                           _%checked?56328%_)
                    (let* ((_%type56330%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx55330%_
                               _%Interface56326%_)))
                           (_%$%g5633356377%_
                            (lambda (_%$%g5633456373%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5633456373%_)))
                           (_%$%g5633256533%_
                            (lambda (_%$%g5633456381%_)
                              (if (gx#stx-pair? _%$%g5633456381%_)
                                  (let ((_%$%e5634256384%_
                                         (gx#syntax-e _%$%g5633456381%_)))
                                    (let ((_%$%hd5634356388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5634256384%_)))
                                          (_%$%tl5634456391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5634256384%_))))
                                      (if (gx#stx-pair? _%$%tl5634456391%_)
                                          (let ((_%$%e5634556394%_
                                                 (gx#syntax-e
                                                  _%$%tl5634456391%_)))
                                            (let ((_%$%hd5634656398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5634556394%_)))
                                                  (_%$%tl5634756401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5634556394%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5634756401%_)
                                                  (let ((_%$%e5634856404%_
                                                         (gx#syntax-e
                                                          _%$%tl5634756401%_)))
                                                    (let ((_%$%hd5634956408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5634856404%_)))
                                                          (_%$%tl5635056411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5634856404%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5635056411%_)
                                                          (let ((_%$%e5635156414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5635056411%_)))
                    (let ((_%$%hd5635256418%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5635156414%_)))
                          (_%$%tl5635356421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5635156414%_))))
                      (if (gx#stx-pair? _%$%tl5635356421%_)
                          (let ((_%$%e5635456424%_
                                 (gx#syntax-e _%$%tl5635356421%_)))
                            (let ((_%$%hd5635556428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5635456424%_)))
                                  (_%$%tl5635656431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5635456424%_))))
                              (if (gx#stx-pair? _%$%tl5635656431%_)
                                  (let ((_%$%e5635756434%_
                                         (gx#syntax-e _%$%tl5635656431%_)))
                                    (let ((_%$%hd5635856438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5635756434%_)))
                                          (_%$%tl5635956441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5635756434%_))))
                                      (if (gx#stx-pair? _%$%tl5635956441%_)
                                          (let ((_%$%e5636056444%_
                                                 (gx#syntax-e
                                                  _%$%tl5635956441%_)))
                                            (let ((_%$%hd5636156448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5636056444%_)))
                                                  (_%$%tl5636256451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5636056444%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5636156448%_)
                                                  (let ((_g101458_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5636156448%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101459_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101458_)
                           (##values-length _g101458_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101459_ 2)))
                    (error "Context expects 2 values" _g101459_)))
              (let ((_%$%target5636356454%_
                     (let () (declare (not safe)) (##values-ref _g101458_ 0)))
                    (_%$%tl5636556457%_
                     (let () (declare (not safe)) (##values-ref _g101458_ 1))))
                (if (gx#stx-null? _%$%tl5636556457%_)
                    (letrec ((_%$%loop5636656460%_
                              (lambda (_%$%hd5636456464%_ _%$%body5637056467%_)
                                (if (gx#stx-pair? _%$%hd5636456464%_)
                                    (let ((_%$%e5636756469%_
                                           (gx#syntax-e _%$%hd5636456464%_)))
                                      (let ((_%$%lp-hd5636856473%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5636756469%_)))
                                            (_%$%lp-tl5636956476%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5636756469%_))))
                                        (_%$%loop5636656460%_
                                         _%$%lp-tl5636956476%_
                                         (cons _%$%lp-hd5636856473%_
                                               _%$%body5637056467%_))))
                                    (let ((_%$%body5637156479%_
                                           (reverse _%$%body5637056467%_)))
                                      (if (gx#stx-null? _%$%tl5636256451%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5635256418%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5634956408%_ '()))
                                      (cons _%$%hd5635256418%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5634356388%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5635256418%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5634656398%_ '()))
                            (cons _%$%hd5635556428%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5635856438%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5652456527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5652556530%_)
                   (cons _%$%g5652456527%_ _%$%g5652556530%_))
                 '()
                 _%$%body5637156479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5633356377%_
                                           _%$%g5633456381%_)))))))
                      (_%$%loop5636656460%_ _%$%target5636356454%_ '()))
                    (_%$%g5633356377%_ _%$%g5633456381%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5633356377%_
                                                   _%$%g5633456381%_))))
                                          (_%$%g5633356377%_
                                           _%$%g5633456381%_))))
                                  (_%$%g5633356377%_ _%$%g5633456381%_))))
                          (_%$%g5633356377%_ _%$%g5633456381%_))))
                  (_%$%g5633356377%_ _%$%g5633456381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5633356377%_
                                                   _%$%g5633456381%_))))
                                          (_%$%g5633356377%_
                                           _%$%g5633456381%_))))
                                  (_%$%g5633356377%_ _%$%g5633456381%_)))))
                      (_%$%g5633256533%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type56330%_
                             (let ((__obj101255 _%type56330%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101255
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101255
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101255
                                    'type-descriptor)))
                             _%var56324%_
                             _%checked?56328%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56327%_)))))
                 (_%expand55335%_
                  (lambda (_%var56123%_
                           _%Interface56125%_
                           _%body56126%_
                           _%checked?56127%_
                           _%checked-methods?56128%_
                           _%maybe?56129%_)
                    (let* ((_%$%g5613156139%_
                            (lambda (_%$%g5613256135%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5613256135%_)))
                           (_%$%g5613056316%_
                            (lambda (_%$%g5613256143%_)
                              (if _%checked?56127%_
                                  (if _%maybe?56129%_
                                      (let* ((_%$%g5615856173%_
                                              (lambda (_%$%g5615956169%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5615956169%_)))
                                             (_%$%g5615756219%_
                                              (lambda (_%$%g5615956177%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5615956177%_)
                                                    (let ((_%$%e5616256180%_
                                                           (gx#syntax-e
                                                            _%$%g5615956177%_)))
                                                      (let ((_%$%hd5616356184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5616256180%_)))
                    (_%$%tl5616456187%_
                     (let () (declare (not safe)) (##cdr _%$%e5616256180%_))))
                (if (gx#stx-pair? _%$%tl5616456187%_)
                    (let ((_%$%e5616556190%_ (gx#syntax-e _%$%tl5616456187%_)))
                      (let ((_%$%hd5616656194%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5616556190%_)))
                            (_%$%tl5616756197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5616556190%_))))
                        (if (gx#stx-null? _%$%tl5616756197%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5616356184%_
                                              (cons (cons _%$%hd5616656194%_
                                                          (cons _%$%hd5616356184%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5616356184%_
                                                          (cons _%$%g5613256143%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5616356184%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5615856173%_ _%$%g5615956177%_))))
                    (_%$%g5615856173%_ _%$%g5615956177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5615856173%_
                                                     _%$%g5615956177%_)))))
                                        (_%$%g5615756219%_
                                         (list _%var56123%_
                                               _%Interface56125%_)))
                                      (let* ((_%$%g5622356238%_
                                              (lambda (_%$%g5622456234%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5622456234%_)))
                                             (_%$%g5622256282%_
                                              (lambda (_%$%g5622456242%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5622456242%_)
                                                    (let ((_%$%e5622756245%_
                                                           (gx#syntax-e
                                                            _%$%g5622456242%_)))
                                                      (let ((_%$%hd5622856249%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5622756245%_)))
                    (_%$%tl5622956252%_
                     (let () (declare (not safe)) (##cdr _%$%e5622756245%_))))
                (if (gx#stx-pair? _%$%tl5622956252%_)
                    (let ((_%$%e5623056255%_ (gx#syntax-e _%$%tl5622956252%_)))
                      (let ((_%$%hd5623156259%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5623056255%_)))
                            (_%$%tl5623256262%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5623056255%_))))
                        (if (gx#stx-null? _%$%tl5623256262%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5622856249%_
                                              (cons (cons _%$%hd5623156259%_
                                                          (cons _%$%hd5622856249%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5613256143%_ '())))
                            (_%$%g5622356238%_ _%$%g5622456242%_))))
                    (_%$%g5622356238%_ _%$%g5622456242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5622356238%_
                                                     _%$%g5622456242%_)))))
                                        (_%$%g5622256282%_
                                         (list _%var56123%_
                                               _%Interface56125%_))))
                                  (if _%maybe?56129%_
                                      (let* ((_%$%g5628656294%_
                                              (lambda (_%$%g5628756290%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5628756290%_)))
                                             (_%$%g5628556312%_
                                              (lambda (_%$%g5628756298%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g5628756298%_
                                                            (cons _%$%g5613256143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g5628756298%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5628556312%_ _%var56123%_))
                                      _%$%g5613256143%_)))))
                      (_%$%g5613056316%_
                       (_%expand-body55333%_
                        _%var56123%_
                        _%Interface56125%_
                        _%body56126%_
                        (let ((_%$e56320%_ _%checked?56127%_))
                          (if _%$e56320%_
                              _%$e56320%_
                              _%checked-methods?56128%_))))))))
          (let* ((_%__stx9549695497%_ _%stx55330%_)
                 (_%$%g5534155484%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9549695497%_))))
            (let ((_%__kont9549995500%_
                   (lambda (_%$%g5534356051%_
                            _%$%g5534456053%_
                            _%$%g5534556054%_
                            _%$%g5534656055%_)
                     (let* ((_%$%g5608056088%_
                             (lambda (_%$%g5608156084%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5608156084%_)))
                            (_%$%g5607956115%_
                             (lambda (_%$%g5608156092%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5534656055%_
                                                 (cons _%$%g5534556054%_
                                                       (cons _%$%g5608156092%_
                                                             '())))
                                           (foldr (lambda (_%$%g5610656109%_
                                                           _%$%g5610756112%_)
                                                    (cons _%$%g5610656109%_
                                                          _%$%g5610756112%_))
                                                  '()
                                                  _%$%g5534356051%_))))))
                       (_%$%g5607956115%_
                        (let ((__obj101256
                               (gx#syntax-local-value _%$%g5534456053%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101256
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101256
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101256
                               'identifier)))))))
                  (_%__kont9550395504%_
                   (lambda (_%$%g5537155931%_
                            _%$%g5537255933%_
                            _%$%g5537355934%_)
                     (_%expand55335%_
                      _%$%g5537355934%_
                      _%$%g5537255933%_
                      (foldr (lambda (_%$%g5595755960%_ _%$%g5595855963%_)
                               (cons _%$%g5595755960%_ _%$%g5595855963%_))
                             '()
                             _%$%g5537155931%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9550795508%_
                   (lambda (_%$%g5539855811%_
                            _%$%g5539955813%_
                            _%$%g5540055814%_)
                     (_%expand55335%_
                      _%$%g5540055814%_
                      _%$%g5539955813%_
                      (foldr (lambda (_%$%g5583755840%_ _%$%g5583855843%_)
                               (cons _%$%g5583755840%_ _%$%g5583855843%_))
                             '()
                             _%$%g5539855811%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9551195512%_
                   (lambda (_%$%g5542555691%_
                            _%$%g5542655693%_
                            _%$%g5542755694%_)
                     (_%expand55335%_
                      _%$%g5542755694%_
                      _%$%g5542655693%_
                      (foldr (lambda (_%$%g5571755720%_ _%$%g5571855723%_)
                               (cons _%$%g5571755720%_ _%$%g5571855723%_))
                             '()
                             _%$%g5542555691%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9551595516%_
                   (lambda (_%$%g5545255569%_
                            _%$%g5545355571%_
                            _%$%g5545455572%_)
                     (_%expand55335%_
                      _%$%g5545455572%_
                      _%$%g5545355571%_
                      (foldr (lambda (_%$%g5559755600%_ _%$%g5559855603%_)
                               (cons _%$%g5559755600%_ _%$%g5559855603%_))
                             '()
                             _%$%g5545255569%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9573595736%_
                      (lambda (_%$%e5545555491%_
                               _%$%hd5545655495%_
                               _%$%tl5545755498%_
                               _%$%e5545855501%_
                               _%$%hd5545955505%_
                               _%$%tl5546055508%_
                               _%$%e5546155511%_
                               _%$%hd5546255515%_
                               _%$%tl5546355518%_
                               _%$%e5546455521%_
                               _%$%hd5546555525%_
                               _%$%tl5546655528%_
                               _%$%e5546755531%_
                               _%$%hd5546855535%_
                               _%$%tl5546955538%_
                               _%__splice9551795518%_
                               _%$%target5547055541%_
                               _%$%tl5547255544%_)
                        (letrec ((_%$%loop5547355547%_
                                  (lambda (_%$%hd5547155551%_
                                           _%$%body5547755554%_)
                                    (if (gx#stx-pair? _%$%hd5547155551%_)
                                        (let ((_%$%e5547455556%_
                                               (gx#syntax-e
                                                _%$%hd5547155551%_)))
                                          (let ((_%$%lp-tl5547655563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5547455556%_)))
                                                (_%$%lp-hd5547555560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5547455556%_))))
                                            (_%$%loop5547355547%_
                                             _%$%lp-tl5547655563%_
                                             (cons _%$%lp-hd5547555560%_
                                                   _%$%body5547755554%_))))
                                        (let ((_%$%body5547855566%_
                                               (reverse _%$%body5547755554%_)))
                                          (let ((_%$%g5545255569%_
                                                 _%$%body5547855566%_)
                                                (_%$%g5545355571%_
                                                 _%$%hd5546855535%_)
                                                (_%$%g5545455572%_
                                                 _%$%hd5546255515%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5545455572%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5545355571%_)))
                                                (_%__kont9551595516%_
                                                 _%$%g5545255569%_
                                                 _%$%g5545355571%_
                                                 _%$%g5545455572%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))))))))
                          (_%$%loop5547355547%_ _%$%target5547055541%_ '()))))
                     (_%__match9569195692%_
                      (lambda (_%$%e5542855613%_
                               _%$%hd5542955617%_
                               _%$%tl5543055620%_
                               _%$%e5543155623%_
                               _%$%hd5543255627%_
                               _%$%tl5543355630%_
                               _%$%e5543455633%_
                               _%$%hd5543555637%_
                               _%$%tl5543655640%_
                               _%$%e5543755643%_
                               _%$%hd5543855647%_
                               _%$%tl5543955650%_
                               _%$%e5544055653%_
                               _%$%hd5544155657%_
                               _%$%tl5544255660%_
                               _%__splice9551395514%_
                               _%$%target5544355663%_
                               _%$%tl5544555666%_)
                        (letrec ((_%$%loop5544655669%_
                                  (lambda (_%$%hd5544455673%_
                                           _%$%body5545055676%_)
                                    (if (gx#stx-pair? _%$%hd5544455673%_)
                                        (let ((_%$%e5544755678%_
                                               (gx#syntax-e
                                                _%$%hd5544455673%_)))
                                          (let ((_%$%lp-tl5544955685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5544755678%_)))
                                                (_%$%lp-hd5544855682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5544755678%_))))
                                            (_%$%loop5544655669%_
                                             _%$%lp-tl5544955685%_
                                             (cons _%$%lp-hd5544855682%_
                                                   _%$%body5545055676%_))))
                                        (let ((_%$%body5545155688%_
                                               (reverse _%$%body5545055676%_)))
                                          (let ((_%$%g5542555691%_
                                                 _%$%body5545155688%_)
                                                (_%$%g5542655693%_
                                                 _%$%hd5544155657%_)
                                                (_%$%g5542755694%_
                                                 _%$%hd5543555637%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5542755694%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5542655693%_)))
                                                (_%__kont9551195512%_
                                                 _%$%g5542555691%_
                                                 _%$%g5542655693%_
                                                 _%$%g5542755694%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))))))))
                          (_%$%loop5544655669%_ _%$%target5544355663%_ '()))))
                     (_%__match9564795648%_
                      (lambda (_%$%e5540155733%_
                               _%$%hd5540255737%_
                               _%$%tl5540355740%_
                               _%$%e5540455743%_
                               _%$%hd5540555747%_
                               _%$%tl5540655750%_
                               _%$%e5540755753%_
                               _%$%hd5540855757%_
                               _%$%tl5540955760%_
                               _%$%e5541055763%_
                               _%$%hd5541155767%_
                               _%$%tl5541255770%_
                               _%$%e5541355773%_
                               _%$%hd5541455777%_
                               _%$%tl5541555780%_
                               _%__splice9550995510%_
                               _%$%target5541655783%_
                               _%$%tl5541855786%_)
                        (letrec ((_%$%loop5541955789%_
                                  (lambda (_%$%hd5541755793%_
                                           _%$%body5542355796%_)
                                    (if (gx#stx-pair? _%$%hd5541755793%_)
                                        (let ((_%$%e5542055798%_
                                               (gx#syntax-e
                                                _%$%hd5541755793%_)))
                                          (let ((_%$%lp-tl5542255805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5542055798%_)))
                                                (_%$%lp-hd5542155802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5542055798%_))))
                                            (_%$%loop5541955789%_
                                             _%$%lp-tl5542255805%_
                                             (cons _%$%lp-hd5542155802%_
                                                   _%$%body5542355796%_))))
                                        (let ((_%$%body5542455808%_
                                               (reverse _%$%body5542355796%_)))
                                          (let ((_%$%g5539855811%_
                                                 _%$%body5542455808%_)
                                                (_%$%g5539955813%_
                                                 _%$%hd5541455777%_)
                                                (_%$%g5540055814%_
                                                 _%$%hd5540855757%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5540055814%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5539955813%_)))
                                                (_%__kont9550795508%_
                                                 _%$%g5539855811%_
                                                 _%$%g5539955813%_
                                                 _%$%g5540055814%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))))))))
                          (_%$%loop5541955789%_ _%$%target5541655783%_ '()))))
                     (_%__match9560395604%_
                      (lambda (_%$%e5537455853%_
                               _%$%hd5537555857%_
                               _%$%tl5537655860%_
                               _%$%e5537755863%_
                               _%$%hd5537855867%_
                               _%$%tl5537955870%_
                               _%$%e5538055873%_
                               _%$%hd5538155877%_
                               _%$%tl5538255880%_
                               _%$%e5538355883%_
                               _%$%hd5538455887%_
                               _%$%tl5538555890%_
                               _%$%e5538655893%_
                               _%$%hd5538755897%_
                               _%$%tl5538855900%_
                               _%__splice9550595506%_
                               _%$%target5538955903%_
                               _%$%tl5539155906%_)
                        (letrec ((_%$%loop5539255909%_
                                  (lambda (_%$%hd5539055913%_
                                           _%$%body5539655916%_)
                                    (if (gx#stx-pair? _%$%hd5539055913%_)
                                        (let ((_%$%e5539355918%_
                                               (gx#syntax-e
                                                _%$%hd5539055913%_)))
                                          (let ((_%$%lp-tl5539555925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5539355918%_)))
                                                (_%$%lp-hd5539455922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5539355918%_))))
                                            (_%$%loop5539255909%_
                                             _%$%lp-tl5539555925%_
                                             (cons _%$%lp-hd5539455922%_
                                                   _%$%body5539655916%_))))
                                        (let ((_%$%body5539755928%_
                                               (reverse _%$%body5539655916%_)))
                                          (let ((_%$%g5537155931%_
                                                 _%$%body5539755928%_)
                                                (_%$%g5537255933%_
                                                 _%$%hd5538755897%_)
                                                (_%$%g5537355934%_
                                                 _%$%hd5538155877%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5537355934%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5537255933%_)))
                                                (_%__kont9550395504%_
                                                 _%$%g5537155931%_
                                                 _%$%g5537255933%_
                                                 _%$%g5537355934%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))))))))
                          (_%$%loop5539255909%_ _%$%target5538955903%_ '()))))
                     (_%__match9558395584%_
                      (lambda (_%$%e5537455853%_
                               _%$%hd5537555857%_
                               _%$%tl5537655860%_
                               _%$%e5537755863%_
                               _%$%hd5537855867%_
                               _%$%tl5537955870%_
                               _%$%e5538055873%_
                               _%$%hd5538155877%_
                               _%$%tl5538255880%_
                               _%$%e5538355883%_
                               _%$%hd5538455887%_
                               _%$%tl5538555890%_)
                        (if (gx#identifier? _%$%hd5538455887%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101460_|
                                 _%$%hd5538455887%_)
                                (if (gx#stx-pair? _%$%tl5538555890%_)
                                    (let ((_%$%e5538655893%_
                                           (gx#syntax-e _%$%tl5538555890%_)))
                                      (let ((_%$%tl5538855900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5538655893%_)))
                                            (_%$%hd5538755897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5538655893%_))))
                                        (if (gx#stx-null? _%$%tl5538855900%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5537955870%_)
                                                (let ((_%__splice9550595506%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5537955870%_
                                                        '0)))
                                                  (let ((_%$%tl5539155906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9550595506%_
                                                            '1)))
                                                        (_%$%target5538955903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9550595506%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5539155906%_)
                                                        (_%__match9560395604%_
                                                         _%$%e5537455853%_
                                                         _%$%hd5537555857%_
                                                         _%$%tl5537655860%_
                                                         _%$%e5537755863%_
                                                         _%$%hd5537855867%_
                                                         _%$%tl5537955870%_
                                                         _%$%e5538055873%_
                                                         _%$%hd5538155877%_
                                                         _%$%tl5538255880%_
                                                         _%$%e5538355883%_
                                                         _%$%hd5538455887%_
                                                         _%$%tl5538555890%_
                                                         _%$%e5538655893%_
                                                         _%$%hd5538755897%_
                                                         _%$%tl5538855900%_
                                                         _%__splice9550595506%_
                                                         _%$%target5538955903%_
                                                         _%$%tl5539155906%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5534155484%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5534155484%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5534155484%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101461_|
                                     _%$%hd5538455887%_)
                                    (if (gx#stx-pair? _%$%tl5538555890%_)
                                        (let ((_%$%e5541355773%_
                                               (gx#syntax-e
                                                _%$%tl5538555890%_)))
                                          (let ((_%$%tl5541555780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5541355773%_)))
                                                (_%$%hd5541455777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5541355773%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5541555780%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5537955870%_)
                                                    (let ((_%__splice9550995510%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5537955870%_
                                                            '0)))
                                                      (let ((_%$%tl5541855786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9550995510%_ '1)))
                    (_%$%target5541655783%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9550995510%_ '0))))
                (if (gx#stx-null? _%$%tl5541855786%_)
                    (_%__match9564795648%_
                     _%$%e5537455853%_
                     _%$%hd5537555857%_
                     _%$%tl5537655860%_
                     _%$%e5537755863%_
                     _%$%hd5537855867%_
                     _%$%tl5537955870%_
                     _%$%e5538055873%_
                     _%$%hd5538155877%_
                     _%$%tl5538255880%_
                     _%$%e5538355883%_
                     _%$%hd5538455887%_
                     _%$%tl5538555890%_
                     _%$%e5541355773%_
                     _%$%hd5541455777%_
                     _%$%tl5541555780%_
                     _%__splice9550995510%_
                     _%$%target5541655783%_
                     _%$%tl5541855786%_)
                    (let () (declare (not safe)) (_%$%g5534155484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5534155484%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5534155484%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101462_|
                                         _%$%hd5538455887%_)
                                        (if (gx#stx-pair? _%$%tl5538555890%_)
                                            (let ((_%$%e5544055653%_
                                                   (gx#syntax-e
                                                    _%$%tl5538555890%_)))
                                              (let ((_%$%tl5544255660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5544055653%_)))
                                                    (_%$%hd5544155657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5544055653%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5544255660%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5537955870%_)
                                                        (let ((_%__splice9551395514%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5537955870%_
                                                                '0)))
                                                          (let ((_%$%tl5544555666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9551395514%_ '1)))
                        (_%$%target5544355663%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9551395514%_ '0))))
                    (if (gx#stx-null? _%$%tl5544555666%_)
                        (_%__match9569195692%_
                         _%$%e5537455853%_
                         _%$%hd5537555857%_
                         _%$%tl5537655860%_
                         _%$%e5537755863%_
                         _%$%hd5537855867%_
                         _%$%tl5537955870%_
                         _%$%e5538055873%_
                         _%$%hd5538155877%_
                         _%$%tl5538255880%_
                         _%$%e5538355883%_
                         _%$%hd5538455887%_
                         _%$%tl5538555890%_
                         _%$%e5544055653%_
                         _%$%hd5544155657%_
                         _%$%tl5544255660%_
                         _%__splice9551395514%_
                         _%$%target5544355663%_
                         _%$%tl5544555666%_)
                        (let () (declare (not safe)) (_%$%g5534155484%_)))))
                (let () (declare (not safe)) (_%$%g5534155484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5534155484%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5534155484%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101463_|
                                             _%$%hd5538455887%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5538555890%_)
                                                (let ((_%$%e5546755531%_
                                                       (gx#syntax-e
                                                        _%$%tl5538555890%_)))
                                                  (let ((_%$%tl5546955538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5546755531%_)))
                                                        (_%$%hd5546855535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5546755531%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5546955538%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5537955870%_)
                                                            (let ((_%__splice9551795518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5537955870%_
                            '0)))
                      (let ((_%$%tl5547255544%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9551795518%_ '1)))
                            (_%$%target5547055541%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9551795518%_ '0))))
                        (if (gx#stx-null? _%$%tl5547255544%_)
                            (_%__match9573595736%_
                             _%$%e5537455853%_
                             _%$%hd5537555857%_
                             _%$%tl5537655860%_
                             _%$%e5537755863%_
                             _%$%hd5537855867%_
                             _%$%tl5537955870%_
                             _%$%e5538055873%_
                             _%$%hd5538155877%_
                             _%$%tl5538255880%_
                             _%$%e5538355883%_
                             _%$%hd5538455887%_
                             _%$%tl5538555890%_
                             _%$%e5546755531%_
                             _%$%hd5546855535%_
                             _%$%tl5546955538%_
                             _%__splice9551795518%_
                             _%$%target5547055541%_
                             _%$%tl5547255544%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5534155484%_)))))
                    (let () (declare (not safe)) (_%$%g5534155484%_)))
                (let () (declare (not safe)) (_%$%g5534155484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5534155484%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5534155484%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5534155484%_)))))
                     (_%__match9555995560%_
                      (lambda (_%$%e5534755973%_
                               _%$%hd5534855977%_
                               _%$%tl5534955980%_
                               _%$%e5535055983%_
                               _%$%hd5535155987%_
                               _%$%tl5535255990%_
                               _%$%e5535355993%_
                               _%$%hd5535455997%_
                               _%$%tl5535556000%_
                               _%$%e5535656003%_
                               _%$%hd5535756007%_
                               _%$%tl5535856010%_
                               _%$%e5535956013%_
                               _%$%hd5536056017%_
                               _%$%tl5536156020%_
                               _%__splice9550195502%_
                               _%$%target5536256023%_
                               _%$%tl5536456026%_)
                        (letrec ((_%$%loop5536556029%_
                                  (lambda (_%$%hd5536356033%_
                                           _%$%body5536956036%_)
                                    (if (gx#stx-pair? _%$%hd5536356033%_)
                                        (let ((_%$%e5536656038%_
                                               (gx#syntax-e
                                                _%$%hd5536356033%_)))
                                          (let ((_%$%lp-tl5536856045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5536656038%_)))
                                                (_%$%lp-hd5536756042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5536656038%_))))
                                            (_%$%loop5536556029%_
                                             _%$%lp-tl5536856045%_
                                             (cons _%$%lp-hd5536756042%_
                                                   _%$%body5536956036%_))))
                                        (let ((_%$%body5537056048%_
                                               (reverse _%$%body5536956036%_)))
                                          (let ((_%$%g5534356051%_
                                                 _%$%body5537056048%_)
                                                (_%$%g5534456053%_
                                                 _%$%hd5536056017%_)
                                                (_%$%g5534556054%_
                                                 _%$%hd5535756007%_)
                                                (_%$%g5534656055%_
                                                 _%$%hd5535455997%_))
                                            (if (let ((__tmp101464
                                                       (gx#syntax-local-value
                                                        _%$%g5534456053%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101464))
                                                (_%__kont9549995500%_
                                                 _%$%g5534356051%_
                                                 _%$%g5534456053%_
                                                 _%$%g5534556054%_
                                                 _%$%g5534656055%_)
                                                (_%__match9558395584%_
                                                 _%$%e5534755973%_
                                                 _%$%hd5534855977%_
                                                 _%$%tl5534955980%_
                                                 _%$%e5535055983%_
                                                 _%$%hd5535155987%_
                                                 _%$%tl5535255990%_
                                                 _%$%e5535355993%_
                                                 _%$%hd5535455997%_
                                                 _%$%tl5535556000%_
                                                 _%$%e5535656003%_
                                                 _%$%hd5535756007%_
                                                 _%$%tl5535856010%_))))))))
                          (_%$%loop5536556029%_ _%$%target5536256023%_ '())))))
                (if (gx#stx-pair? _%__stx9549695497%_)
                    (let ((_%$%e5534755973%_
                           (gx#syntax-e _%__stx9549695497%_)))
                      (let ((_%$%tl5534955980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5534755973%_)))
                            (_%$%hd5534855977%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5534755973%_))))
                        (if (gx#stx-pair? _%$%tl5534955980%_)
                            (let ((_%$%e5535055983%_
                                   (gx#syntax-e _%$%tl5534955980%_)))
                              (let ((_%$%tl5535255990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5535055983%_)))
                                    (_%$%hd5535155987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5535055983%_))))
                                (if (gx#stx-pair? _%$%hd5535155987%_)
                                    (let ((_%$%e5535355993%_
                                           (gx#syntax-e _%$%hd5535155987%_)))
                                      (let ((_%$%tl5535556000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5535355993%_)))
                                            (_%$%hd5535455997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5535355993%_))))
                                        (if (gx#stx-pair? _%$%tl5535556000%_)
                                            (let ((_%$%e5535656003%_
                                                   (gx#syntax-e
                                                    _%$%tl5535556000%_)))
                                              (let ((_%$%tl5535856010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5535656003%_)))
                                                    (_%$%hd5535756007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5535656003%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5535856010%_)
                                                    (let ((_%$%e5535956013%_
                                                           (gx#syntax-e
                                                            _%$%tl5535856010%_)))
                                                      (let ((_%$%tl5536156020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5535956013%_)))
                    (_%$%hd5536056017%_
                     (let () (declare (not safe)) (##car _%$%e5535956013%_))))
                (if (gx#stx-null? _%$%tl5536156020%_)
                    (if (gx#stx-pair/null? _%$%tl5535255990%_)
                        (let ((_%__splice9550195502%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5535255990%_
                                '0)))
                          (let ((_%$%tl5536456026%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9550195502%_ '1)))
                                (_%$%target5536256023%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9550195502%_ '0))))
                            (if (gx#stx-null? _%$%tl5536456026%_)
                                (_%__match9555995560%_
                                 _%$%e5534755973%_
                                 _%$%hd5534855977%_
                                 _%$%tl5534955980%_
                                 _%$%e5535055983%_
                                 _%$%hd5535155987%_
                                 _%$%tl5535255990%_
                                 _%$%e5535355993%_
                                 _%$%hd5535455997%_
                                 _%$%tl5535556000%_
                                 _%$%e5535656003%_
                                 _%$%hd5535756007%_
                                 _%$%tl5535856010%_
                                 _%$%e5535956013%_
                                 _%$%hd5536056017%_
                                 _%$%tl5536156020%_
                                 _%__splice9550195502%_
                                 _%$%target5536256023%_
                                 _%$%tl5536456026%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5534155484%_)))))
                        (let () (declare (not safe)) (_%$%g5534155484%_)))
                    (let () (declare (not safe)) (_%$%g5534155484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5534155484%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5534155484%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5534155484%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5534155484%_)))))
                    (let () (declare (not safe)) (_%$%g5534155484%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56543%_)
        (let* ((_%__stx9573895739%_ _%stx56543%_)
               (_%$%g5654856608%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9573895739%_))))
          (let ((_%__kont9574195742%_
                 (lambda (_%$%g5655057164%_ _%$%g5655157166%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g5655157166%_ '()))
                               (foldr (lambda (_%$%g5718257185%_
                                               _%$%g5718357188%_)
                                        (cons _%$%g5718257185%_
                                              _%$%g5718357188%_))
                                      '()
                                      _%$%g5655057164%_)))))
                (_%__kont9574595746%_
                 (lambda (_%$%g5656756752%_ _%$%g5656856754%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g5656856754%_)
                       (let* ((_%$%g5677456781%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56543%_
                                _%$%g5656856754%_))
                              (_%$%E5677656787%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g5677456781%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K5677757085%_
                               (lambda (_%parts56791%_ _%var56793%_)
                                 (let ((_%$e56795%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56793%_))))
                                   (if _%$e56795%_
                                       (let _%loop56802%_ ((_%parts56805%_
                                                            _%parts56791%_)
                                                           (_%type56807%_
                                                            (##direct-structure-ref
                                                             _%$e56795%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object56808%_
                                                            _%var56793%_)
                                                           (_%checked-method?56809%_
                                                            (##direct-structure-ref
                                                             _%$e56795%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?56810%_
                                                            '#f))
                                         (let* ((_%$%parts5681156819%_
                                                 _%parts56805%_)
                                                (_%$%else5681356880%_
                                                 (lambda ()
                                                   (let* ((_%$%g5683156839%_
                                                           (lambda (_%$%g5683256835%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5683256835%_)))
                                                          (_%$%g5683056876%_
                                                           (lambda (_%$%g5683256843%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g5683256843%_
                                 (foldr (lambda (_%$%g5686756870%_
                                                 _%$%g5686856873%_)
                                          (cons _%$%g5686756870%_
                                                _%$%g5686856873%_))
                                        '()
                                        _%$%g5656756752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5683056876%_
                                                      _%object56808%_))))
                                                (_%$%K5681557059%_
                                                 (lambda (_%rest56884%_
                                                          _%part56886%_)
                                                   (if (and (not _%nil-check?56810%_)
                                                            (let ((__tmp101465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part56886%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp101465)))
               (let ((_%str56890%_ (symbol->string _%part56886%_)))
                 (_%loop56802%_
                  (cons (let ((__tmp101466
                               (substring
                                _%str56890%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str56890%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp101466))
                        _%rest56884%_)
                  _%type56807%_
                  _%object56808%_
                  _%checked-method?56809%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type56807%_))
                   (let* ((_%$%g5689556910%_
                           (lambda (_%$%g5689656906%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5689656906%_)))
                          (_%$%g5689456979%_
                           (lambda (_%$%g5689656914%_)
                             (if (gx#stx-pair? _%$%g5689656914%_)
                                 (let ((_%$%e5689956917%_
                                        (gx#syntax-e _%$%g5689656914%_)))
                                   (let ((_%$%hd5690056921%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5689956917%_)))
                                         (_%$%tl5690156924%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5689956917%_))))
                                     (if (gx#stx-pair? _%$%tl5690156924%_)
                                         (let ((_%$%e5690256927%_
                                                (gx#syntax-e
                                                 _%$%tl5690156924%_)))
                                           (let ((_%$%hd5690356931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5690256927%_)))
                                                 (_%$%tl5690456934%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5690256927%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5690456934%_)
                                                 (if (null? _%rest56884%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd5690356931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd5690056921%_ '()))
                         (foldr (lambda (_%$%g5695856961%_ _%$%g5695956964%_)
                                  (cons _%$%g5695856961%_ _%$%g5695956964%_))
                                '()
                                _%$%g5656756752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e56967%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type56807%_
                                                             _%part56886%_)))
                                                       (if _%$e56967%_
                                                           (let ((_%slot-type56974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx56543%_
                             _%$e56967%_))))
                     (_%loop56802%_
                      _%rest56884%_
                      _%slot-type56974%_
                      (cons _%$%hd5690356931%_ (cons _%$%hd5690056921%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type56807%_
                       _%part56886%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference; unknown type for slot"
                    _%stx56543%_
                    _%$%g5656856754%_
                    _%part56886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5689556910%_
                                                  _%$%g5689656914%_))))
                                         (_%$%g5689556910%_
                                          _%$%g5689656914%_))))
                                 (_%$%g5689556910%_ _%$%g5689656914%_)))))
                     (_%$%g5689456979%_
                      (list (if _%nil-check?56810%_
                                (cons 'check-nil! (cons _%object56808%_ '()))
                                _%object56808%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx56543%_
                             _%type56807%_
                             _%part56886%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type56807%_))
                       (if (null? _%rest56884%_)
                           (let* ((_%$%g5698557000%_
                                   (lambda (_%$%g5698656996%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g5698656996%_)))
                                  (_%$%g5698457053%_
                                   (lambda (_%$%g5698657004%_)
                                     (if (gx#stx-pair? _%$%g5698657004%_)
                                         (let ((_%$%e5698957007%_
                                                (gx#syntax-e
                                                 _%$%g5698657004%_)))
                                           (let ((_%$%hd5699057011%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5698957007%_)))
                                                 (_%$%tl5699157014%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5698957007%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl5699157014%_)
                                                 (let ((_%$%e5699257017%_
                                                        (gx#syntax-e
                                                         _%$%tl5699157014%_)))
                                                   (let ((_%$%hd5699357021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5699257017%_)))
                                                         (_%$%tl5699457024%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5699257017%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5699457024%_)
                                                         (cons _%$%hd5699357021%_
                                                               (cons _%$%hd5699057011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g5704457047%_
                                             _%$%g5704557050%_)
                                      (cons _%$%g5704457047%_
                                            _%$%g5704557050%_))
                                    '()
                                    _%$%g5656756752%_)))
                 (_%$%g5698557000%_ _%$%g5698657004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5698557000%_
                                                  _%$%g5698657004%_))))
                                         (_%$%g5698557000%_
                                          _%$%g5698657004%_)))))
                             (_%$%g5698457053%_
                              (list (if _%nil-check?56810%_
                                        (cons 'check-nil!
                                              (cons _%object56808%_ '()))
                                        _%object56808%_)
                                    (gx#stx-identifier
                                     _%$%g5656856754%_
                                     (if _%checked-method?56809%_ '"" '"&")
                                     (let ((__obj101257 _%type56807%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj101257
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj101257
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj101257
                                            'name)))
                                     '"-"
                                     _%part56886%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx56543%_
                            _%$%g5656856754%_
                            _%part56886%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx56543%_
                        _%type56807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts5681156819%_)
                                               (let ((_%$%hd5681657063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts5681156819%_)))
                                                     (_%$%tl5681757066%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts5681156819%_))))
                                                 (let* ((_%part57069%_
                                                         _%$%hd5681657063%_)
                                                        (_%rest57072%_
                                                         _%$%tl5681757066%_))
                                                   (_%$%K5681557059%_
                                                    _%rest57072%_
                                                    _%part57069%_)))
                                               (_%$%else5681356880%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g5656856754%_
                                                   (foldr (lambda (_%$%g5707657079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g5707757082%_)
                    (cons _%$%g5707657079%_ _%$%g5707757082%_))
                  '()
                  _%$%g5656756752%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g5677456781%_)
                             (let ((_%$%hd5677857089%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g5677456781%_)))
                                   (_%$%tl5677957092%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g5677456781%_))))
                               (let* ((_%var57095%_ _%$%hd5677857089%_)
                                      (_%parts57098%_ _%$%tl5677957092%_))
                                 (_%$%K5677757085%_
                                  _%parts57098%_
                                  _%var57095%_)))
                             (_%$%E5677656787%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g5656856754%_
                                   (foldr (lambda (_%$%g5710057103%_
                                                   _%$%g5710157106%_)
                                            (cons _%$%g5710057103%_
                                                  _%$%g5710157106%_))
                                          '()
                                          _%$%g5656756752%_))))))
                (_%__kont9574995750%_
                 (lambda (_%$%g5659056653%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g5666856671%_ _%$%g5666956674%_)
                                  (cons _%$%g5666856671%_ _%$%g5666956674%_))
                                '()
                                _%$%g5659056653%_)))))
            (let* ((_%__match9582595826%_
                    (lambda (_%$%e5659156615%_
                             _%$%hd5659256619%_
                             _%$%tl5659356622%_
                             _%__splice9575195752%_
                             _%$%target5659456625%_
                             _%$%tl5659656628%_)
                      (letrec ((_%$%loop5659756631%_
                                (lambda (_%$%hd5659556635%_
                                         _%$%arg5660156638%_)
                                  (if (gx#stx-pair? _%$%hd5659556635%_)
                                      (let ((_%$%e5659856640%_
                                             (gx#syntax-e _%$%hd5659556635%_)))
                                        (let ((_%$%lp-tl5660056647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5659856640%_)))
                                              (_%$%lp-hd5659956644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5659856640%_))))
                                          (_%$%loop5659756631%_
                                           _%$%lp-tl5660056647%_
                                           (cons _%$%lp-hd5659956644%_
                                                 _%$%arg5660156638%_))))
                                      (let ((_%$%arg5660256650%_
                                             (reverse _%$%arg5660156638%_)))
                                        (_%__kont9574995750%_
                                         _%$%arg5660256650%_))))))
                        (_%$%loop5659756631%_ _%$%target5659456625%_ '()))))
                   (_%__match9581195812%_
                    (lambda (_%$%e5656956684%_
                             _%$%hd5657056688%_
                             _%$%tl5657156691%_
                             _%$%e5657256694%_
                             _%$%hd5657356698%_
                             _%$%tl5657456701%_
                             _%$%e5657556704%_
                             _%$%hd5657656708%_
                             _%$%tl5657756711%_
                             _%$%e5657856714%_
                             _%$%hd5657956718%_
                             _%$%tl5658056721%_
                             _%__splice9574795748%_
                             _%$%target5658156724%_
                             _%$%tl5658356727%_)
                      (letrec ((_%$%loop5658456730%_
                                (lambda (_%$%hd5658256734%_
                                         _%$%rand5658856737%_)
                                  (if (gx#stx-pair? _%$%hd5658256734%_)
                                      (let ((_%$%e5658556739%_
                                             (gx#syntax-e _%$%hd5658256734%_)))
                                        (let ((_%$%lp-tl5658756746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5658556739%_)))
                                              (_%$%lp-hd5658656743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5658556739%_))))
                                          (_%$%loop5658456730%_
                                           _%$%lp-tl5658756746%_
                                           (cons _%$%lp-hd5658656743%_
                                                 _%$%rand5658856737%_))))
                                      (let ((_%$%rand5658956749%_
                                             (reverse _%$%rand5658856737%_)))
                                        (_%__kont9574595746%_
                                         _%$%rand5658956749%_
                                         _%$%hd5657956718%_))))))
                        (_%$%loop5658456730%_ _%$%target5658156724%_ '()))))
                   (_%__match9578595786%_
                    (lambda (_%$%e5656956684%_
                             _%$%hd5657056688%_
                             _%$%tl5657156691%_
                             _%$%e5657256694%_
                             _%$%hd5657356698%_
                             _%$%tl5657456701%_)
                      (if (gx#stx-pair? _%$%hd5657356698%_)
                          (let ((_%$%e5657556704%_
                                 (gx#syntax-e _%$%hd5657356698%_)))
                            (let ((_%$%tl5657756711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5657556704%_)))
                                  (_%$%hd5657656708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5657556704%_))))
                              (if (gx#identifier? _%$%hd5657656708%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101467_|
                                       _%$%hd5657656708%_)
                                      (if (gx#stx-pair? _%$%tl5657756711%_)
                                          (let ((_%$%e5657856714%_
                                                 (gx#syntax-e
                                                  _%$%tl5657756711%_)))
                                            (let ((_%$%tl5658056721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5657856714%_)))
                                                  (_%$%hd5657956718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5657856714%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5658056721%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5657456701%_)
                                                      (let ((_%__splice9574795748%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5657456701%_
                                                              '0)))
                                                        (let ((_%$%tl5658356727%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9574795748%_ '1)))
                      (_%$%target5658156724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9574795748%_ '0))))
                  (if (gx#stx-null? _%$%tl5658356727%_)
                      (_%__match9581195812%_
                       _%$%e5656956684%_
                       _%$%hd5657056688%_
                       _%$%tl5657156691%_
                       _%$%e5657256694%_
                       _%$%hd5657356698%_
                       _%$%tl5657456701%_
                       _%$%e5657556704%_
                       _%$%hd5657656708%_
                       _%$%tl5657756711%_
                       _%$%e5657856714%_
                       _%$%hd5657956718%_
                       _%$%tl5658056721%_
                       _%__splice9574795748%_
                       _%$%target5658156724%_
                       _%$%tl5658356727%_)
                      (if (gx#stx-pair/null? _%$%tl5657156691%_)
                          (let ((_%__splice9575195752%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5657156691%_
                                  '0)))
                            (let ((_%$%tl5659656628%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575195752%_ '1)))
                                  (_%$%target5659456625%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575195752%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5659656628%_)
                                  (_%__match9582595826%_
                                   _%$%e5656956684%_
                                   _%$%hd5657056688%_
                                   _%$%tl5657156691%_
                                   _%__splice9575195752%_
                                   _%$%target5659456625%_
                                   _%$%tl5659656628%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5654856608%_)))))
                          (let () (declare (not safe)) (_%$%g5654856608%_))))))
              (if (gx#stx-pair/null? _%$%tl5657156691%_)
                  (let ((_%__splice9575195752%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5657156691%_
                          '0)))
                    (let ((_%$%tl5659656628%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '1)))
                          (_%$%target5659456625%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '0))))
                      (if (gx#stx-null? _%$%tl5659656628%_)
                          (_%__match9582595826%_
                           _%$%e5656956684%_
                           _%$%hd5657056688%_
                           _%$%tl5657156691%_
                           _%__splice9575195752%_
                           _%$%target5659456625%_
                           _%$%tl5659656628%_)
                          (let () (declare (not safe)) (_%$%g5654856608%_)))))
                  (let () (declare (not safe)) (_%$%g5654856608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5657156691%_)
                                                      (let ((_%__splice9575195752%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5657156691%_
                                                              '0)))
                                                        (let ((_%$%tl5659656628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9575195752%_ '1)))
                      (_%$%target5659456625%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9575195752%_ '0))))
                  (if (gx#stx-null? _%$%tl5659656628%_)
                      (_%__match9582595826%_
                       _%$%e5656956684%_
                       _%$%hd5657056688%_
                       _%$%tl5657156691%_
                       _%__splice9575195752%_
                       _%$%target5659456625%_
                       _%$%tl5659656628%_)
                      (let () (declare (not safe)) (_%$%g5654856608%_)))))
              (let () (declare (not safe)) (_%$%g5654856608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5657156691%_)
                                              (let ((_%__splice9575195752%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5657156691%_
                                                      '0)))
                                                (let ((_%$%tl5659656628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9575195752%_
                                                          '1)))
                                                      (_%$%target5659456625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9575195752%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5659656628%_)
                                                      (_%__match9582595826%_
                                                       _%$%e5656956684%_
                                                       _%$%hd5657056688%_
                                                       _%$%tl5657156691%_
                                                       _%__splice9575195752%_
                                                       _%$%target5659456625%_
                                                       _%$%tl5659656628%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5654856608%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5654856608%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5657156691%_)
                                          (let ((_%__splice9575195752%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5657156691%_
                                                  '0)))
                                            (let ((_%$%tl5659656628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575195752%_
                                                      '1)))
                                                  (_%$%target5659456625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575195752%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5659656628%_)
                                                  (_%__match9582595826%_
                                                   _%$%e5656956684%_
                                                   _%$%hd5657056688%_
                                                   _%$%tl5657156691%_
                                                   _%__splice9575195752%_
                                                   _%$%target5659456625%_
                                                   _%$%tl5659656628%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5654856608%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5654856608%_))))
                                  (if (gx#stx-pair/null? _%$%tl5657156691%_)
                                      (let ((_%__splice9575195752%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5657156691%_
                                              '0)))
                                        (let ((_%$%tl5659656628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9575195752%_
                                                  '1)))
                                              (_%$%target5659456625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9575195752%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5659656628%_)
                                              (_%__match9582595826%_
                                               _%$%e5656956684%_
                                               _%$%hd5657056688%_
                                               _%$%tl5657156691%_
                                               _%__splice9575195752%_
                                               _%$%target5659456625%_
                                               _%$%tl5659656628%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5654856608%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5654856608%_))))))
                          (if (gx#stx-pair/null? _%$%tl5657156691%_)
                              (let ((_%__splice9575195752%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5657156691%_
                                      '0)))
                                (let ((_%$%tl5659656628%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '1)))
                                      (_%$%target5659456625%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5659656628%_)
                                      (_%__match9582595826%_
                                       _%$%e5656956684%_
                                       _%$%hd5657056688%_
                                       _%$%tl5657156691%_
                                       _%__splice9575195752%_
                                       _%$%target5659456625%_
                                       _%$%tl5659656628%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5654856608%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5654856608%_))))))
                   (_%__match9577395774%_
                    (lambda (_%$%e5655257116%_
                             _%$%hd5655357120%_
                             _%$%tl5655457123%_
                             _%$%e5655557126%_
                             _%$%hd5655657130%_
                             _%$%tl5655757133%_
                             _%__splice9574395744%_
                             _%$%target5655857136%_
                             _%$%tl5656057139%_)
                      (letrec ((_%$%loop5656157142%_
                                (lambda (_%$%hd5655957146%_
                                         _%$%rand5656557149%_)
                                  (if (gx#stx-pair? _%$%hd5655957146%_)
                                      (let ((_%$%e5656257151%_
                                             (gx#syntax-e _%$%hd5655957146%_)))
                                        (let ((_%$%lp-tl5656457158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5656257151%_)))
                                              (_%$%lp-hd5656357155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5656257151%_))))
                                          (_%$%loop5656157142%_
                                           _%$%lp-tl5656457158%_
                                           (cons _%$%lp-hd5656357155%_
                                                 _%$%rand5656557149%_))))
                                      (let ((_%$%rand5656657161%_
                                             (reverse _%$%rand5656557149%_)))
                                        (let ((_%$%g5655057164%_
                                               _%$%rand5656657161%_)
                                              (_%$%g5655157166%_
                                               _%$%hd5655657130%_))
                                          (if (gx#identifier?
                                               _%$%g5655157166%_)
                                              (_%__kont9574195742%_
                                               _%$%g5655057164%_
                                               _%$%g5655157166%_)
                                              (_%__match9578595786%_
                                               _%$%e5655257116%_
                                               _%$%hd5655357120%_
                                               _%$%tl5655457123%_
                                               _%$%e5655557126%_
                                               _%$%hd5655657130%_
                                               _%$%tl5655757133%_))))))))
                        (_%$%loop5656157142%_ _%$%target5655857136%_ '())))))
              (if (gx#stx-pair? _%__stx9573895739%_)
                  (let ((_%$%e5655257116%_ (gx#syntax-e _%__stx9573895739%_)))
                    (let ((_%$%tl5655457123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5655257116%_)))
                          (_%$%hd5655357120%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5655257116%_))))
                      (if (gx#stx-pair? _%$%tl5655457123%_)
                          (let ((_%$%e5655557126%_
                                 (gx#syntax-e _%$%tl5655457123%_)))
                            (let ((_%$%tl5655757133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5655557126%_)))
                                  (_%$%hd5655657130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5655557126%_))))
                              (if (gx#stx-pair/null? _%$%tl5655757133%_)
                                  (let ((_%__splice9574395744%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5655757133%_
                                          '0)))
                                    (let ((_%$%tl5656057139%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9574395744%_
                                              '1)))
                                          (_%$%target5655857136%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9574395744%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5656057139%_)
                                          (_%__match9577395774%_
                                           _%$%e5655257116%_
                                           _%$%hd5655357120%_
                                           _%$%tl5655457123%_
                                           _%$%e5655557126%_
                                           _%$%hd5655657130%_
                                           _%$%tl5655757133%_
                                           _%__splice9574395744%_
                                           _%$%target5655857136%_
                                           _%$%tl5656057139%_)
                                          (if (gx#stx-pair? _%$%hd5655657130%_)
                                              (let ((_%$%e5657556704%_
                                                     (gx#syntax-e
                                                      _%$%hd5655657130%_)))
                                                (let ((_%$%tl5657756711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5657556704%_)))
                                                      (_%$%hd5657656708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5657556704%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5657656708%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101467_|
                                                           _%$%hd5657656708%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5657756711%_)
                                                              (let ((_%$%e5657856714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5657756711%_)))
                        (let ((_%$%tl5658056721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5657856714%_)))
                              (_%$%hd5657956718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5657856714%_))))
                          (if (gx#stx-pair/null? _%$%tl5655457123%_)
                              (let ((_%__splice9575195752%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5655457123%_
                                      '0)))
                                (let ((_%$%tl5659656628%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '1)))
                                      (_%$%target5659456625%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5659656628%_)
                                      (_%__match9582595826%_
                                       _%$%e5655257116%_
                                       _%$%hd5655357120%_
                                       _%$%tl5655457123%_
                                       _%__splice9575195752%_
                                       _%$%target5659456625%_
                                       _%$%tl5659656628%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5654856608%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5654856608%_)))))
                      (if (gx#stx-pair/null? _%$%tl5655457123%_)
                          (let ((_%__splice9575195752%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5655457123%_
                                  '0)))
                            (let ((_%$%tl5659656628%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9575195752%_ '1)))
                                  (_%$%target5659456625%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9575195752%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5659656628%_)
                                  (_%__match9582595826%_
                                   _%$%e5655257116%_
                                   _%$%hd5655357120%_
                                   _%$%tl5655457123%_
                                   _%__splice9575195752%_
                                   _%$%target5659456625%_
                                   _%$%tl5659656628%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5654856608%_)))))
                          (let () (declare (not safe)) (_%$%g5654856608%_))))
                  (if (gx#stx-pair/null? _%$%tl5655457123%_)
                      (let ((_%__splice9575195752%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5655457123%_
                              '0)))
                        (let ((_%$%tl5659656628%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575195752%_ '1)))
                              (_%$%target5659456625%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575195752%_ '0))))
                          (if (gx#stx-null? _%$%tl5659656628%_)
                              (_%__match9582595826%_
                               _%$%e5655257116%_
                               _%$%hd5655357120%_
                               _%$%tl5655457123%_
                               _%__splice9575195752%_
                               _%$%target5659456625%_
                               _%$%tl5659656628%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5654856608%_)))))
                      (let () (declare (not safe)) (_%$%g5654856608%_))))
              (if (gx#stx-pair/null? _%$%tl5655457123%_)
                  (let ((_%__splice9575195752%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5655457123%_
                          '0)))
                    (let ((_%$%tl5659656628%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '1)))
                          (_%$%target5659456625%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '0))))
                      (if (gx#stx-null? _%$%tl5659656628%_)
                          (_%__match9582595826%_
                           _%$%e5655257116%_
                           _%$%hd5655357120%_
                           _%$%tl5655457123%_
                           _%__splice9575195752%_
                           _%$%target5659456625%_
                           _%$%tl5659656628%_)
                          (let () (declare (not safe)) (_%$%g5654856608%_)))))
                  (let () (declare (not safe)) (_%$%g5654856608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5655457123%_)
                                                  (let ((_%__splice9575195752%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5655457123%_
                                                          '0)))
                                                    (let ((_%$%tl5659656628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9575195752%_
                                                              '1)))
                                                          (_%$%target5659456625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9575195752%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5659656628%_)
                                                          (_%__match9582595826%_
                                                           _%$%e5655257116%_
                                                           _%$%hd5655357120%_
                                                           _%$%tl5655457123%_
                                                           _%__splice9575195752%_
                                                           _%$%target5659456625%_
                                                           _%$%tl5659656628%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5654856608%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5654856608%_)))))))
                                  (if (gx#stx-pair? _%$%hd5655657130%_)
                                      (let ((_%$%e5657556704%_
                                             (gx#syntax-e _%$%hd5655657130%_)))
                                        (let ((_%$%tl5657756711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5657556704%_)))
                                              (_%$%hd5657656708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5657556704%_))))
                                          (if (gx#identifier?
                                               _%$%hd5657656708%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g101467_|
                                                   _%$%hd5657656708%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5657756711%_)
                                                      (let ((_%$%e5657856714%_
                                                             (gx#syntax-e
                                                              _%$%tl5657756711%_)))
                                                        (let ((_%$%tl5658056721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5657856714%_)))
                      (_%$%hd5657956718%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5657856714%_))))
                  (if (gx#stx-pair/null? _%$%tl5655457123%_)
                      (let ((_%__splice9575195752%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5655457123%_
                              '0)))
                        (let ((_%$%tl5659656628%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575195752%_ '1)))
                              (_%$%target5659456625%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575195752%_ '0))))
                          (if (gx#stx-null? _%$%tl5659656628%_)
                              (_%__match9582595826%_
                               _%$%e5655257116%_
                               _%$%hd5655357120%_
                               _%$%tl5655457123%_
                               _%__splice9575195752%_
                               _%$%target5659456625%_
                               _%$%tl5659656628%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5654856608%_)))))
                      (let () (declare (not safe)) (_%$%g5654856608%_)))))
              (if (gx#stx-pair/null? _%$%tl5655457123%_)
                  (let ((_%__splice9575195752%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5655457123%_
                          '0)))
                    (let ((_%$%tl5659656628%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '1)))
                          (_%$%target5659456625%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575195752%_ '0))))
                      (if (gx#stx-null? _%$%tl5659656628%_)
                          (_%__match9582595826%_
                           _%$%e5655257116%_
                           _%$%hd5655357120%_
                           _%$%tl5655457123%_
                           _%__splice9575195752%_
                           _%$%target5659456625%_
                           _%$%tl5659656628%_)
                          (let () (declare (not safe)) (_%$%g5654856608%_)))))
                  (let () (declare (not safe)) (_%$%g5654856608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5655457123%_)
                                                      (let ((_%__splice9575195752%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5655457123%_
                                                              '0)))
                                                        (let ((_%$%tl5659656628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9575195752%_ '1)))
                      (_%$%target5659456625%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9575195752%_ '0))))
                  (if (gx#stx-null? _%$%tl5659656628%_)
                      (_%__match9582595826%_
                       _%$%e5655257116%_
                       _%$%hd5655357120%_
                       _%$%tl5655457123%_
                       _%__splice9575195752%_
                       _%$%target5659456625%_
                       _%$%tl5659656628%_)
                      (let () (declare (not safe)) (_%$%g5654856608%_)))))
              (let () (declare (not safe)) (_%$%g5654856608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5655457123%_)
                                                  (let ((_%__splice9575195752%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5655457123%_
                                                          '0)))
                                                    (let ((_%$%tl5659656628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9575195752%_
                                                              '1)))
                                                          (_%$%target5659456625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9575195752%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5659656628%_)
                                                          (_%__match9582595826%_
                                                           _%$%e5655257116%_
                                                           _%$%hd5655357120%_
                                                           _%$%tl5655457123%_
                                                           _%__splice9575195752%_
                                                           _%$%target5659456625%_
                                                           _%$%tl5659656628%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5654856608%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5654856608%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5655457123%_)
                                          (let ((_%__splice9575195752%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5655457123%_
                                                  '0)))
                                            (let ((_%$%tl5659656628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575195752%_
                                                      '1)))
                                                  (_%$%target5659456625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9575195752%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5659656628%_)
                                                  (_%__match9582595826%_
                                                   _%$%e5655257116%_
                                                   _%$%hd5655357120%_
                                                   _%$%tl5655457123%_
                                                   _%__splice9575195752%_
                                                   _%$%target5659456625%_
                                                   _%$%tl5659656628%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5654856608%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5654856608%_)))))))
                          (if (gx#stx-pair/null? _%$%tl5655457123%_)
                              (let ((_%__splice9575195752%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5655457123%_
                                      '0)))
                                (let ((_%$%tl5659656628%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '1)))
                                      (_%$%target5659456625%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575195752%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5659656628%_)
                                      (_%__match9582595826%_
                                       _%$%e5655257116%_
                                       _%$%hd5655357120%_
                                       _%$%tl5655457123%_
                                       _%__splice9575195752%_
                                       _%$%target5659456625%_
                                       _%$%tl5659656628%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5654856608%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5654856608%_))))))
                  (let () (declare (not safe)) (_%$%g5654856608%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx57198%_)
        (let* ((_%__stx9582895829%_ _%stx57198%_)
               (_%$%g5720257223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9582895829%_))))
          (let ((_%__kont9583195832%_
                 (lambda (_%$%g5720457291%_)
                   (let* ((_%$%g5730357310%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57198%_
                            _%$%g5720457291%_))
                          (_%$%E5730557316%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5730357310%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5730657532%_
                           (lambda (_%parts57320%_ _%var57322%_)
                             (let ((_%$e57324%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57322%_))))
                               (if _%$e57324%_
                                   (let _%loop57331%_ ((_%parts57334%_
                                                        _%parts57320%_)
                                                       (_%type57336%_
                                                        (##direct-structure-ref
                                                         _%$e57324%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57337%_
                                                        _%var57322%_)
                                                       (_%nil-check?57338%_
                                                        '#f))
                                     (let* ((_%$%parts5733957347%_
                                             _%parts57334%_)
                                            (_%$%else5734157359%_
                                             (lambda () _%object57337%_))
                                            (_%$%K5734357514%_
                                             (lambda (_%rest57363%_
                                                      _%part57365%_)
                                               (if (and (not _%nil-check?57338%_)
                                                        (let ((__tmp101468
                                                               (symbol->string
                                                                _%part57365%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101468)))
                                                   (let ((_%str57369%_
                                                          (symbol->string
                                                           _%part57365%_)))
                                                     (_%loop57331%_
                                                      (cons (let ((__tmp101469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57369%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57369%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101469))
                    _%rest57363%_)
              _%type57336%_
              _%object57337%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57336%_))
                                                       (let* ((_%$%g5737457389%_
                                                               (lambda (_%$%g5737557385%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5737557385%_)))
                      (_%$%g5737357506%_
                       (lambda (_%$%g5737557393%_)
                         (if (gx#stx-pair? _%$%g5737557393%_)
                             (let ((_%$%e5737857396%_
                                    (gx#syntax-e _%$%g5737557393%_)))
                               (let ((_%$%hd5737957400%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5737857396%_)))
                                     (_%$%tl5738057403%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5737857396%_))))
                                 (if (gx#stx-pair? _%$%tl5738057403%_)
                                     (let ((_%$%e5738157406%_
                                            (gx#syntax-e _%$%tl5738057403%_)))
                                       (let ((_%$%hd5738257410%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5738157406%_)))
                                             (_%$%tl5738357413%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5738157406%_))))
                                         (if (gx#stx-null? _%$%tl5738357413%_)
                                             (if (null? _%rest57363%_)
                                                 (let ((_%$e57448%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57336%_
                                                         _%part57365%_)))
                                                   (if _%$e57448%_
                                                       (let* ((_%$%g5745557463%_
                                                               (lambda (_%$%g5745657459%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5745657459%_)))
                      (_%$%g5745457486%_
                       (lambda (_%$%g5745657467%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g5745657467%_ '()))
                                     (cons (cons _%$%hd5738257410%_
                                                 (cons _%$%hd5737957400%_ '()))
                                           '()))))))
                 (_%$%g5745457486%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx57198%_
                     _%$e57448%_))))
               (if _%nil-check?57338%_
                   (cons _%$%hd5738257410%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd5737957400%_ '()))
                               '()))
                   (cons _%$%hd5738257410%_ (cons _%$%hd5737957400%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e57494%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57336%_
                                                         _%part57365%_)))
                                                   (if _%$e57494%_
                                                       (let ((_%type57501%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx57198%_
                         _%$e57494%_))))
                 (if _%nil-check?57338%_
                     (_%loop57331%_
                      _%rest57363%_
                      _%type57501%_
                      (cons _%$%hd5738257410%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd5737957400%_ '()))
                                  '()))
                      '#f)
                     (_%loop57331%_
                      _%rest57363%_
                      _%type57501%_
                      (cons _%$%hd5738257410%_ (cons _%$%hd5737957400%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx57198%_
                _%$%g5720457291%_
                _%part57365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g5737457389%_
                                              _%$%g5737557393%_))))
                                     (_%$%g5737457389%_ _%$%g5737557393%_))))
                             (_%$%g5737457389%_ _%$%g5737557393%_)))))
                 (_%$%g5737357506%_
                  (list (if _%nil-check?57338%_
                            (cons 'check-nil! (cons _%object57337%_ '()))
                            _%object57337%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx57198%_
                         _%type57336%_
                         _%part57365%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57336%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57198%_
                    _%type57336%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5733957347%_)
                                           (let ((_%$%hd5734457518%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5733957347%_)))
                                                 (_%$%tl5734557521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5733957347%_))))
                                             (let* ((_%part57524%_
                                                     _%$%hd5734457518%_)
                                                    (_%rest57527%_
                                                     _%$%tl5734557521%_))
                                               (_%$%K5734357514%_
                                                _%rest57527%_
                                                _%part57524%_)))
                                           (_%$%else5734157359%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g5720457291%_ '())))))))
                     (if (pair? _%$%g5730357310%_)
                         (let ((_%$%hd5730757536%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5730357310%_)))
                               (_%$%tl5730857539%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5730357310%_))))
                           (let* ((_%var57542%_ _%$%hd5730757536%_)
                                  (_%parts57545%_ _%$%tl5730857539%_))
                             (_%$%K5730657532%_ _%parts57545%_ _%var57542%_)))
                         (_%$%E5730557316%_)))))
                (_%__kont9583395834%_
                 (lambda (_%$%g5721157250%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g5721157250%_ '())))))
            (let ((_%__match9584995850%_
                   (lambda (_%$%e5720557271%_
                            _%$%hd5720657275%_
                            _%$%tl5720757278%_
                            _%$%e5720857281%_
                            _%$%hd5720957285%_
                            _%$%tl5721057288%_)
                     (let ((_%$%g5720457291%_ _%$%hd5720957285%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5720457291%_)
                           (_%__kont9583195832%_ _%$%g5720457291%_)
                           (_%__kont9583395834%_ _%$%hd5720957285%_))))))
              (if (gx#stx-pair? _%__stx9582895829%_)
                  (let ((_%$%e5720557271%_ (gx#syntax-e _%__stx9582895829%_)))
                    (let ((_%$%tl5720757278%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5720557271%_)))
                          (_%$%hd5720657275%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5720557271%_))))
                      (if (gx#stx-pair? _%$%tl5720757278%_)
                          (let ((_%$%e5720857281%_
                                 (gx#syntax-e _%$%tl5720757278%_)))
                            (let ((_%$%tl5721057288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5720857281%_)))
                                  (_%$%hd5720957285%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5720857281%_))))
                              (if (gx#stx-null? _%$%tl5721057288%_)
                                  (_%__match9584995850%_
                                   _%$%e5720557271%_
                                   _%$%hd5720657275%_
                                   _%$%tl5720757278%_
                                   _%$%e5720857281%_
                                   _%$%hd5720957285%_
                                   _%$%tl5721057288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5720257223%_)))))
                          (let () (declare (not safe)) (_%$%g5720257223%_)))))
                  (let () (declare (not safe)) (_%$%g5720257223%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57552%_)
        (let* ((_%__stx9586695867%_ _%stx57552%_)
               (_%$%g5755657585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9586695867%_))))
          (let ((_%__kont9586995870%_
                 (lambda (_%$%g5755857677%_ _%$%g5755957679%_)
                   (let* ((_%$%g5769357700%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57552%_
                            _%$%g5755957679%_))
                          (_%$%E5769557706%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5769357700%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5769657936%_
                           (lambda (_%parts57710%_ _%var57712%_)
                             (let ((_%$e57714%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57712%_))))
                               (if _%$e57714%_
                                   (let _%loop57721%_ ((_%parts57724%_
                                                        _%parts57710%_)
                                                       (_%type57726%_
                                                        (##direct-structure-ref
                                                         _%$e57714%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57727%_
                                                        _%var57712%_)
                                                       (_%checked-mutator?57728%_
                                                        (##direct-structure-ref
                                                         _%$e57714%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?57729%_
                                                        '#f))
                                     (let* ((_%$%parts5773057737%_
                                             _%parts57724%_)
                                            (_%$%E5773257743%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts5773057737%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K5773357918%_
                                             (lambda (_%rest57747%_
                                                      _%part57749%_)
                                               (if (and (not _%nil-check?57729%_)
                                                        (let ((__tmp101470
                                                               (symbol->string
                                                                _%part57749%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101470)))
                                                   (let ((_%str57753%_
                                                          (symbol->string
                                                           _%part57749%_)))
                                                     (_%loop57721%_
                                                      (cons (let ((__tmp101471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57753%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57753%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101471))
                    _%rest57747%_)
              _%type57726%_
              _%object57727%_
              _%checked-mutator?57728%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57726%_))
                                                       (if (null? _%rest57747%_)
                                                           (let* ((_%$%g5776057775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g5776157771%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5776157771%_)))
                          (_%$%g5775957832%_
                           (lambda (_%$%g5776157779%_)
                             (if (gx#stx-pair? _%$%g5776157779%_)
                                 (let ((_%$%e5776457782%_
                                        (gx#syntax-e _%$%g5776157779%_)))
                                   (let ((_%$%hd5776557786%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5776457782%_)))
                                         (_%$%tl5776657789%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5776457782%_))))
                                     (if (gx#stx-pair? _%$%tl5776657789%_)
                                         (let ((_%$%e5776757792%_
                                                (gx#syntax-e
                                                 _%$%tl5776657789%_)))
                                           (let ((_%$%hd5776857796%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5776757792%_)))
                                                 (_%$%tl5776957799%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5776757792%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5776957799%_)
                                                 (if _%nil-check?57729%_
                                                     (cons _%$%hd5776857796%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd5776557786%_ '()))
                         (cons _%$%g5755857677%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd5776857796%_
                                                           (cons _%$%hd5776557786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g5755857677%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5776057775%_
                                                  _%$%g5776157779%_))))
                                         (_%$%g5776057775%_
                                          _%$%g5776157779%_))))
                                 (_%$%g5776057775%_ _%$%g5776157779%_)))))
                     (_%$%g5775957832%_
                      (list _%object57727%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx57552%_
                             _%type57726%_
                             _%part57749%_
                             (if _%checked-mutator?57728%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type57726%_
                                  _%part57749%_)
                                 '#f)))))
                   (let ((_%$e57836%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type57726%_
                           _%part57749%_)))
                     (if _%$e57836%_
                         (let* ((_%type57843%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx57552%_
                                    _%$e57836%_)))
                                (_%$%g5784657861%_
                                 (lambda (_%$%g5784757857%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5784757857%_)))
                                (_%$%g5784557908%_
                                 (lambda (_%$%g5784757865%_)
                                   (if (gx#stx-pair? _%$%g5784757865%_)
                                       (let ((_%$%e5785057868%_
                                              (gx#syntax-e _%$%g5784757865%_)))
                                         (let ((_%$%hd5785157872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5785057868%_)))
                                               (_%$%tl5785257875%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5785057868%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5785257875%_)
                                               (let ((_%$%e5785357878%_
                                                      (gx#syntax-e
                                                       _%$%tl5785257875%_)))
                                                 (let ((_%$%hd5785457882%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5785357878%_)))
                                                       (_%$%tl5785557885%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5785357878%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5785557885%_)
                                                       (_%loop57721%_
                                                        _%rest57747%_
                                                        _%type57843%_
                                                        (cons _%$%hd5785457882%_
                                                              (cons _%$%hd5785157872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type57843%_
                 _%part57749%_)
                '#f)
               (_%$%g5784657861%_ _%$%g5784757865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5784657861%_
                                                _%$%g5784757865%_))))
                                       (_%$%g5784657861%_
                                        _%$%g5784757865%_)))))
                           (_%$%g5784557908%_
                            (list (if _%nil-check?57729%_
                                      (cons 'check-nil!
                                            (cons _%object57727%_ '()))
                                      _%object57727%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx57552%_
                                   _%type57843%_
                                   _%part57749%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx57552%_
                          _%$%g5755957679%_
                          _%part57749%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57726%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57552%_
                    _%type57726%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5773057737%_)
                                           (let ((_%$%hd5773457922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5773057737%_)))
                                                 (_%$%tl5773557925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5773057737%_))))
                                             (let* ((_%part57928%_
                                                     _%$%hd5773457922%_)
                                                    (_%rest57931%_
                                                     _%$%tl5773557925%_))
                                               (_%$%K5773357918%_
                                                _%rest57931%_
                                                _%part57928%_)))
                                           (_%$%E5773257743%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57552%_)))))))
                     (if (pair? _%$%g5769357700%_)
                         (let ((_%$%hd5769757940%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5769357700%_)))
                               (_%$%tl5769857943%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5769357700%_))))
                           (let* ((_%var57946%_ _%$%hd5769757940%_)
                                  (_%parts57949%_ _%$%tl5769857943%_))
                             (_%$%K5769657936%_ _%parts57949%_ _%var57946%_)))
                         (_%$%E5769557706%_)))))
                (_%__kont9587195872%_
                 (lambda (_%$%g5756957622%_ _%$%g5757057624%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57552%_)))))
            (let ((_%__match9589395894%_
                   (lambda (_%$%e5756057647%_
                            _%$%hd5756157651%_
                            _%$%tl5756257654%_
                            _%$%e5756357657%_
                            _%$%hd5756457661%_
                            _%$%tl5756557664%_
                            _%$%e5756657667%_
                            _%$%hd5756757671%_
                            _%$%tl5756857674%_)
                     (let ((_%$%g5755857677%_ _%$%hd5756757671%_)
                           (_%$%g5755957679%_ _%$%hd5756457661%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5755957679%_)
                           (_%__kont9586995870%_
                            _%$%g5755857677%_
                            _%$%g5755957679%_)
                           (_%__kont9587195872%_
                            _%$%hd5756757671%_
                            _%$%hd5756457661%_))))))
              (if (gx#stx-pair? _%__stx9586695867%_)
                  (let ((_%$%e5756057647%_ (gx#syntax-e _%__stx9586695867%_)))
                    (let ((_%$%tl5756257654%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5756057647%_)))
                          (_%$%hd5756157651%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5756057647%_))))
                      (if (gx#stx-pair? _%$%tl5756257654%_)
                          (let ((_%$%e5756357657%_
                                 (gx#syntax-e _%$%tl5756257654%_)))
                            (let ((_%$%tl5756557664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5756357657%_)))
                                  (_%$%hd5756457661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5756357657%_))))
                              (if (gx#stx-pair? _%$%tl5756557664%_)
                                  (let ((_%$%e5756657667%_
                                         (gx#syntax-e _%$%tl5756557664%_)))
                                    (let ((_%$%tl5756857674%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5756657667%_)))
                                          (_%$%hd5756757671%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5756657667%_))))
                                      (if (gx#stx-null? _%$%tl5756857674%_)
                                          (_%__match9589395894%_
                                           _%$%e5756057647%_
                                           _%$%hd5756157651%_
                                           _%$%tl5756257654%_
                                           _%$%e5756357657%_
                                           _%$%hd5756457661%_
                                           _%$%tl5756557664%_
                                           _%$%e5756657667%_
                                           _%$%hd5756757671%_
                                           _%$%tl5756857674%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5755657585%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5755657585%_)))))
                          (let () (declare (not safe)) (_%$%g5755657585%_)))))
                  (let () (declare (not safe)) (_%$%g5755657585%_))))))))))

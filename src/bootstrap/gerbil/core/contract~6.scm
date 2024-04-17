(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g82622_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82623_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82624_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82627_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82628_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82631_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82632_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82633_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82634_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82638_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82639_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82640_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82641_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82645_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46329%_)
        (let* ((_%__stx7722477225%_ _%stx46329%_)
               (_%g4633846547%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7722477225%_))))
          (let ((_%__kont7722777228%_
                 (lambda (_%L47453%_
                          _%L47455%_
                          _%L47456%_
                          _%L47457%_
                          _%L47458%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47458%_ (cons _%L47457%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47458%_
                                                       (cons _%L47456%_
                                                             (cons _%L47455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4750147504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4750247507%_)
                  (cons _%g4750147504%_ _%g4750247507%_))
                '()
                _%L47453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7723177232%_
                 (lambda (_%L47297%_
                          _%L47299%_
                          _%L47300%_
                          _%L47301%_
                          _%L47302%_
                          _%L47303%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47303%_ (cons _%L47302%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47303%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47300%_ (cons _%L47299%_ '())))
                           (foldr (lambda (_%g4734747350%_ _%g4734847353%_)
                                    (cons _%g4734747350%_ _%g4734847353%_))
                                  '()
                                  _%L47297%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7723577236%_
                 (lambda (_%L47114%_ _%L47116%_ _%L47117%_ _%L47118%_)
                   (let ((_%meta47155%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46329%_
                             _%L47116%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47155%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47118%_
                                           (cons _%L47117%_
                                                 (cons _%L47116%_ '())))
                                     (foldr (lambda (_%g4715947162%_
                                                     _%g4716047165%_)
                                              (cons _%g4715947162%_
                                                    _%g4716047165%_))
                                            '()
                                            _%L47114%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47155%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47118%_
                                               (cons _%L47117%_
                                                     (cons _%L47116%_ '())))
                                         (foldr (lambda (_%g4716947172%_
                                                         _%g4717047175%_)
                                                  (cons _%g4716947172%_
                                                        _%g4717047175%_))
                                                '()
                                                _%L47114%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46329%_
                              _%L47116%_
                              _%meta47155%_))))))
                (_%__kont7723977240%_
                 (lambda (_%L46992%_ _%L46994%_ _%L46995%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L46995%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46994%_ '())))
                               (foldr (lambda (_%g4701847021%_ _%g4701947024%_)
                                        (cons _%g4701847021%_ _%g4701947024%_))
                                      '()
                                      _%L46992%_)))))
                (_%__kont7724377244%_
                 (lambda (_%L46850%_
                          _%L46852%_
                          _%L46853%_
                          _%L46854%_
                          _%L46855%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46855%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46854%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46855%_
                                                       (cons _%L46853%_
                                                             (cons _%L46852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4689646899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4689746902%_)
                  (cons _%g4689646899%_ _%g4689746902%_))
                '()
                _%L46850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7724777248%_
                 (lambda (_%L46708%_ _%L46710%_ _%L46711%_ _%L46712%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46712%_ _%L46711%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46710%_
                                                 (foldr (lambda (_%g4673446737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4673546740%_)
                  (cons _%g4673446737%_ _%g4673546740%_))
                '()
                _%L46708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7725177252%_
                 (lambda (_%L46604%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4662246625%_ _%g4662346628%_)
                                        (cons _%g4662246625%_ _%g4662346628%_))
                                      '()
                                      _%L46604%_))))))
            (let* ((_%__match7755777558%_
                    (lambda (_%e4652746554%_
                             _%hd4652846558%_
                             _%tl4652946561%_
                             _%e4653046564%_
                             _%hd4653146568%_
                             _%tl4653246571%_
                             _%__splice7725377254%_
                             _%target4653346574%_
                             _%tl4653546577%_)
                      (letrec ((_%loop4653646580%_
                                (lambda (_%hd4653446584%_ _%body4654046587%_)
                                  (if (gx#stx-pair? _%hd4653446584%_)
                                      (let ((_%e4653746590%_
                                             (gx#syntax-e _%hd4653446584%_)))
                                        (let ((_%lp-tl4653946597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4653746590%_)))
                                              (_%lp-hd4653846594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4653746590%_))))
                                          (_%loop4653646580%_
                                           _%lp-tl4653946597%_
                                           (cons _%lp-hd4653846594%_
                                                 _%body4654046587%_))))
                                      (let ((_%body4654146600%_
                                             (reverse _%body4654046587%_)))
                                        (_%__kont7725177252%_
                                         _%body4654146600%_))))))
                        (_%loop4653646580%_ _%target4653346574%_ '()))))
                   (_%__match7753577536%_
                    (lambda (_%e4650546638%_
                             _%hd4650646642%_
                             _%tl4650746645%_
                             _%e4650846648%_
                             _%hd4650946652%_
                             _%tl4651046655%_
                             _%e4651146658%_
                             _%hd4651246662%_
                             _%tl4651346665%_
                             _%e4651446668%_
                             _%hd4651546672%_
                             _%tl4651646675%_
                             _%__splice7724977250%_
                             _%target4651746678%_
                             _%tl4651946681%_)
                      (letrec ((_%loop4652046684%_
                                (lambda (_%hd4651846688%_ _%body4652446691%_)
                                  (if (gx#stx-pair? _%hd4651846688%_)
                                      (let ((_%e4652146694%_
                                             (gx#syntax-e _%hd4651846688%_)))
                                        (let ((_%lp-tl4652346701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4652146694%_)))
                                              (_%lp-hd4652246698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4652146694%_))))
                                          (_%loop4652046684%_
                                           _%lp-tl4652346701%_
                                           (cons _%lp-hd4652246698%_
                                                 _%body4652446691%_))))
                                      (let ((_%body4652546704%_
                                             (reverse _%body4652446691%_)))
                                        (let ((_%L46708%_ _%body4652546704%_)
                                              (_%L46710%_ _%tl4651346665%_)
                                              (_%L46711%_ _%tl4651646675%_)
                                              (_%L46712%_ _%hd4651546672%_))
                                          (if (gx#identifier? _%L46712%_)
                                              (_%__kont7724777248%_
                                               _%L46708%_
                                               _%L46710%_
                                               _%L46711%_
                                               _%L46712%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_)))))))))
                        (_%loop4652046684%_ _%target4651746678%_ '()))))
                   (_%__match7752177522%_
                    (lambda (_%e4650546638%_
                             _%hd4650646642%_
                             _%tl4650746645%_
                             _%e4650846648%_
                             _%hd4650946652%_
                             _%tl4651046655%_
                             _%e4651146658%_
                             _%hd4651246662%_
                             _%tl4651346665%_)
                      (if (gx#stx-pair? _%hd4651246662%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4651246662%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (if (gx#stx-pair/null? _%tl4651046655%_)
                                  (let ((_%__splice7724977250%_
                                         (gx#syntax-split-splice
                                          _%tl4651046655%_
                                          '0)))
                                    (let ((_%tl4651946681%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '1)))
                                          (_%target4651746678%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651946681%_)
                                          (_%__match7753577536%_
                                           _%e4650546638%_
                                           _%hd4650646642%_
                                           _%tl4650746645%_
                                           _%e4650846648%_
                                           _%hd4650946652%_
                                           _%tl4651046655%_
                                           _%e4651146658%_
                                           _%hd4651246662%_
                                           _%tl4651346665%_
                                           _%e4651446668%_
                                           _%hd4651546672%_
                                           _%tl4651646675%_
                                           _%__splice7724977250%_
                                           _%target4651746678%_
                                           _%tl4651946681%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                   (_%__match7750377504%_
                    (lambda (_%e4647146750%_
                             _%hd4647246754%_
                             _%tl4647346757%_
                             _%e4647446760%_
                             _%hd4647546764%_
                             _%tl4647646767%_
                             _%e4647746770%_
                             _%hd4647846774%_
                             _%tl4647946777%_
                             _%e4648046780%_
                             _%hd4648146784%_
                             _%tl4648246787%_
                             _%e4648346790%_
                             _%hd4648446794%_
                             _%tl4648546797%_
                             _%e4648646800%_
                             _%hd4648746804%_
                             _%tl4648846807%_
                             _%e4648946810%_
                             _%hd4649046814%_
                             _%tl4649146817%_
                             _%__splice7724577246%_
                             _%target4649246820%_
                             _%tl4649446823%_)
                      (letrec ((_%loop4649546826%_
                                (lambda (_%hd4649346830%_ _%body4649946833%_)
                                  (if (gx#stx-pair? _%hd4649346830%_)
                                      (let ((_%e4649646836%_
                                             (gx#syntax-e _%hd4649346830%_)))
                                        (let ((_%lp-tl4649846843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649646836%_)))
                                              (_%lp-hd4649746840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649646836%_))))
                                          (_%loop4649546826%_
                                           _%lp-tl4649846843%_
                                           (cons _%lp-hd4649746840%_
                                                 _%body4649946833%_))))
                                      (let ((_%body4650046846%_
                                             (reverse _%body4649946833%_)))
                                        (let ((_%L46850%_ _%body4650046846%_)
                                              (_%L46852%_ _%hd4649046814%_)
                                              (_%L46853%_ _%hd4648746804%_)
                                              (_%L46854%_ _%hd4648446794%_)
                                              (_%L46855%_ _%hd4647846774%_))
                                          (if (and (gx#identifier? _%L46855%_)
                                                   (gx#identifier? _%L46852%_)
                                                   (gx#identifier? _%L46853%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46853%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46853%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46853%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46853%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7724377244%_
                                               _%L46850%_
                                               _%L46852%_
                                               _%L46853%_
                                               _%L46854%_
                                               _%L46855%_)
                                              (_%__match7752177522%_
                                               _%e4647146750%_
                                               _%hd4647246754%_
                                               _%tl4647346757%_
                                               _%e4647446760%_
                                               _%hd4647546764%_
                                               _%tl4647646767%_
                                               _%e4647746770%_
                                               _%hd4647846774%_
                                               _%tl4647946777%_))))))))
                        (_%loop4649546826%_ _%target4649246820%_ '()))))
                   (_%__match7744777448%_
                    (lambda (_%e4644246912%_
                             _%hd4644346916%_
                             _%tl4644446919%_
                             _%e4644546922%_
                             _%hd4644646926%_
                             _%tl4644746929%_
                             _%e4644846932%_
                             _%hd4644946936%_
                             _%tl4645046939%_
                             _%e4645146942%_
                             _%hd4645246946%_
                             _%tl4645346949%_
                             _%e4645446952%_
                             _%hd4645546956%_
                             _%tl4645646959%_
                             _%__splice7724177242%_
                             _%target4645746962%_
                             _%tl4645946965%_)
                      (letrec ((_%loop4646046968%_
                                (lambda (_%hd4645846972%_ _%body4646446975%_)
                                  (if (gx#stx-pair? _%hd4645846972%_)
                                      (let ((_%e4646146978%_
                                             (gx#syntax-e _%hd4645846972%_)))
                                        (let ((_%lp-tl4646346985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646146978%_)))
                                              (_%lp-hd4646246982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646146978%_))))
                                          (_%loop4646046968%_
                                           _%lp-tl4646346985%_
                                           (cons _%lp-hd4646246982%_
                                                 _%body4646446975%_))))
                                      (let ((_%body4646546988%_
                                             (reverse _%body4646446975%_)))
                                        (let ((_%L46992%_ _%body4646546988%_)
                                              (_%L46994%_ _%hd4645546956%_)
                                              (_%L46995%_ _%hd4644946936%_))
                                          (if (gx#identifier? _%L46995%_)
                                              (_%__kont7723977240%_
                                               _%L46992%_
                                               _%L46994%_
                                               _%L46995%_)
                                              (_%__match7752177522%_
                                               _%e4644246912%_
                                               _%hd4644346916%_
                                               _%tl4644446919%_
                                               _%e4644546922%_
                                               _%hd4644646926%_
                                               _%tl4644746929%_
                                               _%e4644846932%_
                                               _%hd4644946936%_
                                               _%tl4645046939%_))))))))
                        (_%loop4646046968%_ _%target4645746962%_ '()))))
                   (_%__match7742777428%_
                    (lambda (_%e4644246912%_
                             _%hd4644346916%_
                             _%tl4644446919%_
                             _%e4644546922%_
                             _%hd4644646926%_
                             _%tl4644746929%_
                             _%e4644846932%_
                             _%hd4644946936%_
                             _%tl4645046939%_
                             _%e4645146942%_
                             _%hd4645246946%_
                             _%tl4645346949%_)
                      (if (gx#identifier? _%hd4645246946%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82622_|
                               _%hd4645246946%_)
                              (if (gx#stx-pair? _%tl4645346949%_)
                                  (let ((_%e4645446952%_
                                         (gx#syntax-e _%tl4645346949%_)))
                                    (let ((_%tl4645646959%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4645446952%_)))
                                          (_%hd4645546956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4645446952%_))))
                                      (if (gx#stx-null? _%tl4645646959%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4644746929%_)
                                              (let ((_%__splice7724177242%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644746929%_
                                                      '0)))
                                                (let ((_%tl4645946965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724177242%_
                                                          '1)))
                                                      (_%target4645746962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724177242%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4645946965%_)
                                                      (_%__match7744777448%_
                                                       _%e4644246912%_
                                                       _%hd4644346916%_
                                                       _%tl4644446919%_
                                                       _%e4644546922%_
                                                       _%hd4644646926%_
                                                       _%tl4644746929%_
                                                       _%e4644846932%_
                                                       _%hd4644946936%_
                                                       _%tl4645046939%_
                                                       _%e4645146942%_
                                                       _%hd4645246946%_
                                                       _%tl4645346949%_
                                                       _%e4645446952%_
                                                       _%hd4645546956%_
                                                       _%tl4645646959%_
                                                       _%__splice7724177242%_
                                                       _%target4645746962%_
                                                       _%tl4645946965%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4644946936%_)
                                                          (let ((_%e4651446668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4644946936%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4644946936%_)
                                                  (let ((_%e4651446668%_
                                                         (gx#syntax-e
                                                          _%hd4644946936%_)))
                                                    (let ((_%tl4651646675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651446668%_)))
                                                          (_%hd4651546672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651446668%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4633846547%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))
                                          (if (gx#stx-pair? _%tl4645646959%_)
                                              (let ((_%e4648646800%_
                                                     (gx#syntax-e
                                                      _%tl4645646959%_)))
                                                (let ((_%tl4648846807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648646800%_)))
                                                      (_%hd4648746804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648646800%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4648846807%_)
                                                      (let ((_%e4648946810%_
                                                             (gx#syntax-e
                                                              _%tl4648846807%_)))
                                                        (let ((_%tl4649146817%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4648946810%_)))
                      (_%hd4649046814%_
                       (let () (declare (not safe)) (##car _%e4648946810%_))))
                  (if (gx#stx-null? _%tl4649146817%_)
                      (if (gx#stx-pair/null? _%tl4644746929%_)
                          (let ((_%__splice7724577246%_
                                 (gx#syntax-split-splice _%tl4644746929%_ '0)))
                            (let ((_%tl4649446823%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724577246%_ '1)))
                                  (_%target4649246820%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724577246%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649446823%_)
                                  (_%__match7750377504%_
                                   _%e4644246912%_
                                   _%hd4644346916%_
                                   _%tl4644446919%_
                                   _%e4644546922%_
                                   _%hd4644646926%_
                                   _%tl4644746929%_
                                   _%e4644846932%_
                                   _%hd4644946936%_
                                   _%tl4645046939%_
                                   _%e4645146942%_
                                   _%hd4645246946%_
                                   _%tl4645346949%_
                                   _%e4645446952%_
                                   _%hd4645546956%_
                                   _%tl4645646959%_
                                   _%e4648646800%_
                                   _%hd4648746804%_
                                   _%tl4648846807%_
                                   _%e4648946810%_
                                   _%hd4649046814%_
                                   _%tl4649146817%_
                                   _%__splice7724577246%_
                                   _%target4649246820%_
                                   _%tl4649446823%_)
                                  (if (gx#stx-pair? _%hd4644946936%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4644946936%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))
                          (if (gx#stx-pair? _%hd4644946936%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4644946936%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                      (if (gx#stx-pair? _%hd4644946936%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4644946936%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (if (gx#stx-pair/null? _%tl4644746929%_)
                                  (let ((_%__splice7724977250%_
                                         (gx#syntax-split-splice
                                          _%tl4644746929%_
                                          '0)))
                                    (let ((_%tl4651946681%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '1)))
                                          (_%target4651746678%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651946681%_)
                                          (_%__match7753577536%_
                                           _%e4644246912%_
                                           _%hd4644346916%_
                                           _%tl4644446919%_
                                           _%e4644546922%_
                                           _%hd4644646926%_
                                           _%tl4644746929%_
                                           _%e4644846932%_
                                           _%hd4644946936%_
                                           _%tl4645046939%_
                                           _%e4651446668%_
                                           _%hd4651546672%_
                                           _%tl4651646675%_
                                           _%__splice7724977250%_
                                           _%target4651746678%_
                                           _%tl4651946681%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_))))))
              (if (gx#stx-pair? _%hd4644946936%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4644946936%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4644746929%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4644746929%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4644246912%_
                                   _%hd4644346916%_
                                   _%tl4644446919%_
                                   _%e4644546922%_
                                   _%hd4644646926%_
                                   _%tl4644746929%_
                                   _%e4644846932%_
                                   _%hd4644946936%_
                                   _%tl4645046939%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4644946936%_)
                                                  (let ((_%e4651446668%_
                                                         (gx#syntax-e
                                                          _%hd4644946936%_)))
                                                    (let ((_%tl4651646675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651446668%_)))
                                                          (_%hd4651546672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651446668%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644746929%_)
                                                          (let ((_%__splice7724977250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644746929%_ '0)))
                    (let ((_%tl4651946681%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '1)))
                          (_%target4651746678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '0))))
                      (if (gx#stx-null? _%tl4651946681%_)
                          (_%__match7753577536%_
                           _%e4644246912%_
                           _%hd4644346916%_
                           _%tl4644446919%_
                           _%e4644546922%_
                           _%hd4644646926%_
                           _%tl4644746929%_
                           _%e4644846932%_
                           _%hd4644946936%_
                           _%tl4645046939%_
                           _%e4651446668%_
                           _%hd4651546672%_
                           _%tl4651646675%_
                           _%__splice7724977250%_
                           _%target4651746678%_
                           _%tl4651946681%_)
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))))
                                  (if (gx#stx-pair? _%hd4644946936%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4644946936%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4644746929%_)
                                              (let ((_%__splice7724977250%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644746929%_
                                                      '0)))
                                                (let ((_%tl4651946681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '1)))
                                                      (_%target4651746678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4651946681%_)
                                                      (_%__match7753577536%_
                                                       _%e4644246912%_
                                                       _%hd4644346916%_
                                                       _%tl4644446919%_
                                                       _%e4644546922%_
                                                       _%hd4644646926%_
                                                       _%tl4644746929%_
                                                       _%e4644846932%_
                                                       _%hd4644946936%_
                                                       _%tl4645046939%_
                                                       _%e4651446668%_
                                                       _%hd4651546672%_
                                                       _%tl4651646675%_
                                                       _%__splice7724977250%_
                                                       _%target4651746678%_
                                                       _%tl4651946681%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4633846547%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                              (if (gx#stx-pair? _%hd4644946936%_)
                                  (let ((_%e4651446668%_
                                         (gx#syntax-e _%hd4644946936%_)))
                                    (let ((_%tl4651646675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651446668%_)))
                                          (_%hd4651546672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651446668%_))))
                                      (if (gx#stx-pair/null? _%tl4644746929%_)
                                          (let ((_%__splice7724977250%_
                                                 (gx#syntax-split-splice
                                                  _%tl4644746929%_
                                                  '0)))
                                            (let ((_%tl4651946681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7724977250%_
                                                      '1)))
                                                  (_%target4651746678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7724977250%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4651946681%_)
                                                  (_%__match7753577536%_
                                                   _%e4644246912%_
                                                   _%hd4644346916%_
                                                   _%tl4644446919%_
                                                   _%e4644546922%_
                                                   _%hd4644646926%_
                                                   _%tl4644746929%_
                                                   _%e4644846932%_
                                                   _%hd4644946936%_
                                                   _%tl4645046939%_
                                                   _%e4651446668%_
                                                   _%hd4651546672%_
                                                   _%tl4651646675%_
                                                   _%__splice7724977250%_
                                                   _%target4651746678%_
                                                   _%tl4651946681%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                          (if (gx#stx-pair? _%hd4644946936%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4644946936%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (if (gx#stx-pair/null? _%tl4644746929%_)
                                      (let ((_%__splice7724977250%_
                                             (gx#syntax-split-splice
                                              _%tl4644746929%_
                                              '0)))
                                        (let ((_%tl4651946681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7724977250%_
                                                  '1)))
                                              (_%target4651746678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7724977250%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4651946681%_)
                                              (_%__match7753577536%_
                                               _%e4644246912%_
                                               _%hd4644346916%_
                                               _%tl4644446919%_
                                               _%e4644546922%_
                                               _%hd4644646926%_
                                               _%tl4644746929%_
                                               _%e4644846932%_
                                               _%hd4644946936%_
                                               _%tl4645046939%_
                                               _%e4651446668%_
                                               _%hd4651546672%_
                                               _%tl4651646675%_
                                               _%__splice7724977250%_
                                               _%target4651746678%_
                                               _%tl4651946681%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_))))))
                   (_%__match7740377404%_
                    (lambda (_%e4641547034%_
                             _%hd4641647038%_
                             _%tl4641747041%_
                             _%e4641847044%_
                             _%hd4641947048%_
                             _%tl4642047051%_
                             _%e4642147054%_
                             _%hd4642247058%_
                             _%tl4642347061%_
                             _%e4642447064%_
                             _%hd4642547068%_
                             _%tl4642647071%_
                             _%e4642747074%_
                             _%hd4642847078%_
                             _%tl4642947081%_
                             _%__splice7723777238%_
                             _%target4643047084%_
                             _%tl4643247087%_)
                      (letrec ((_%loop4643347090%_
                                (lambda (_%hd4643147094%_ _%body4643747097%_)
                                  (if (gx#stx-pair? _%hd4643147094%_)
                                      (let ((_%e4643447100%_
                                             (gx#syntax-e _%hd4643147094%_)))
                                        (let ((_%lp-tl4643647107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643447100%_)))
                                              (_%lp-hd4643547104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643447100%_))))
                                          (_%loop4643347090%_
                                           _%lp-tl4643647107%_
                                           (cons _%lp-hd4643547104%_
                                                 _%body4643747097%_))))
                                      (let ((_%body4643847110%_
                                             (reverse _%body4643747097%_)))
                                        (let ((_%L47114%_ _%body4643847110%_)
                                              (_%L47116%_ _%hd4642847078%_)
                                              (_%L47117%_ _%hd4642547068%_)
                                              (_%L47118%_ _%hd4642247058%_))
                                          (if (and (gx#identifier? _%L47118%_)
                                                   (gx#identifier? _%L47116%_)
                                                   (gx#identifier? _%L47117%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47117%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47117%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47117%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47117%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7723577236%_
                                               _%L47114%_
                                               _%L47116%_
                                               _%L47117%_
                                               _%L47118%_)
                                              (_%__match7742777428%_
                                               _%e4641547034%_
                                               _%hd4641647038%_
                                               _%tl4641747041%_
                                               _%e4641847044%_
                                               _%hd4641947048%_
                                               _%tl4642047051%_
                                               _%e4642147054%_
                                               _%hd4642247058%_
                                               _%tl4642347061%_
                                               _%e4642447064%_
                                               _%hd4642547068%_
                                               _%tl4642647071%_))))))))
                        (_%loop4643347090%_ _%target4643047084%_ '()))))
                   (_%__match7736377364%_
                    (lambda (_%e4637847187%_
                             _%hd4637947191%_
                             _%tl4638047194%_
                             _%e4638147197%_
                             _%hd4638247201%_
                             _%tl4638347204%_
                             _%e4638447207%_
                             _%hd4638547211%_
                             _%tl4638647214%_
                             _%e4638747217%_
                             _%hd4638847221%_
                             _%tl4638947224%_
                             _%e4639047227%_
                             _%hd4639147231%_
                             _%tl4639247234%_
                             _%e4639347237%_
                             _%hd4639447241%_
                             _%tl4639547244%_
                             _%e4639647247%_
                             _%hd4639747251%_
                             _%tl4639847254%_
                             _%e4639947257%_
                             _%hd4640047261%_
                             _%tl4640147264%_
                             _%__splice7723377234%_
                             _%target4640247267%_
                             _%tl4640447270%_)
                      (letrec ((_%loop4640547273%_
                                (lambda (_%hd4640347277%_ _%body4640947280%_)
                                  (if (gx#stx-pair? _%hd4640347277%_)
                                      (let ((_%e4640647283%_
                                             (gx#syntax-e _%hd4640347277%_)))
                                        (let ((_%lp-tl4640847290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4640647283%_)))
                                              (_%lp-hd4640747287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4640647283%_))))
                                          (_%loop4640547273%_
                                           _%lp-tl4640847290%_
                                           (cons _%lp-hd4640747287%_
                                                 _%body4640947280%_))))
                                      (let ((_%body4641047293%_
                                             (reverse _%body4640947280%_)))
                                        (let ((_%L47297%_ _%body4641047293%_)
                                              (_%L47299%_ _%hd4640047261%_)
                                              (_%L47300%_ _%hd4639747251%_)
                                              (_%L47301%_ _%hd4639447241%_)
                                              (_%L47302%_ _%hd4638847221%_)
                                              (_%L47303%_ _%hd4638547211%_))
                                          (if (and (gx#identifier? _%L47303%_)
                                                   (gx#identifier? _%L47299%_)
                                                   (gx#identifier? _%L47300%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47300%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47300%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47300%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47300%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7723177232%_
                                               _%L47297%_
                                               _%L47299%_
                                               _%L47300%_
                                               _%L47301%_
                                               _%L47302%_
                                               _%L47303%_)
                                              (_%__match7742777428%_
                                               _%e4637847187%_
                                               _%hd4637947191%_
                                               _%tl4638047194%_
                                               _%e4638147197%_
                                               _%hd4638247201%_
                                               _%tl4638347204%_
                                               _%e4638447207%_
                                               _%hd4638547211%_
                                               _%tl4638647214%_
                                               _%e4638747217%_
                                               _%hd4638847221%_
                                               _%tl4638947224%_))))))))
                        (_%loop4640547273%_ _%target4640247267%_ '()))))
                   (_%__match7733177332%_
                    (lambda (_%e4637847187%_
                             _%hd4637947191%_
                             _%tl4638047194%_
                             _%e4638147197%_
                             _%hd4638247201%_
                             _%tl4638347204%_
                             _%e4638447207%_
                             _%hd4638547211%_
                             _%tl4638647214%_
                             _%e4638747217%_
                             _%hd4638847221%_
                             _%tl4638947224%_
                             _%e4639047227%_
                             _%hd4639147231%_
                             _%tl4639247234%_)
                      (if (gx#identifier? _%hd4639147231%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82623_|
                               _%hd4639147231%_)
                              (if (gx#stx-pair? _%tl4639247234%_)
                                  (let ((_%e4639347237%_
                                         (gx#syntax-e _%tl4639247234%_)))
                                    (let ((_%tl4639547244%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4639347237%_)))
                                          (_%hd4639447241%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4639347237%_))))
                                      (if (gx#stx-pair? _%tl4639547244%_)
                                          (let ((_%e4639647247%_
                                                 (gx#syntax-e
                                                  _%tl4639547244%_)))
                                            (let ((_%tl4639847254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4639647247%_)))
                                                  (_%hd4639747251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4639647247%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4639847254%_)
                                                  (let ((_%e4639947257%_
                                                         (gx#syntax-e
                                                          _%tl4639847254%_)))
                                                    (let ((_%tl4640147264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4639947257%_)))
                                                          (_%hd4640047261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4639947257%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4640147264%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4638347204%_)
                                                              (let ((_%__splice7723377234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4638347204%_ '0)))
                        (let ((_%tl4640447270%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7723377234%_ '1)))
                              (_%target4640247267%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7723377234%_ '0))))
                          (if (gx#stx-null? _%tl4640447270%_)
                              (_%__match7736377364%_
                               _%e4637847187%_
                               _%hd4637947191%_
                               _%tl4638047194%_
                               _%e4638147197%_
                               _%hd4638247201%_
                               _%tl4638347204%_
                               _%e4638447207%_
                               _%hd4638547211%_
                               _%tl4638647214%_
                               _%e4638747217%_
                               _%hd4638847221%_
                               _%tl4638947224%_
                               _%e4639047227%_
                               _%hd4639147231%_
                               _%tl4639247234%_
                               _%e4639347237%_
                               _%hd4639447241%_
                               _%tl4639547244%_
                               _%e4639647247%_
                               _%hd4639747251%_
                               _%tl4639847254%_
                               _%e4639947257%_
                               _%hd4640047261%_
                               _%tl4640147264%_
                               _%__splice7723377234%_
                               _%target4640247267%_
                               _%tl4640447270%_)
                              (if (gx#stx-pair? _%hd4638547211%_)
                                  (let ((_%e4651446668%_
                                         (gx#syntax-e _%hd4638547211%_)))
                                    (let ((_%tl4651646675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651446668%_)))
                                          (_%hd4651546672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651446668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))))
                      (if (gx#stx-pair? _%hd4638547211%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4638547211%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                  (if (gx#stx-pair? _%hd4638547211%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4638547211%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (if (gx#stx-pair/null? _%tl4638347204%_)
                              (let ((_%__splice7724977250%_
                                     (gx#syntax-split-splice
                                      _%tl4638347204%_
                                      '0)))
                                (let ((_%tl4651946681%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '1)))
                                      (_%target4651746678%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4651946681%_)
                                      (_%__match7753577536%_
                                       _%e4637847187%_
                                       _%hd4637947191%_
                                       _%tl4638047194%_
                                       _%e4638147197%_
                                       _%hd4638247201%_
                                       _%tl4638347204%_
                                       _%e4638447207%_
                                       _%hd4638547211%_
                                       _%tl4638647214%_
                                       _%e4651446668%_
                                       _%hd4651546672%_
                                       _%tl4651646675%_
                                       _%__splice7724977250%_
                                       _%target4651746678%_
                                       _%tl4651946681%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4638847221%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82622_|
                                                           _%hd4638847221%_)
                                                          (if (gx#stx-null?
                                                               _%tl4639847254%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4638347204%_)
                          (let ((_%__splice7724577246%_
                                 (gx#syntax-split-splice _%tl4638347204%_ '0)))
                            (let ((_%tl4649446823%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724577246%_ '1)))
                                  (_%target4649246820%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724577246%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649446823%_)
                                  (_%__match7750377504%_
                                   _%e4637847187%_
                                   _%hd4637947191%_
                                   _%tl4638047194%_
                                   _%e4638147197%_
                                   _%hd4638247201%_
                                   _%tl4638347204%_
                                   _%e4638447207%_
                                   _%hd4638547211%_
                                   _%tl4638647214%_
                                   _%e4638747217%_
                                   _%hd4638847221%_
                                   _%tl4638947224%_
                                   _%e4639047227%_
                                   _%hd4639147231%_
                                   _%tl4639247234%_
                                   _%e4639347237%_
                                   _%hd4639447241%_
                                   _%tl4639547244%_
                                   _%e4639647247%_
                                   _%hd4639747251%_
                                   _%tl4639847254%_
                                   _%__splice7724577246%_
                                   _%target4649246820%_
                                   _%tl4649446823%_)
                                  (if (gx#stx-pair? _%hd4638547211%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4638547211%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))
                          (if (gx#stx-pair? _%hd4638547211%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4638547211%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                      (if (gx#stx-pair? _%hd4638547211%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4638547211%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (if (gx#stx-pair/null? _%tl4638347204%_)
                                  (let ((_%__splice7724977250%_
                                         (gx#syntax-split-splice
                                          _%tl4638347204%_
                                          '0)))
                                    (let ((_%tl4651946681%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '1)))
                                          (_%target4651746678%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651946681%_)
                                          (_%__match7753577536%_
                                           _%e4637847187%_
                                           _%hd4637947191%_
                                           _%tl4638047194%_
                                           _%e4638147197%_
                                           _%hd4638247201%_
                                           _%tl4638347204%_
                                           _%e4638447207%_
                                           _%hd4638547211%_
                                           _%tl4638647214%_
                                           _%e4651446668%_
                                           _%hd4651546672%_
                                           _%tl4651646675%_
                                           _%__splice7724977250%_
                                           _%target4651746678%_
                                           _%tl4651946681%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                  (if (gx#stx-pair? _%hd4638547211%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4638547211%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (if (gx#stx-pair/null? _%tl4638347204%_)
                              (let ((_%__splice7724977250%_
                                     (gx#syntax-split-splice
                                      _%tl4638347204%_
                                      '0)))
                                (let ((_%tl4651946681%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '1)))
                                      (_%target4651746678%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4651946681%_)
                                      (_%__match7753577536%_
                                       _%e4637847187%_
                                       _%hd4637947191%_
                                       _%tl4638047194%_
                                       _%e4638147197%_
                                       _%hd4638247201%_
                                       _%tl4638347204%_
                                       _%e4638447207%_
                                       _%hd4638547211%_
                                       _%tl4638647214%_
                                       _%e4651446668%_
                                       _%hd4651546672%_
                                       _%tl4651646675%_
                                       _%__splice7724977250%_
                                       _%target4651746678%_
                                       _%tl4651946681%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
              (if (gx#stx-pair? _%hd4638547211%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4638547211%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4638347204%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4638347204%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4637847187%_
                                   _%hd4637947191%_
                                   _%tl4638047194%_
                                   _%e4638147197%_
                                   _%hd4638247201%_
                                   _%tl4638347204%_
                                   _%e4638447207%_
                                   _%hd4638547211%_
                                   _%tl4638647214%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638547211%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4638547211%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638347204%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638347204%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4637847187%_
                       _%hd4637947191%_
                       _%tl4638047194%_
                       _%e4638147197%_
                       _%hd4638247201%_
                       _%tl4638347204%_
                       _%e4638447207%_
                       _%hd4638547211%_
                       _%tl4638647214%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))))
                                  (if (gx#stx-null? _%tl4639247234%_)
                                      (if (gx#stx-pair/null? _%tl4638347204%_)
                                          (let ((_%__splice7723777238%_
                                                 (gx#syntax-split-splice
                                                  _%tl4638347204%_
                                                  '0)))
                                            (let ((_%tl4643247087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7723777238%_
                                                      '1)))
                                                  (_%target4643047084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7723777238%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4643247087%_)
                                                  (_%__match7740377404%_
                                                   _%e4637847187%_
                                                   _%hd4637947191%_
                                                   _%tl4638047194%_
                                                   _%e4638147197%_
                                                   _%hd4638247201%_
                                                   _%tl4638347204%_
                                                   _%e4638447207%_
                                                   _%hd4638547211%_
                                                   _%tl4638647214%_
                                                   _%e4638747217%_
                                                   _%hd4638847221%_
                                                   _%tl4638947224%_
                                                   _%e4639047227%_
                                                   _%hd4639147231%_
                                                   _%tl4639247234%_
                                                   _%__splice7723777238%_
                                                   _%target4643047084%_
                                                   _%tl4643247087%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4638547211%_)
                                                      (let ((_%e4651446668%_
                                                             (gx#syntax-e
                                                              _%hd4638547211%_)))
                                                        (let ((_%tl4651646675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651446668%_)))
                      (_%hd4651546672%_
                       (let () (declare (not safe)) (##car _%e4651446668%_))))
                  (let () (declare (not safe)) (_%g4633846547%_))))
              (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638547211%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4638547211%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                      (if (gx#stx-pair? _%hd4638547211%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4638547211%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638347204%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638347204%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4637847187%_
                                                           _%hd4637947191%_
                                                           _%tl4638047194%_
                                                           _%e4638147197%_
                                                           _%hd4638247201%_
                                                           _%tl4638347204%_
                                                           _%e4638447207%_
                                                           _%hd4638547211%_
                                                           _%tl4638647214%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                              (if (gx#stx-null? _%tl4639247234%_)
                                  (if (gx#stx-pair/null? _%tl4638347204%_)
                                      (let ((_%__splice7723777238%_
                                             (gx#syntax-split-splice
                                              _%tl4638347204%_
                                              '0)))
                                        (let ((_%tl4643247087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7723777238%_
                                                  '1)))
                                              (_%target4643047084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7723777238%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4643247087%_)
                                              (_%__match7740377404%_
                                               _%e4637847187%_
                                               _%hd4637947191%_
                                               _%tl4638047194%_
                                               _%e4638147197%_
                                               _%hd4638247201%_
                                               _%tl4638347204%_
                                               _%e4638447207%_
                                               _%hd4638547211%_
                                               _%tl4638647214%_
                                               _%e4638747217%_
                                               _%hd4638847221%_
                                               _%tl4638947224%_
                                               _%e4639047227%_
                                               _%hd4639147231%_
                                               _%tl4639247234%_
                                               _%__splice7723777238%_
                                               _%target4643047084%_
                                               _%tl4643247087%_)
                                              (if (gx#stx-pair?
                                                   _%hd4638547211%_)
                                                  (let ((_%e4651446668%_
                                                         (gx#syntax-e
                                                          _%hd4638547211%_)))
                                                    (let ((_%tl4651646675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651446668%_)))
                                                          (_%hd4651546672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651446668%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4633846547%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))))
                                      (if (gx#stx-pair? _%hd4638547211%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4638547211%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                  (if (gx#identifier? _%hd4638847221%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82622_|
                                           _%hd4638847221%_)
                                          (if (gx#stx-pair? _%tl4639247234%_)
                                              (let ((_%e4648646800%_
                                                     (gx#syntax-e
                                                      _%tl4639247234%_)))
                                                (let ((_%tl4648846807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648646800%_)))
                                                      (_%hd4648746804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648646800%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4648846807%_)
                                                      (let ((_%e4648946810%_
                                                             (gx#syntax-e
                                                              _%tl4648846807%_)))
                                                        (let ((_%tl4649146817%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4648946810%_)))
                      (_%hd4649046814%_
                       (let () (declare (not safe)) (##car _%e4648946810%_))))
                  (if (gx#stx-null? _%tl4649146817%_)
                      (if (gx#stx-pair/null? _%tl4638347204%_)
                          (let ((_%__splice7724577246%_
                                 (gx#syntax-split-splice _%tl4638347204%_ '0)))
                            (let ((_%tl4649446823%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724577246%_ '1)))
                                  (_%target4649246820%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724577246%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649446823%_)
                                  (_%__match7750377504%_
                                   _%e4637847187%_
                                   _%hd4637947191%_
                                   _%tl4638047194%_
                                   _%e4638147197%_
                                   _%hd4638247201%_
                                   _%tl4638347204%_
                                   _%e4638447207%_
                                   _%hd4638547211%_
                                   _%tl4638647214%_
                                   _%e4638747217%_
                                   _%hd4638847221%_
                                   _%tl4638947224%_
                                   _%e4639047227%_
                                   _%hd4639147231%_
                                   _%tl4639247234%_
                                   _%e4648646800%_
                                   _%hd4648746804%_
                                   _%tl4648846807%_
                                   _%e4648946810%_
                                   _%hd4649046814%_
                                   _%tl4649146817%_
                                   _%__splice7724577246%_
                                   _%target4649246820%_
                                   _%tl4649446823%_)
                                  (if (gx#stx-pair? _%hd4638547211%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4638547211%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))
                          (if (gx#stx-pair? _%hd4638547211%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4638547211%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                      (if (gx#stx-pair? _%hd4638547211%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4638547211%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (if (gx#stx-pair/null? _%tl4638347204%_)
                                  (let ((_%__splice7724977250%_
                                         (gx#syntax-split-splice
                                          _%tl4638347204%_
                                          '0)))
                                    (let ((_%tl4651946681%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '1)))
                                          (_%target4651746678%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651946681%_)
                                          (_%__match7753577536%_
                                           _%e4637847187%_
                                           _%hd4637947191%_
                                           _%tl4638047194%_
                                           _%e4638147197%_
                                           _%hd4638247201%_
                                           _%tl4638347204%_
                                           _%e4638447207%_
                                           _%hd4638547211%_
                                           _%tl4638647214%_
                                           _%e4651446668%_
                                           _%hd4651546672%_
                                           _%tl4651646675%_
                                           _%__splice7724977250%_
                                           _%target4651746678%_
                                           _%tl4651946681%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_))))))
              (if (gx#stx-pair? _%hd4638547211%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4638547211%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4638347204%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4638347204%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4637847187%_
                                   _%hd4637947191%_
                                   _%tl4638047194%_
                                   _%e4638147197%_
                                   _%hd4638247201%_
                                   _%tl4638347204%_
                                   _%e4638447207%_
                                   _%hd4638547211%_
                                   _%tl4638647214%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4638547211%_)
                                                  (let ((_%e4651446668%_
                                                         (gx#syntax-e
                                                          _%hd4638547211%_)))
                                                    (let ((_%tl4651646675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651446668%_)))
                                                          (_%hd4651546672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651446668%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4638347204%_)
                                                          (let ((_%__splice7724977250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4638347204%_ '0)))
                    (let ((_%tl4651946681%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '1)))
                          (_%target4651746678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '0))))
                      (if (gx#stx-null? _%tl4651946681%_)
                          (_%__match7753577536%_
                           _%e4637847187%_
                           _%hd4637947191%_
                           _%tl4638047194%_
                           _%e4638147197%_
                           _%hd4638247201%_
                           _%tl4638347204%_
                           _%e4638447207%_
                           _%hd4638547211%_
                           _%tl4638647214%_
                           _%e4651446668%_
                           _%hd4651546672%_
                           _%tl4651646675%_
                           _%__splice7724977250%_
                           _%target4651746678%_
                           _%tl4651946681%_)
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))
                                          (if (gx#stx-pair? _%hd4638547211%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4638547211%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638347204%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638347204%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4637847187%_
                       _%hd4637947191%_
                       _%tl4638047194%_
                       _%e4638147197%_
                       _%hd4638247201%_
                       _%tl4638347204%_
                       _%e4638447207%_
                       _%hd4638547211%_
                       _%tl4638647214%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                      (if (gx#stx-pair? _%hd4638547211%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4638547211%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638347204%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638347204%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4637847187%_
                                                           _%hd4637947191%_
                                                           _%tl4638047194%_
                                                           _%e4638147197%_
                                                           _%hd4638247201%_
                                                           _%tl4638347204%_
                                                           _%e4638447207%_
                                                           _%hd4638547211%_
                                                           _%tl4638647214%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))))
                          (if (gx#stx-null? _%tl4639247234%_)
                              (if (gx#stx-pair/null? _%tl4638347204%_)
                                  (let ((_%__splice7723777238%_
                                         (gx#syntax-split-splice
                                          _%tl4638347204%_
                                          '0)))
                                    (let ((_%tl4643247087%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7723777238%_
                                              '1)))
                                          (_%target4643047084%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7723777238%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4643247087%_)
                                          (_%__match7740377404%_
                                           _%e4637847187%_
                                           _%hd4637947191%_
                                           _%tl4638047194%_
                                           _%e4638147197%_
                                           _%hd4638247201%_
                                           _%tl4638347204%_
                                           _%e4638447207%_
                                           _%hd4638547211%_
                                           _%tl4638647214%_
                                           _%e4638747217%_
                                           _%hd4638847221%_
                                           _%tl4638947224%_
                                           _%e4639047227%_
                                           _%hd4639147231%_
                                           _%tl4639247234%_
                                           _%__splice7723777238%_
                                           _%target4643047084%_
                                           _%tl4643247087%_)
                                          (if (gx#stx-pair? _%hd4638547211%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4638547211%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))))
                                  (if (gx#stx-pair? _%hd4638547211%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4638547211%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                              (if (gx#identifier? _%hd4638847221%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82622_|
                                       _%hd4638847221%_)
                                      (if (gx#stx-pair? _%tl4639247234%_)
                                          (let ((_%e4648646800%_
                                                 (gx#syntax-e
                                                  _%tl4639247234%_)))
                                            (let ((_%tl4648846807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4648646800%_)))
                                                  (_%hd4648746804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4648646800%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4648846807%_)
                                                  (let ((_%e4648946810%_
                                                         (gx#syntax-e
                                                          _%tl4648846807%_)))
                                                    (let ((_%tl4649146817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4648946810%_)))
                                                          (_%hd4649046814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4648946810%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4649146817%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4638347204%_)
                                                              (let ((_%__splice7724577246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4638347204%_ '0)))
                        (let ((_%tl4649446823%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724577246%_ '1)))
                              (_%target4649246820%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724577246%_ '0))))
                          (if (gx#stx-null? _%tl4649446823%_)
                              (_%__match7750377504%_
                               _%e4637847187%_
                               _%hd4637947191%_
                               _%tl4638047194%_
                               _%e4638147197%_
                               _%hd4638247201%_
                               _%tl4638347204%_
                               _%e4638447207%_
                               _%hd4638547211%_
                               _%tl4638647214%_
                               _%e4638747217%_
                               _%hd4638847221%_
                               _%tl4638947224%_
                               _%e4639047227%_
                               _%hd4639147231%_
                               _%tl4639247234%_
                               _%e4648646800%_
                               _%hd4648746804%_
                               _%tl4648846807%_
                               _%e4648946810%_
                               _%hd4649046814%_
                               _%tl4649146817%_
                               _%__splice7724577246%_
                               _%target4649246820%_
                               _%tl4649446823%_)
                              (if (gx#stx-pair? _%hd4638547211%_)
                                  (let ((_%e4651446668%_
                                         (gx#syntax-e _%hd4638547211%_)))
                                    (let ((_%tl4651646675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651446668%_)))
                                          (_%hd4651546672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651446668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))))
                      (if (gx#stx-pair? _%hd4638547211%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4638547211%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                  (if (gx#stx-pair? _%hd4638547211%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4638547211%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (if (gx#stx-pair/null? _%tl4638347204%_)
                              (let ((_%__splice7724977250%_
                                     (gx#syntax-split-splice
                                      _%tl4638347204%_
                                      '0)))
                                (let ((_%tl4651946681%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '1)))
                                      (_%target4651746678%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4651946681%_)
                                      (_%__match7753577536%_
                                       _%e4637847187%_
                                       _%hd4637947191%_
                                       _%tl4638047194%_
                                       _%e4638147197%_
                                       _%hd4638247201%_
                                       _%tl4638347204%_
                                       _%e4638447207%_
                                       _%hd4638547211%_
                                       _%tl4638647214%_
                                       _%e4651446668%_
                                       _%hd4651546672%_
                                       _%tl4651646675%_
                                       _%__splice7724977250%_
                                       _%target4651746678%_
                                       _%tl4651946681%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4638547211%_)
                                                      (let ((_%e4651446668%_
                                                             (gx#syntax-e
                                                              _%hd4638547211%_)))
                                                        (let ((_%tl4651646675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651446668%_)))
                      (_%hd4651546672%_
                       (let () (declare (not safe)) (##car _%e4651446668%_))))
                  (if (gx#stx-pair/null? _%tl4638347204%_)
                      (let ((_%__splice7724977250%_
                             (gx#syntax-split-splice _%tl4638347204%_ '0)))
                        (let ((_%tl4651946681%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '1)))
                              (_%target4651746678%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '0))))
                          (if (gx#stx-null? _%tl4651946681%_)
                              (_%__match7753577536%_
                               _%e4637847187%_
                               _%hd4637947191%_
                               _%tl4638047194%_
                               _%e4638147197%_
                               _%hd4638247201%_
                               _%tl4638347204%_
                               _%e4638447207%_
                               _%hd4638547211%_
                               _%tl4638647214%_
                               _%e4651446668%_
                               _%hd4651546672%_
                               _%tl4651646675%_
                               _%__splice7724977250%_
                               _%target4651746678%_
                               _%tl4651946681%_)
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638547211%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4638547211%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638347204%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638347204%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4637847187%_
                       _%hd4637947191%_
                       _%tl4638047194%_
                       _%e4638147197%_
                       _%hd4638247201%_
                       _%tl4638347204%_
                       _%e4638447207%_
                       _%hd4638547211%_
                       _%tl4638647214%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                      (if (gx#stx-pair? _%hd4638547211%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4638547211%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638347204%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638347204%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4637847187%_
                                                           _%hd4637947191%_
                                                           _%tl4638047194%_
                                                           _%e4638147197%_
                                                           _%hd4638247201%_
                                                           _%tl4638347204%_
                                                           _%e4638447207%_
                                                           _%hd4638547211%_
                                                           _%tl4638647214%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                  (if (gx#stx-pair? _%hd4638547211%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4638547211%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4638347204%_)
                                              (let ((_%__splice7724977250%_
                                                     (gx#syntax-split-splice
                                                      _%tl4638347204%_
                                                      '0)))
                                                (let ((_%tl4651946681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '1)))
                                                      (_%target4651746678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4651946681%_)
                                                      (_%__match7753577536%_
                                                       _%e4637847187%_
                                                       _%hd4637947191%_
                                                       _%tl4638047194%_
                                                       _%e4638147197%_
                                                       _%hd4638247201%_
                                                       _%tl4638347204%_
                                                       _%e4638447207%_
                                                       _%hd4638547211%_
                                                       _%tl4638647214%_
                                                       _%e4651446668%_
                                                       _%hd4651546672%_
                                                       _%tl4651646675%_
                                                       _%__splice7724977250%_
                                                       _%target4651746678%_
                                                       _%tl4651946681%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4633846547%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))))
                   (_%__match7730177302%_
                    (lambda (_%e4634547363%_
                             _%hd4634647367%_
                             _%tl4634747370%_
                             _%e4634847373%_
                             _%hd4634947377%_
                             _%tl4635047380%_
                             _%e4635147383%_
                             _%hd4635247387%_
                             _%tl4635347390%_
                             _%e4635447393%_
                             _%hd4635547397%_
                             _%tl4635647400%_
                             _%e4635747403%_
                             _%hd4635847407%_
                             _%tl4635947410%_
                             _%e4636047413%_
                             _%hd4636147417%_
                             _%tl4636247420%_
                             _%__splice7722977230%_
                             _%target4636347423%_
                             _%tl4636547426%_)
                      (letrec ((_%loop4636647429%_
                                (lambda (_%hd4636447433%_ _%body4637047436%_)
                                  (if (gx#stx-pair? _%hd4636447433%_)
                                      (let ((_%e4636747439%_
                                             (gx#syntax-e _%hd4636447433%_)))
                                        (let ((_%lp-tl4636947446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4636747439%_)))
                                              (_%lp-hd4636847443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4636747439%_))))
                                          (_%loop4636647429%_
                                           _%lp-tl4636947446%_
                                           (cons _%lp-hd4636847443%_
                                                 _%body4637047436%_))))
                                      (let ((_%body4637147449%_
                                             (reverse _%body4637047436%_)))
                                        (let ((_%L47453%_ _%body4637147449%_)
                                              (_%L47455%_ _%hd4636147417%_)
                                              (_%L47456%_ _%hd4635847407%_)
                                              (_%L47457%_ _%hd4635547397%_)
                                              (_%L47458%_ _%hd4635247387%_))
                                          (if (and (gx#identifier? _%L47458%_)
                                                   (gx#identifier? _%L47456%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47456%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47456%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47456%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47456%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47456%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7722777228%_
                                               _%L47453%_
                                               _%L47455%_
                                               _%L47456%_
                                               _%L47457%_
                                               _%L47458%_)
                                              (_%__match7733177332%_
                                               _%e4634547363%_
                                               _%hd4634647367%_
                                               _%tl4634747370%_
                                               _%e4634847373%_
                                               _%hd4634947377%_
                                               _%tl4635047380%_
                                               _%e4635147383%_
                                               _%hd4635247387%_
                                               _%tl4635347390%_
                                               _%e4635447393%_
                                               _%hd4635547397%_
                                               _%tl4635647400%_
                                               _%e4635747403%_
                                               _%hd4635847407%_
                                               _%tl4635947410%_))))))))
                        (_%loop4636647429%_ _%target4636347423%_ '())))))
              (if (gx#stx-pair? _%__stx7722477225%_)
                  (let ((_%e4634547363%_ (gx#syntax-e _%__stx7722477225%_)))
                    (let ((_%tl4634747370%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4634547363%_)))
                          (_%hd4634647367%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4634547363%_))))
                      (if (gx#stx-pair? _%tl4634747370%_)
                          (let ((_%e4634847373%_
                                 (gx#syntax-e _%tl4634747370%_)))
                            (let ((_%tl4635047380%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4634847373%_)))
                                  (_%hd4634947377%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4634847373%_))))
                              (if (gx#stx-pair? _%hd4634947377%_)
                                  (let ((_%e4635147383%_
                                         (gx#syntax-e _%hd4634947377%_)))
                                    (let ((_%tl4635347390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4635147383%_)))
                                          (_%hd4635247387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4635147383%_))))
                                      (if (gx#stx-pair? _%tl4635347390%_)
                                          (let ((_%e4635447393%_
                                                 (gx#syntax-e
                                                  _%tl4635347390%_)))
                                            (let ((_%tl4635647400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4635447393%_)))
                                                  (_%hd4635547397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4635447393%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4635647400%_)
                                                  (let ((_%e4635747403%_
                                                         (gx#syntax-e
                                                          _%tl4635647400%_)))
                                                    (let ((_%tl4635947410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4635747403%_)))
                                                          (_%hd4635847407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4635747403%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4635947410%_)
                                                          (let ((_%e4636047413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4635947410%_)))
                    (let ((_%tl4636247420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4636047413%_)))
                          (_%hd4636147417%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4636047413%_))))
                      (if (gx#stx-null? _%tl4636247420%_)
                          (if (gx#stx-pair/null? _%tl4635047380%_)
                              (let ((_%__splice7722977230%_
                                     (gx#syntax-split-splice
                                      _%tl4635047380%_
                                      '0)))
                                (let ((_%tl4636547426%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7722977230%_
                                          '1)))
                                      (_%target4636347423%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7722977230%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4636547426%_)
                                      (_%__match7730177302%_
                                       _%e4634547363%_
                                       _%hd4634647367%_
                                       _%tl4634747370%_
                                       _%e4634847373%_
                                       _%hd4634947377%_
                                       _%tl4635047380%_
                                       _%e4635147383%_
                                       _%hd4635247387%_
                                       _%tl4635347390%_
                                       _%e4635447393%_
                                       _%hd4635547397%_
                                       _%tl4635647400%_
                                       _%e4635747403%_
                                       _%hd4635847407%_
                                       _%tl4635947410%_
                                       _%e4636047413%_
                                       _%hd4636147417%_
                                       _%tl4636247420%_
                                       _%__splice7722977230%_
                                       _%target4636347423%_
                                       _%tl4636547426%_)
                                      (if (gx#stx-pair? _%hd4635247387%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4635247387%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))))
                              (if (gx#stx-pair? _%hd4635247387%_)
                                  (let ((_%e4651446668%_
                                         (gx#syntax-e _%hd4635247387%_)))
                                    (let ((_%tl4651646675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651446668%_)))
                                          (_%hd4651546672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651446668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                          (if (gx#identifier? _%hd4635847407%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g82623_|
                                   _%hd4635847407%_)
                                  (if (gx#stx-pair? _%tl4636247420%_)
                                      (let ((_%e4639647247%_
                                             (gx#syntax-e _%tl4636247420%_)))
                                        (let ((_%tl4639847254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4639647247%_)))
                                              (_%hd4639747251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4639647247%_))))
                                          (if (gx#stx-pair? _%tl4639847254%_)
                                              (let ((_%e4639947257%_
                                                     (gx#syntax-e
                                                      _%tl4639847254%_)))
                                                (let ((_%tl4640147264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4639947257%_)))
                                                      (_%hd4640047261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4639947257%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4640147264%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635047380%_)
                                                          (let ((_%__splice7723377234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635047380%_ '0)))
                    (let ((_%tl4640447270%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7723377234%_ '1)))
                          (_%target4640247267%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7723377234%_ '0))))
                      (if (gx#stx-null? _%tl4640447270%_)
                          (_%__match7736377364%_
                           _%e4634547363%_
                           _%hd4634647367%_
                           _%tl4634747370%_
                           _%e4634847373%_
                           _%hd4634947377%_
                           _%tl4635047380%_
                           _%e4635147383%_
                           _%hd4635247387%_
                           _%tl4635347390%_
                           _%e4635447393%_
                           _%hd4635547397%_
                           _%tl4635647400%_
                           _%e4635747403%_
                           _%hd4635847407%_
                           _%tl4635947410%_
                           _%e4636047413%_
                           _%hd4636147417%_
                           _%tl4636247420%_
                           _%e4639647247%_
                           _%hd4639747251%_
                           _%tl4639847254%_
                           _%e4639947257%_
                           _%hd4640047261%_
                           _%tl4640147264%_
                           _%__splice7723377234%_
                           _%target4640247267%_
                           _%tl4640447270%_)
                          (if (gx#stx-pair? _%hd4635247387%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4635247387%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_))))))
                  (if (gx#stx-pair? _%hd4635247387%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
              (if (gx#stx-pair? _%hd4635247387%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4635047380%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4635047380%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4634547363%_
                                   _%hd4634647367%_
                                   _%tl4634747370%_
                                   _%e4634847373%_
                                   _%hd4634947377%_
                                   _%tl4635047380%_
                                   _%e4635147383%_
                                   _%hd4635247387%_
                                   _%tl4635347390%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4635547397%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g82622_|
                                                       _%hd4635547397%_)
                                                      (if (gx#stx-null?
                                                           _%tl4639847254%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4635047380%_)
                                                              (let ((_%__splice7724577246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4635047380%_ '0)))
                        (let ((_%tl4649446823%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724577246%_ '1)))
                              (_%target4649246820%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724577246%_ '0))))
                          (if (gx#stx-null? _%tl4649446823%_)
                              (_%__match7750377504%_
                               _%e4634547363%_
                               _%hd4634647367%_
                               _%tl4634747370%_
                               _%e4634847373%_
                               _%hd4634947377%_
                               _%tl4635047380%_
                               _%e4635147383%_
                               _%hd4635247387%_
                               _%tl4635347390%_
                               _%e4635447393%_
                               _%hd4635547397%_
                               _%tl4635647400%_
                               _%e4635747403%_
                               _%hd4635847407%_
                               _%tl4635947410%_
                               _%e4636047413%_
                               _%hd4636147417%_
                               _%tl4636247420%_
                               _%e4639647247%_
                               _%hd4639747251%_
                               _%tl4639847254%_
                               _%__splice7724577246%_
                               _%target4649246820%_
                               _%tl4649446823%_)
                              (if (gx#stx-pair? _%hd4635247387%_)
                                  (let ((_%e4651446668%_
                                         (gx#syntax-e _%hd4635247387%_)))
                                    (let ((_%tl4651646675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651446668%_)))
                                          (_%hd4651546672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651446668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))))
                      (if (gx#stx-pair? _%hd4635247387%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4635247387%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                  (if (gx#stx-pair? _%hd4635247387%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (if (gx#stx-pair/null? _%tl4635047380%_)
                              (let ((_%__splice7724977250%_
                                     (gx#syntax-split-splice
                                      _%tl4635047380%_
                                      '0)))
                                (let ((_%tl4651946681%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '1)))
                                      (_%target4651746678%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7724977250%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4651946681%_)
                                      (_%__match7753577536%_
                                       _%e4634547363%_
                                       _%hd4634647367%_
                                       _%tl4634747370%_
                                       _%e4634847373%_
                                       _%hd4634947377%_
                                       _%tl4635047380%_
                                       _%e4635147383%_
                                       _%hd4635247387%_
                                       _%tl4635347390%_
                                       _%e4651446668%_
                                       _%hd4651546672%_
                                       _%tl4651646675%_
                                       _%__splice7724977250%_
                                       _%target4651746678%_
                                       _%tl4651946681%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
              (if (gx#stx-pair? _%hd4635247387%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4635047380%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4635047380%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4634547363%_
                                   _%hd4634647367%_
                                   _%tl4634747370%_
                                   _%e4634847373%_
                                   _%hd4634947377%_
                                   _%tl4635047380%_
                                   _%e4635147383%_
                                   _%hd4635247387%_
                                   _%tl4635347390%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635247387%_)
                                                      (let ((_%e4651446668%_
                                                             (gx#syntax-e
                                                              _%hd4635247387%_)))
                                                        (let ((_%tl4651646675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651446668%_)))
                      (_%hd4651546672%_
                       (let () (declare (not safe)) (##car _%e4651446668%_))))
                  (if (gx#stx-pair/null? _%tl4635047380%_)
                      (let ((_%__splice7724977250%_
                             (gx#syntax-split-splice _%tl4635047380%_ '0)))
                        (let ((_%tl4651946681%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '1)))
                              (_%target4651746678%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '0))))
                          (if (gx#stx-null? _%tl4651946681%_)
                              (_%__match7753577536%_
                               _%e4634547363%_
                               _%hd4634647367%_
                               _%tl4634747370%_
                               _%e4634847373%_
                               _%hd4634947377%_
                               _%tl4635047380%_
                               _%e4635147383%_
                               _%hd4635247387%_
                               _%tl4635347390%_
                               _%e4651446668%_
                               _%hd4651546672%_
                               _%tl4651646675%_
                               _%__splice7724977250%_
                               _%target4651746678%_
                               _%tl4651946681%_)
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4635247387%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4635247387%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635047380%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635047380%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4634547363%_
                                                           _%hd4634647367%_
                                                           _%tl4634747370%_
                                                           _%e4634847373%_
                                                           _%hd4634947377%_
                                                           _%tl4635047380%_
                                                           _%e4635147383%_
                                                           _%hd4635247387%_
                                                           _%tl4635347390%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                  (if (gx#identifier? _%hd4635547397%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82622_|
                                           _%hd4635547397%_)
                                          (if (gx#stx-pair? _%tl4636247420%_)
                                              (let ((_%e4648946810%_
                                                     (gx#syntax-e
                                                      _%tl4636247420%_)))
                                                (let ((_%tl4649146817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648946810%_)))
                                                      (_%hd4649046814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648946810%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4649146817%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635047380%_)
                                                          (let ((_%__splice7724577246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635047380%_ '0)))
                    (let ((_%tl4649446823%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724577246%_ '1)))
                          (_%target4649246820%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724577246%_ '0))))
                      (if (gx#stx-null? _%tl4649446823%_)
                          (_%__match7750377504%_
                           _%e4634547363%_
                           _%hd4634647367%_
                           _%tl4634747370%_
                           _%e4634847373%_
                           _%hd4634947377%_
                           _%tl4635047380%_
                           _%e4635147383%_
                           _%hd4635247387%_
                           _%tl4635347390%_
                           _%e4635447393%_
                           _%hd4635547397%_
                           _%tl4635647400%_
                           _%e4635747403%_
                           _%hd4635847407%_
                           _%tl4635947410%_
                           _%e4636047413%_
                           _%hd4636147417%_
                           _%tl4636247420%_
                           _%e4648946810%_
                           _%hd4649046814%_
                           _%tl4649146817%_
                           _%__splice7724577246%_
                           _%target4649246820%_
                           _%tl4649446823%_)
                          (if (gx#stx-pair? _%hd4635247387%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4635247387%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_))))))
                  (if (gx#stx-pair? _%hd4635247387%_)
                      (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                        (let ((_%tl4651646675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651446668%_)))
                              (_%hd4651546672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651446668%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
              (if (gx#stx-pair? _%hd4635247387%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (if (gx#stx-pair/null? _%tl4635047380%_)
                          (let ((_%__splice7724977250%_
                                 (gx#syntax-split-splice _%tl4635047380%_ '0)))
                            (let ((_%tl4651946681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724977250%_ '1)))
                                  (_%target4651746678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724977250%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651946681%_)
                                  (_%__match7753577536%_
                                   _%e4634547363%_
                                   _%hd4634647367%_
                                   _%tl4634747370%_
                                   _%e4634847373%_
                                   _%hd4634947377%_
                                   _%tl4635047380%_
                                   _%e4635147383%_
                                   _%hd4635247387%_
                                   _%tl4635347390%_
                                   _%e4651446668%_
                                   _%hd4651546672%_
                                   _%tl4651646675%_
                                   _%__splice7724977250%_
                                   _%target4651746678%_
                                   _%tl4651946681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4635247387%_)
                                                  (let ((_%e4651446668%_
                                                         (gx#syntax-e
                                                          _%hd4635247387%_)))
                                                    (let ((_%tl4651646675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651446668%_)))
                                                          (_%hd4651546672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651446668%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635047380%_)
                                                          (let ((_%__splice7724977250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635047380%_ '0)))
                    (let ((_%tl4651946681%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '1)))
                          (_%target4651746678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724977250%_ '0))))
                      (if (gx#stx-null? _%tl4651946681%_)
                          (_%__match7753577536%_
                           _%e4634547363%_
                           _%hd4634647367%_
                           _%tl4634747370%_
                           _%e4634847373%_
                           _%hd4634947377%_
                           _%tl4635047380%_
                           _%e4635147383%_
                           _%hd4635247387%_
                           _%tl4635347390%_
                           _%e4651446668%_
                           _%hd4651546672%_
                           _%tl4651646675%_
                           _%__splice7724977250%_
                           _%target4651746678%_
                           _%tl4651946681%_)
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_))))
                                          (if (gx#stx-pair? _%hd4635247387%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4635247387%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635047380%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635047380%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4634547363%_
                       _%hd4634647367%_
                       _%tl4634747370%_
                       _%e4634847373%_
                       _%hd4634947377%_
                       _%tl4635047380%_
                       _%e4635147383%_
                       _%hd4635247387%_
                       _%tl4635347390%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                      (if (gx#stx-pair? _%hd4635247387%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4635247387%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635047380%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635047380%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4634547363%_
                                                           _%hd4634647367%_
                                                           _%tl4634747370%_
                                                           _%e4634847373%_
                                                           _%hd4634947377%_
                                                           _%tl4635047380%_
                                                           _%e4635147383%_
                                                           _%hd4635247387%_
                                                           _%tl4635347390%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                              (if (gx#identifier? _%hd4635547397%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82622_|
                                       _%hd4635547397%_)
                                      (if (gx#stx-pair? _%tl4636247420%_)
                                          (let ((_%e4648946810%_
                                                 (gx#syntax-e
                                                  _%tl4636247420%_)))
                                            (let ((_%tl4649146817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4648946810%_)))
                                                  (_%hd4649046814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4648946810%_))))
                                              (if (gx#stx-null?
                                                   _%tl4649146817%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635047380%_)
                                                      (let ((_%__splice7724577246%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635047380%_
                                                              '0)))
                                                        (let ((_%tl4649446823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724577246%_ '1)))
                      (_%target4649246820%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724577246%_ '0))))
                  (if (gx#stx-null? _%tl4649446823%_)
                      (_%__match7750377504%_
                       _%e4634547363%_
                       _%hd4634647367%_
                       _%tl4634747370%_
                       _%e4634847373%_
                       _%hd4634947377%_
                       _%tl4635047380%_
                       _%e4635147383%_
                       _%hd4635247387%_
                       _%tl4635347390%_
                       _%e4635447393%_
                       _%hd4635547397%_
                       _%tl4635647400%_
                       _%e4635747403%_
                       _%hd4635847407%_
                       _%tl4635947410%_
                       _%e4636047413%_
                       _%hd4636147417%_
                       _%tl4636247420%_
                       _%e4648946810%_
                       _%hd4649046814%_
                       _%tl4649146817%_
                       _%__splice7724577246%_
                       _%target4649246820%_
                       _%tl4649446823%_)
                      (if (gx#stx-pair? _%hd4635247387%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4635247387%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                          (let () (declare (not safe)) (_%g4633846547%_))))))
              (if (gx#stx-pair? _%hd4635247387%_)
                  (let ((_%e4651446668%_ (gx#syntax-e _%hd4635247387%_)))
                    (let ((_%tl4651646675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651446668%_)))
                          (_%hd4651546672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651446668%_))))
                      (let () (declare (not safe)) (_%g4633846547%_))))
                  (let () (declare (not safe)) (_%g4633846547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635247387%_)
                                                      (let ((_%e4651446668%_
                                                             (gx#syntax-e
                                                              _%hd4635247387%_)))
                                                        (let ((_%tl4651646675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651446668%_)))
                      (_%hd4651546672%_
                       (let () (declare (not safe)) (##car _%e4651446668%_))))
                  (if (gx#stx-pair/null? _%tl4635047380%_)
                      (let ((_%__splice7724977250%_
                             (gx#syntax-split-splice _%tl4635047380%_ '0)))
                        (let ((_%tl4651946681%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '1)))
                              (_%target4651746678%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '0))))
                          (if (gx#stx-null? _%tl4651946681%_)
                              (_%__match7753577536%_
                               _%e4634547363%_
                               _%hd4634647367%_
                               _%tl4634747370%_
                               _%e4634847373%_
                               _%hd4634947377%_
                               _%tl4635047380%_
                               _%e4635147383%_
                               _%hd4635247387%_
                               _%tl4635347390%_
                               _%e4651446668%_
                               _%hd4651546672%_
                               _%tl4651646675%_
                               _%__splice7724977250%_
                               _%target4651746678%_
                               _%tl4651946681%_)
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4635247387%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4635247387%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635047380%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635047380%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4634547363%_
                       _%hd4634647367%_
                       _%tl4634747370%_
                       _%e4634847373%_
                       _%hd4634947377%_
                       _%tl4635047380%_
                       _%e4635147383%_
                       _%hd4635247387%_
                       _%tl4635347390%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))
                                      (if (gx#stx-pair? _%hd4635247387%_)
                                          (let ((_%e4651446668%_
                                                 (gx#syntax-e
                                                  _%hd4635247387%_)))
                                            (let ((_%tl4651646675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651446668%_)))
                                                  (_%hd4651546672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651446668%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635047380%_)
                                                  (let ((_%__splice7724977250%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635047380%_
                                                          '0)))
                                                    (let ((_%tl4651946681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '1)))
                                                          (_%target4651746678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7724977250%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4651946681%_)
                                                          (_%__match7753577536%_
                                                           _%e4634547363%_
                                                           _%hd4634647367%_
                                                           _%tl4634747370%_
                                                           _%e4634847373%_
                                                           _%hd4634947377%_
                                                           _%tl4635047380%_
                                                           _%e4635147383%_
                                                           _%hd4635247387%_
                                                           _%tl4635347390%_
                                                           _%e4651446668%_
                                                           _%hd4651546672%_
                                                           _%tl4651646675%_
                                                           _%__splice7724977250%_
                                                           _%target4651746678%_
                                                           _%tl4651946681%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4633846547%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                  (if (gx#stx-pair? _%hd4635247387%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4635247387%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4635047380%_)
                                              (let ((_%__splice7724977250%_
                                                     (gx#syntax-split-splice
                                                      _%tl4635047380%_
                                                      '0)))
                                                (let ((_%tl4651946681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '1)))
                                                      (_%target4651746678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724977250%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4651946681%_)
                                                      (_%__match7753577536%_
                                                       _%e4634547363%_
                                                       _%hd4634647367%_
                                                       _%tl4634747370%_
                                                       _%e4634847373%_
                                                       _%hd4634947377%_
                                                       _%tl4635047380%_
                                                       _%e4635147383%_
                                                       _%hd4635247387%_
                                                       _%tl4635347390%_
                                                       _%e4651446668%_
                                                       _%hd4651546672%_
                                                       _%tl4651646675%_
                                                       _%__splice7724977250%_
                                                       _%target4651746678%_
                                                       _%tl4651946681%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4633846547%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))))
                  (if (gx#stx-null? _%tl4635947410%_)
                      (if (gx#stx-pair/null? _%tl4635047380%_)
                          (let ((_%__splice7723777238%_
                                 (gx#syntax-split-splice _%tl4635047380%_ '0)))
                            (let ((_%tl4643247087%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7723777238%_ '1)))
                                  (_%target4643047084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7723777238%_
                                      '0))))
                              (if (gx#stx-null? _%tl4643247087%_)
                                  (_%__match7740377404%_
                                   _%e4634547363%_
                                   _%hd4634647367%_
                                   _%tl4634747370%_
                                   _%e4634847373%_
                                   _%hd4634947377%_
                                   _%tl4635047380%_
                                   _%e4635147383%_
                                   _%hd4635247387%_
                                   _%tl4635347390%_
                                   _%e4635447393%_
                                   _%hd4635547397%_
                                   _%tl4635647400%_
                                   _%e4635747403%_
                                   _%hd4635847407%_
                                   _%tl4635947410%_
                                   _%__splice7723777238%_
                                   _%target4643047084%_
                                   _%tl4643247087%_)
                                  (if (gx#stx-pair? _%hd4635247387%_)
                                      (let ((_%e4651446668%_
                                             (gx#syntax-e _%hd4635247387%_)))
                                        (let ((_%tl4651646675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651446668%_)))
                                              (_%hd4651546672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651446668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))
                          (if (gx#stx-pair? _%hd4635247387%_)
                              (let ((_%e4651446668%_
                                     (gx#syntax-e _%hd4635247387%_)))
                                (let ((_%tl4651646675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651446668%_)))
                                      (_%hd4651546672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651446668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_))))
                              (let () (declare (not safe)) (_%g4633846547%_))))
                      (if (gx#stx-pair? _%hd4635247387%_)
                          (let ((_%e4651446668%_
                                 (gx#syntax-e _%hd4635247387%_)))
                            (let ((_%tl4651646675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651446668%_)))
                                  (_%hd4651546672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651446668%_))))
                              (if (gx#stx-pair/null? _%tl4635047380%_)
                                  (let ((_%__splice7724977250%_
                                         (gx#syntax-split-splice
                                          _%tl4635047380%_
                                          '0)))
                                    (let ((_%tl4651946681%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '1)))
                                          (_%target4651746678%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7724977250%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651946681%_)
                                          (_%__match7753577536%_
                                           _%e4634547363%_
                                           _%hd4634647367%_
                                           _%tl4634747370%_
                                           _%e4634847373%_
                                           _%hd4634947377%_
                                           _%tl4635047380%_
                                           _%e4635147383%_
                                           _%hd4635247387%_
                                           _%tl4635347390%_
                                           _%e4651446668%_
                                           _%hd4651546672%_
                                           _%tl4651646675%_
                                           _%__splice7724977250%_
                                           _%target4651746678%_
                                           _%tl4651946681%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4633846547%_)))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635247387%_)
                                                      (let ((_%e4651446668%_
                                                             (gx#syntax-e
                                                              _%hd4635247387%_)))
                                                        (let ((_%tl4651646675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651446668%_)))
                      (_%hd4651546672%_
                       (let () (declare (not safe)) (##car _%e4651446668%_))))
                  (if (gx#stx-pair/null? _%tl4635047380%_)
                      (let ((_%__splice7724977250%_
                             (gx#syntax-split-splice _%tl4635047380%_ '0)))
                        (let ((_%tl4651946681%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '1)))
                              (_%target4651746678%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724977250%_ '0))))
                          (if (gx#stx-null? _%tl4651946681%_)
                              (_%__match7753577536%_
                               _%e4634547363%_
                               _%hd4634647367%_
                               _%tl4634747370%_
                               _%e4634847373%_
                               _%hd4634947377%_
                               _%tl4635047380%_
                               _%e4635147383%_
                               _%hd4635247387%_
                               _%tl4635347390%_
                               _%e4651446668%_
                               _%hd4651546672%_
                               _%tl4651646675%_
                               _%__splice7724977250%_
                               _%target4651746678%_
                               _%tl4651946681%_)
                              (let ()
                                (declare (not safe))
                                (_%g4633846547%_)))))
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4635247387%_)
                                              (let ((_%e4651446668%_
                                                     (gx#syntax-e
                                                      _%hd4635247387%_)))
                                                (let ((_%tl4651646675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651446668%_)))
                                                      (_%hd4651546672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651446668%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635047380%_)
                                                      (let ((_%__splice7724977250%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635047380%_
                                                              '0)))
                                                        (let ((_%tl4651946681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '1)))
                      (_%target4651746678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724977250%_ '0))))
                  (if (gx#stx-null? _%tl4651946681%_)
                      (_%__match7753577536%_
                       _%e4634547363%_
                       _%hd4634647367%_
                       _%tl4634747370%_
                       _%e4634847373%_
                       _%hd4634947377%_
                       _%tl4635047380%_
                       _%e4635147383%_
                       _%hd4635247387%_
                       _%tl4635347390%_
                       _%e4651446668%_
                       _%hd4651546672%_
                       _%tl4651646675%_
                       _%__splice7724977250%_
                       _%target4651746678%_
                       _%tl4651946681%_)
                      (let () (declare (not safe)) (_%g4633846547%_)))))
              (let () (declare (not safe)) (_%g4633846547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4633846547%_))))))
                                  (if (gx#stx-null? _%hd4634947377%_)
                                      (if (gx#stx-pair/null? _%tl4635047380%_)
                                          (let ((_%__splice7725377254%_
                                                 (gx#syntax-split-splice
                                                  _%tl4635047380%_
                                                  '0)))
                                            (let ((_%tl4653546577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725377254%_
                                                      '1)))
                                                  (_%target4653346574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725377254%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4653546577%_)
                                                  (_%__match7755777558%_
                                                   _%e4634547363%_
                                                   _%hd4634647367%_
                                                   _%tl4634747370%_
                                                   _%e4634847373%_
                                                   _%hd4634947377%_
                                                   _%tl4635047380%_
                                                   _%__splice7725377254%_
                                                   _%target4653346574%_
                                                   _%tl4653546577%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4633846547%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4633846547%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4633846547%_))))))
                          (let () (declare (not safe)) (_%g4633846547%_)))))
                  (let () (declare (not safe)) (_%g4633846547%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47521%_)
        (let* ((_%g4752547559%_
                (lambda (_%g4752647555%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4752647555%_)))
               (_%g4752447682%_
                (lambda (_%g4752647563%_)
                  (if (gx#stx-pair? _%g4752647563%_)
                      (let ((_%e4753047566%_ (gx#syntax-e _%g4752647563%_)))
                        (let ((_%hd4753147570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4753047566%_)))
                              (_%tl4753247573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4753047566%_))))
                          (if (gx#stx-pair? _%tl4753247573%_)
                              (let ((_%e4753347576%_
                                     (gx#syntax-e _%tl4753247573%_)))
                                (let ((_%hd4753447580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4753347576%_)))
                                      (_%tl4753547583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4753347576%_))))
                                  (if (gx#stx-pair? _%hd4753447580%_)
                                      (let ((_%e4753647586%_
                                             (gx#syntax-e _%hd4753447580%_)))
                                        (let ((_%hd4753747590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4753647586%_)))
                                              (_%tl4753847593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4753647586%_))))
                                          (if (gx#stx-pair? _%tl4753847593%_)
                                              (let ((_%e4753947596%_
                                                     (gx#syntax-e
                                                      _%tl4753847593%_)))
                                                (let ((_%hd4754047600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4753947596%_)))
                                                      (_%tl4754147603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4753947596%_))))
                                                  (if (gx#identifier?
                                                       _%hd4754047600%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82624_|
                                                           _%hd4754047600%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4754147603%_)
                                                              (let ((_%e4754247606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4754147603%_)))
                        (let ((_%hd4754347610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4754247606%_)))
                              (_%tl4754447613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4754247606%_))))
                          (if (gx#stx-null? _%tl4754447613%_)
                              (if (gx#stx-pair/null? _%tl4753547583%_)
                                  (let ((_g82625_
                                         (gx#syntax-split-splice
                                          _%tl4753547583%_
                                          '0)))
                                    (begin
                                      (let ((_g82626_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82625_)
                                                   (##vector-length _g82625_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82626_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82626_)))
                                      (let ((_%target4754547616%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82625_ 0)))
                                            (_%tl4754747619%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82625_ 1))))
                                        (if (gx#stx-null? _%tl4754747619%_)
                                            (letrec ((_%loop4754847622%_
                                                      (lambda (_%hd4754647626%_
                                                               _%body4755247629%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4754647626%_)
                                                            (let ((_%e4754947632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4754647626%_)))
                      (let ((_%lp-hd4755047636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4754947632%_)))
                            (_%lp-tl4755147639%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4754947632%_))))
                        (_%loop4754847622%_
                         _%lp-tl4755147639%_
                         (cons _%lp-hd4755047636%_ _%body4755247629%_))))
                    (let ((_%body4755347642%_ (reverse _%body4755247629%_)))
                      ((lambda (_%L47646%_ _%L47648%_ _%L47649%_)
                         (if (gx#identifier? _%L47649%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47648%_
                                               (cons _%L47649%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4767347676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4767447679%_)
                            (cons _%g4767347676%_ _%g4767447679%_))
                          '()
                          _%L47646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47648%_ (cons _%L47649%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4752547559%_ _%g4752647563%_)))
                       _%body4755347642%_
                       _%hd4754347610%_
                       _%hd4753747590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4754847622%_
                                               _%target4754547616%_
                                               '()))
                                            (_%g4752547559%_
                                             _%g4752647563%_)))))
                                  (_%g4752547559%_ _%g4752647563%_))
                              (_%g4752547559%_ _%g4752647563%_))))
                      (_%g4752547559%_ _%g4752647563%_))
                  (_%g4752547559%_ _%g4752647563%_))
              (_%g4752547559%_ _%g4752647563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4752547559%_
                                               _%g4752647563%_))))
                                      (_%g4752547559%_ _%g4752647563%_))))
                              (_%g4752547559%_ _%g4752647563%_))))
                      (_%g4752547559%_ _%g4752647563%_)))))
          (_%g4752447682%_ _%$stx47521%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48249%_ _%slot48251%_)
        (let ((_%$e48253%_
               (let ((__obj82462 _%klass48249%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82462
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82462 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82462
                      'slot-types)))))
          (if _%$e48253%_
              ((lambda (_%slot-types48257%_)
                 (agetq _%slot48251%_ _%slot-types48257%_))
               _%$e48253%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48230%_ _%slot48232%_)
        (let ((_%$e48234%_
               (let ((__obj82463 _%klass48230%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82463
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82463 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82463
                      'slot-defaults)))))
          (if _%$e48234%_
              ((lambda (_%slot-defaults48238%_)
                 (let ((_%$e48241%_
                        (agetq _%slot48232%_ _%slot-defaults48238%_)))
                   (if _%$e48241%_
                       (gx#syntax-local-introduce _%$e48241%_)
                       '#f)))
               _%$e48234%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48211%_ _%slot48213%_)
        (let ((_%$e48215%_
               (let ((__obj82464 _%klass48211%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82464
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82464 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82464
                      'slot-defaults)))))
          (if _%$e48215%_
              ((lambda (_%slot-defaults48219%_)
                 (let ((_%$e48222%_
                        (agetq _%slot48213%_ _%slot-defaults48219%_)))
                   (if _%$e48222%_
                       (gx#syntax-local-introduce _%$e48222%_)
                       '#f)))
               _%$e48215%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass47979%_ _%slot47981%_)
        (let ((_%contract4798247984%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47979%_
                _%slot47981%_)))
          (if _%contract4798247984%_
              (let* ((_%contract47988%_ _%contract4798247984%_)
                     (_%__stx7756077561%_ _%contract47988%_)
                     (_%g4799348030%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7756077561%_))))
                (let ((_%__kont7756377564%_
                       (lambda (_%L48180%_ _%L48182%_)
                         (not (gx#free-identifier=?
                               _%L48182%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7756577566%_
                       (lambda (_%L48120%_ _%L48122%_ _%L48123%_)
                         (not (gx#free-identifier=?
                               _%L48122%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7756777568%_ (lambda (_%L48057%_) '#f)))
                  (let* ((_%__match7761377614%_
                          (lambda (_%e4800648080%_
                                   _%hd4800748084%_
                                   _%tl4800848087%_
                                   _%e4800948090%_
                                   _%hd4801048094%_
                                   _%tl4801148097%_
                                   _%e4801248100%_
                                   _%hd4801348104%_
                                   _%tl4801448107%_
                                   _%e4801548110%_
                                   _%hd4801648114%_
                                   _%tl4801748117%_)
                            (let ((_%L48120%_ _%hd4801648114%_)
                                  (_%L48122%_ _%hd4801348104%_)
                                  (_%L48123%_ _%hd4801048094%_))
                              (if (and (gx#identifier? _%L48122%_)
                                       (or (gx#free-identifier=?
                                            _%L48122%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48122%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48122%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48122%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7756577566%_
                                   _%L48120%_
                                   _%L48122%_
                                   _%L48123%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4799348030%_))))))
                         (_%__match7758377584%_
                          (lambda (_%e4799748160%_
                                   _%hd4799848164%_
                                   _%tl4799948167%_
                                   _%e4800048170%_
                                   _%hd4800148174%_
                                   _%tl4800248177%_)
                            (let ((_%L48180%_ _%hd4800148174%_)
                                  (_%L48182%_ _%hd4799848164%_))
                              (if (and (gx#identifier? _%L48182%_)
                                       (or (gx#free-identifier=?
                                            _%L48182%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48182%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48182%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48182%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7756377564%_ _%L48180%_ _%L48182%_)
                                  (if (gx#identifier? _%hd4799848164%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82627_|
                                           _%hd4799848164%_)
                                          (_%__kont7756777568%_
                                           _%hd4800148174%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4799348030%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4799348030%_))))))))
                    (if (gx#stx-pair? _%__stx7756077561%_)
                        (let ((_%e4799748160%_
                               (gx#syntax-e _%__stx7756077561%_)))
                          (let ((_%tl4799948167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4799748160%_)))
                                (_%hd4799848164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4799748160%_))))
                            (if (gx#stx-pair? _%tl4799948167%_)
                                (let ((_%e4800048170%_
                                       (gx#syntax-e _%tl4799948167%_)))
                                  (let ((_%tl4800248177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4800048170%_)))
                                        (_%hd4800148174%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4800048170%_))))
                                    (if (gx#stx-null? _%tl4800248177%_)
                                        (_%__match7758377584%_
                                         _%e4799748160%_
                                         _%hd4799848164%_
                                         _%tl4799948167%_
                                         _%e4800048170%_
                                         _%hd4800148174%_
                                         _%tl4800248177%_)
                                        (if (gx#identifier? _%hd4799848164%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82627_|
                                                 _%hd4799848164%_)
                                                (if (gx#stx-pair?
                                                     _%tl4800248177%_)
                                                    (let ((_%e4801248100%_
                                                           (gx#syntax-e
                                                            _%tl4800248177%_)))
                                                      (let ((_%tl4801448107%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4801248100%_)))
                    (_%hd4801348104%_
                     (let () (declare (not safe)) (##car _%e4801248100%_))))
                (if (gx#stx-pair? _%tl4801448107%_)
                    (let ((_%e4801548110%_ (gx#syntax-e _%tl4801448107%_)))
                      (let ((_%tl4801748117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4801548110%_)))
                            (_%hd4801648114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4801548110%_))))
                        (if (gx#stx-null? _%tl4801748117%_)
                            (_%__match7761377614%_
                             _%e4799748160%_
                             _%hd4799848164%_
                             _%tl4799948167%_
                             _%e4800048170%_
                             _%hd4800148174%_
                             _%tl4800248177%_
                             _%e4801248100%_
                             _%hd4801348104%_
                             _%tl4801448107%_
                             _%e4801548110%_
                             _%hd4801648114%_
                             _%tl4801748117%_)
                            (let () (declare (not safe)) (_%g4799348030%_)))))
                    (let () (declare (not safe)) (_%g4799348030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4799348030%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799348030%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4799348030%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4799348030%_)))))
                        (let () (declare (not safe)) (_%g4799348030%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47747%_ _%slot47749%_)
        (let ((_%contract4775047752%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47747%_
                _%slot47749%_)))
          (if _%contract4775047752%_
              (let* ((_%contract47756%_ _%contract4775047752%_)
                     (_%__stx7763477635%_ _%contract47756%_)
                     (_%g4776147798%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7763477635%_))))
                (let ((_%__kont7763777638%_
                       (lambda (_%L47948%_ _%L47950%_)
                         (not (gx#free-identifier=?
                               _%L47950%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7763977640%_
                       (lambda (_%L47888%_ _%L47890%_ _%L47891%_) '#t))
                      (_%__kont7764177642%_ (lambda (_%L47825%_) '#t)))
                  (let* ((_%__match7768777688%_
                          (lambda (_%e4777447848%_
                                   _%hd4777547852%_
                                   _%tl4777647855%_
                                   _%e4777747858%_
                                   _%hd4777847862%_
                                   _%tl4777947865%_
                                   _%e4778047868%_
                                   _%hd4778147872%_
                                   _%tl4778247875%_
                                   _%e4778347878%_
                                   _%hd4778447882%_
                                   _%tl4778547885%_)
                            (let ((_%L47888%_ _%hd4778447882%_)
                                  (_%L47890%_ _%hd4778147872%_)
                                  (_%L47891%_ _%hd4777847862%_))
                              (if (and (gx#identifier? _%L47890%_)
                                       (or (gx#free-identifier=?
                                            _%L47890%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47890%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47890%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47890%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7763977640%_
                                   _%L47888%_
                                   _%L47890%_
                                   _%L47891%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4776147798%_))))))
                         (_%__match7765777658%_
                          (lambda (_%e4776547928%_
                                   _%hd4776647932%_
                                   _%tl4776747935%_
                                   _%e4776847938%_
                                   _%hd4776947942%_
                                   _%tl4777047945%_)
                            (let ((_%L47948%_ _%hd4776947942%_)
                                  (_%L47950%_ _%hd4776647932%_))
                              (if (and (gx#identifier? _%L47950%_)
                                       (or (gx#free-identifier=?
                                            _%L47950%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47950%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47950%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47950%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7763777638%_ _%L47948%_ _%L47950%_)
                                  (if (gx#identifier? _%hd4776647932%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82628_|
                                           _%hd4776647932%_)
                                          (_%__kont7764177642%_
                                           _%hd4776947942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4776147798%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4776147798%_))))))))
                    (if (gx#stx-pair? _%__stx7763477635%_)
                        (let ((_%e4776547928%_
                               (gx#syntax-e _%__stx7763477635%_)))
                          (let ((_%tl4776747935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4776547928%_)))
                                (_%hd4776647932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4776547928%_))))
                            (if (gx#stx-pair? _%tl4776747935%_)
                                (let ((_%e4776847938%_
                                       (gx#syntax-e _%tl4776747935%_)))
                                  (let ((_%tl4777047945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4776847938%_)))
                                        (_%hd4776947942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4776847938%_))))
                                    (if (gx#stx-null? _%tl4777047945%_)
                                        (_%__match7765777658%_
                                         _%e4776547928%_
                                         _%hd4776647932%_
                                         _%tl4776747935%_
                                         _%e4776847938%_
                                         _%hd4776947942%_
                                         _%tl4777047945%_)
                                        (if (gx#identifier? _%hd4776647932%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82628_|
                                                 _%hd4776647932%_)
                                                (if (gx#stx-pair?
                                                     _%tl4777047945%_)
                                                    (let ((_%e4778047868%_
                                                           (gx#syntax-e
                                                            _%tl4777047945%_)))
                                                      (let ((_%tl4778247875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4778047868%_)))
                    (_%hd4778147872%_
                     (let () (declare (not safe)) (##car _%e4778047868%_))))
                (if (gx#stx-pair? _%tl4778247875%_)
                    (let ((_%e4778347878%_ (gx#syntax-e _%tl4778247875%_)))
                      (let ((_%tl4778547885%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4778347878%_)))
                            (_%hd4778447882%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4778347878%_))))
                        (if (gx#stx-null? _%tl4778547885%_)
                            (_%__match7768777688%_
                             _%e4776547928%_
                             _%hd4776647932%_
                             _%tl4776747935%_
                             _%e4776847938%_
                             _%hd4776947942%_
                             _%tl4777047945%_
                             _%e4778047868%_
                             _%hd4778147872%_
                             _%tl4778247875%_
                             _%e4778347878%_
                             _%hd4778447882%_
                             _%tl4778547885%_)
                            (let () (declare (not safe)) (_%g4776147798%_)))))
                    (let () (declare (not safe)) (_%g4776147798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4776147798%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4776147798%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4776147798%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4776147798%_)))))
                        (let () (declare (not safe)) (_%g4776147798%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47733%_)
        (if (gx#identifier? _%id47733%_)
            (let* ((_%str47736%_ (symbol->string (gx#stx-e _%id47733%_)))
                   (_%index4773847740%_ (string-index _%str47736%_ '#\.)))
              (if _%index4773847740%_
                  (let ((_%index47744%_ _%index4773847740%_))
                    (if (let () (declare (not safe)) (##fx> _%index47744%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47736%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47726%_ _%id47728%_)
        (let ((_%parts47730%_
               (string-split (symbol->string (gx#stx-e _%id47728%_)) '#\.)))
          (if (find string-empty? _%parts47730%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47726%_
               _%id47728%_)
              (cons (gx#stx-identifier _%id47728%_ (car _%parts47730%_))
                    (map string->symbol (cdr _%parts47730%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47707%_ _%klass-or-id47709%_ _%slot47710%_)
        (let* ((_%klass47712%_
                (if (gx#identifier? _%klass-or-id47709%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47707%_
                       _%klass-or-id47709%_))
                    _%klass-or-id47709%_))
               (_%accessors47715%_
                (let ((__obj82465 _%klass47712%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82465
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82465 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj82465
                       'unchecked-accessors))))
               (_%$e47720%_ (agetq _%slot47710%_ _%accessors47715%_)))
          (if _%$e47720%_
              _%$e47720%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47707%_
               _%klass47712%_
               _%slot47710%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47687%_
               _%klass-or-id47689%_
               _%slot47690%_
               _%checked?47691%_)
        (let* ((_%klass47693%_
                (if (gx#identifier? _%klass-or-id47689%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47687%_
                       _%klass-or-id47689%_))
                    _%klass-or-id47689%_))
               (_%mutators47696%_
                (if _%checked?47691%_
                    (let ((__obj82466 _%klass47693%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82466
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82466 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82466
                           'mutators)))
                    (let ((__obj82467 _%klass47693%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82467
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82467 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82467
                           'unchecked-mutators)))))
               (_%$e47701%_ (agetq _%slot47690%_ _%mutators47696%_)))
          (if _%$e47701%_
              _%$e47701%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47687%_
               _%klass47693%_
               _%slot47690%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48262%_)
        (letrec ((_%expand-body48265%_
                  (lambda (_%klass49173%_
                           _%var49175%_
                           _%Type49176%_
                           _%body49177%_
                           _%checked?49178%_)
                    (let* ((_%g4918049224%_
                            (lambda (_%g4918149220%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4918149220%_)))
                           (_%g4917949381%_
                            (lambda (_%g4918149228%_)
                              (if (gx#stx-pair? _%g4918149228%_)
                                  (let ((_%e4918949231%_
                                         (gx#syntax-e _%g4918149228%_)))
                                    (let ((_%hd4919049235%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4918949231%_)))
                                          (_%tl4919149238%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4918949231%_))))
                                      (if (gx#stx-pair? _%tl4919149238%_)
                                          (let ((_%e4919249241%_
                                                 (gx#syntax-e
                                                  _%tl4919149238%_)))
                                            (let ((_%hd4919349245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4919249241%_)))
                                                  (_%tl4919449248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4919249241%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4919449248%_)
                                                  (let ((_%e4919549251%_
                                                         (gx#syntax-e
                                                          _%tl4919449248%_)))
                                                    (let ((_%hd4919649255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4919549251%_)))
                                                          (_%tl4919749258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4919549251%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4919749258%_)
                                                          (let ((_%e4919849261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4919749258%_)))
                    (let ((_%hd4919949265%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4919849261%_)))
                          (_%tl4920049268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4919849261%_))))
                      (if (gx#stx-pair? _%tl4920049268%_)
                          (let ((_%e4920149271%_
                                 (gx#syntax-e _%tl4920049268%_)))
                            (let ((_%hd4920249275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4920149271%_)))
                                  (_%tl4920349278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4920149271%_))))
                              (if (gx#stx-pair? _%tl4920349278%_)
                                  (let ((_%e4920449281%_
                                         (gx#syntax-e _%tl4920349278%_)))
                                    (let ((_%hd4920549285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4920449281%_)))
                                          (_%tl4920649288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4920449281%_))))
                                      (if (gx#stx-pair? _%tl4920649288%_)
                                          (let ((_%e4920749291%_
                                                 (gx#syntax-e
                                                  _%tl4920649288%_)))
                                            (let ((_%hd4920849295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4920749291%_)))
                                                  (_%tl4920949298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4920749291%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4920849295%_)
                                                  (let ((_g82629_
                                                         (gx#syntax-split-splice
                                                          _%hd4920849295%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82629_)
                           (##vector-length _g82629_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82630_ 2)))
                    (error "Context expects 2 values" _g82630_)))
              (let ((_%target4921049301%_
                     (let () (declare (not safe)) (##vector-ref _g82629_ 0)))
                    (_%tl4921249304%_
                     (let () (declare (not safe)) (##vector-ref _g82629_ 1))))
                (if (gx#stx-null? _%tl4921249304%_)
                    (letrec ((_%loop4921349307%_
                              (lambda (_%hd4921149311%_ _%body4921749314%_)
                                (if (gx#stx-pair? _%hd4921149311%_)
                                    (let ((_%e4921449317%_
                                           (gx#syntax-e _%hd4921149311%_)))
                                      (let ((_%lp-hd4921549321%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4921449317%_)))
                                            (_%lp-tl4921649324%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4921449317%_))))
                                        (_%loop4921349307%_
                                         _%lp-tl4921649324%_
                                         (cons _%lp-hd4921549321%_
                                               _%body4921749314%_))))
                                    (let ((_%body4921849327%_
                                           (reverse _%body4921749314%_)))
                                      (if (gx#stx-null? _%tl4920949298%_)
                                          ((lambda (_%L49331%_
                                                    _%L49333%_
                                                    _%L49334%_
                                                    _%L49335%_
                                                    _%L49336%_
                                                    _%L49337%_
                                                    _%L49338%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49336%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49337%_ '()))
                                         (cons _%L49336%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49338%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49336%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49335%_ '()))
                               (cons _%L49334%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49333%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4937249375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4937349378%_)
                      (cons _%g4937249375%_ _%g4937349378%_))
                    '()
                    _%L49331%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4921849327%_
                                           _%hd4920549285%_
                                           _%hd4920249275%_
                                           _%hd4919949265%_
                                           _%hd4919649255%_
                                           _%hd4919349245%_
                                           _%hd4919049235%_)
                                          (_%g4918049224%_
                                           _%g4918149228%_)))))))
                      (_%loop4921349307%_ _%target4921049301%_ '()))
                    (_%g4918049224%_ _%g4918149228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4918049224%_
                                                   _%g4918149228%_))))
                                          (_%g4918049224%_ _%g4918149228%_))))
                                  (_%g4918049224%_ _%g4918149228%_))))
                          (_%g4918049224%_ _%g4918149228%_))))
                  (_%g4918049224%_ _%g4918149228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4918049224%_
                                                   _%g4918149228%_))))
                                          (_%g4918049224%_ _%g4918149228%_))))
                                  (_%g4918049224%_ _%g4918149228%_)))))
                      (_%g4917949381%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj82468 _%klass49173%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82468
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82468
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj82468
                                    'type-descriptor)))
                             _%var49175%_
                             _%klass49173%_
                             _%checked?49178%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49177%_)))))
                 (_%expand48267%_
                  (lambda (_%var49065%_
                           _%Type49067%_
                           _%body49068%_
                           _%checked?49069%_
                           _%checked-mutators?49070%_
                           _%maybe?49071%_)
                    (let* ((_%klass49073%_
                            (gx#syntax-local-value _%Type49067%_ false))
                           (_%expr-body49080%_
                            (_%expand-body48265%_
                             _%klass49073%_
                             _%var49065%_
                             _%Type49067%_
                             _%body49068%_
                             (let ((_%$e49076%_ _%checked?49069%_))
                               (if _%$e49076%_
                                   _%$e49076%_
                                   _%checked-mutators?49070%_)))))
                      (if _%checked?49069%_
                          (let* ((_%g4908549104%_
                                  (lambda (_%g4908649100%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4908649100%_)))
                                 (_%g4908449166%_
                                  (lambda (_%g4908649108%_)
                                    (if (gx#stx-pair? _%g4908649108%_)
                                        (let ((_%e4909049111%_
                                               (gx#syntax-e _%g4908649108%_)))
                                          (let ((_%hd4909149115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4909049111%_)))
                                                (_%tl4909249118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4909049111%_))))
                                            (if (gx#stx-pair? _%tl4909249118%_)
                                                (let ((_%e4909349121%_
                                                       (gx#syntax-e
                                                        _%tl4909249118%_)))
                                                  (let ((_%hd4909449125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4909349121%_)))
                                                        (_%tl4909549128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4909349121%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4909549128%_)
                                                        (let ((_%e4909649131%_
                                                               (gx#syntax-e
                                                                _%tl4909549128%_)))
                                                          (let ((_%hd4909749135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4909649131%_)))
                        (_%tl4909849138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4909649131%_))))
                    (if (gx#stx-null? _%tl4909849138%_)
                        ((lambda (_%L49141%_ _%L49143%_ _%L49144%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49143%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49144%_ '())))
                                       (cons _%L49141%_ '()))))
                         _%hd4909749135%_
                         _%hd4909449125%_
                         _%hd4909149115%_)
                        (_%g4908549104%_ _%g4908649108%_))))
                (_%g4908549104%_ _%g4908649108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4908549104%_
                                                 _%g4908649108%_))))
                                        (_%g4908549104%_ _%g4908649108%_)))))
                            (_%g4908449166%_
                             (list (let ((_%instance?49170%_
                                          (let ((__obj82469 _%klass49073%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj82469
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj82469
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj82469
                                                 'predicate)))))
                                     (if _%maybe?49071%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49170%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49170%_))
                                   _%var49065%_
                                   _%expr-body49080%_)))
                          _%expr-body49080%_)))))
          (let* ((_%__stx7770877709%_ _%stx48262%_)
                 (_%g4827348416%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7770877709%_))))
            (let ((_%__kont7771177712%_
                   (lambda (_%L48993%_ _%L48995%_ _%L48996%_ _%L48997%_)
                     (let* ((_%g4902249030%_
                             (lambda (_%g4902349026%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4902349026%_)))
                            (_%g4902149057%_
                             (lambda (_%g4902349034%_)
                               ((lambda (_%L49037%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L48997%_
                                                    (cons _%L48996%_
                                                          (cons _%L49037%_
                                                                '())))
                                              (foldr (lambda (_%g4904849051%_
                                                              _%g4904949054%_)
                                                       (cons _%g4904849051%_
                                                             _%g4904949054%_))
                                                     '()
                                                     _%L48993%_))))
                                _%g4902349034%_))))
                       (_%g4902149057%_
                        (let ((__obj82470 (gx#syntax-local-value _%L48995%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj82470
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj82470
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj82470
                               'identifier)))))))
                  (_%__kont7771577716%_
                   (lambda (_%L48871%_ _%L48873%_ _%L48874%_)
                     (_%expand48267%_
                      _%L48874%_
                      _%L48873%_
                      (foldr (lambda (_%g4889748900%_ _%g4889848903%_)
                               (cons _%g4889748900%_ _%g4889848903%_))
                             '()
                             _%L48871%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7771977720%_
                   (lambda (_%L48749%_ _%L48751%_ _%L48752%_)
                     (_%expand48267%_
                      _%L48752%_
                      _%L48751%_
                      (foldr (lambda (_%g4877548778%_ _%g4877648781%_)
                               (cons _%g4877548778%_ _%g4877648781%_))
                             '()
                             _%L48749%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7772377724%_
                   (lambda (_%L48627%_ _%L48629%_ _%L48630%_)
                     (_%expand48267%_
                      _%L48630%_
                      _%L48629%_
                      (foldr (lambda (_%g4865348656%_ _%g4865448659%_)
                               (cons _%g4865348656%_ _%g4865448659%_))
                             '()
                             _%L48627%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7772777728%_
                   (lambda (_%L48503%_ _%L48505%_ _%L48506%_)
                     (_%expand48267%_
                      _%L48506%_
                      _%L48505%_
                      (foldr (lambda (_%g4853148534%_ _%g4853248537%_)
                               (cons _%g4853148534%_ _%g4853248537%_))
                             '()
                             _%L48503%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7794777948%_
                      (lambda (_%e4838748423%_
                               _%hd4838848427%_
                               _%tl4838948430%_
                               _%e4839048433%_
                               _%hd4839148437%_
                               _%tl4839248440%_
                               _%e4839348443%_
                               _%hd4839448447%_
                               _%tl4839548450%_
                               _%e4839648453%_
                               _%hd4839748457%_
                               _%tl4839848460%_
                               _%e4839948463%_
                               _%hd4840048467%_
                               _%tl4840148470%_
                               _%__splice7772977730%_
                               _%target4840248473%_
                               _%tl4840448476%_)
                        (letrec ((_%loop4840548479%_
                                  (lambda (_%hd4840348483%_ _%body4840948486%_)
                                    (if (gx#stx-pair? _%hd4840348483%_)
                                        (let ((_%e4840648489%_
                                               (gx#syntax-e _%hd4840348483%_)))
                                          (let ((_%lp-tl4840848496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840648489%_)))
                                                (_%lp-hd4840748493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840648489%_))))
                                            (_%loop4840548479%_
                                             _%lp-tl4840848496%_
                                             (cons _%lp-hd4840748493%_
                                                   _%body4840948486%_))))
                                        (let ((_%body4841048499%_
                                               (reverse _%body4840948486%_)))
                                          (let ((_%L48503%_ _%body4841048499%_)
                                                (_%L48505%_ _%hd4840048467%_)
                                                (_%L48506%_ _%hd4839448447%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48505%_))
                                                (_%__kont7772777728%_
                                                 _%L48503%_
                                                 _%L48505%_
                                                 _%L48506%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))))))))
                          (_%loop4840548479%_ _%target4840248473%_ '()))))
                     (_%__match7790377904%_
                      (lambda (_%e4836048547%_
                               _%hd4836148551%_
                               _%tl4836248554%_
                               _%e4836348557%_
                               _%hd4836448561%_
                               _%tl4836548564%_
                               _%e4836648567%_
                               _%hd4836748571%_
                               _%tl4836848574%_
                               _%e4836948577%_
                               _%hd4837048581%_
                               _%tl4837148584%_
                               _%e4837248587%_
                               _%hd4837348591%_
                               _%tl4837448594%_
                               _%__splice7772577726%_
                               _%target4837548597%_
                               _%tl4837748600%_)
                        (letrec ((_%loop4837848603%_
                                  (lambda (_%hd4837648607%_ _%body4838248610%_)
                                    (if (gx#stx-pair? _%hd4837648607%_)
                                        (let ((_%e4837948613%_
                                               (gx#syntax-e _%hd4837648607%_)))
                                          (let ((_%lp-tl4838148620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4837948613%_)))
                                                (_%lp-hd4838048617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4837948613%_))))
                                            (_%loop4837848603%_
                                             _%lp-tl4838148620%_
                                             (cons _%lp-hd4838048617%_
                                                   _%body4838248610%_))))
                                        (let ((_%body4838348623%_
                                               (reverse _%body4838248610%_)))
                                          (let ((_%L48627%_ _%body4838348623%_)
                                                (_%L48629%_ _%hd4837348591%_)
                                                (_%L48630%_ _%hd4836748571%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48629%_))
                                                (_%__kont7772377724%_
                                                 _%L48627%_
                                                 _%L48629%_
                                                 _%L48630%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))))))))
                          (_%loop4837848603%_ _%target4837548597%_ '()))))
                     (_%__match7785977860%_
                      (lambda (_%e4833348669%_
                               _%hd4833448673%_
                               _%tl4833548676%_
                               _%e4833648679%_
                               _%hd4833748683%_
                               _%tl4833848686%_
                               _%e4833948689%_
                               _%hd4834048693%_
                               _%tl4834148696%_
                               _%e4834248699%_
                               _%hd4834348703%_
                               _%tl4834448706%_
                               _%e4834548709%_
                               _%hd4834648713%_
                               _%tl4834748716%_
                               _%__splice7772177722%_
                               _%target4834848719%_
                               _%tl4835048722%_)
                        (letrec ((_%loop4835148725%_
                                  (lambda (_%hd4834948729%_ _%body4835548732%_)
                                    (if (gx#stx-pair? _%hd4834948729%_)
                                        (let ((_%e4835248735%_
                                               (gx#syntax-e _%hd4834948729%_)))
                                          (let ((_%lp-tl4835448742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4835248735%_)))
                                                (_%lp-hd4835348739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4835248735%_))))
                                            (_%loop4835148725%_
                                             _%lp-tl4835448742%_
                                             (cons _%lp-hd4835348739%_
                                                   _%body4835548732%_))))
                                        (let ((_%body4835648745%_
                                               (reverse _%body4835548732%_)))
                                          (let ((_%L48749%_ _%body4835648745%_)
                                                (_%L48751%_ _%hd4834648713%_)
                                                (_%L48752%_ _%hd4834048693%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48751%_))
                                                (_%__kont7771977720%_
                                                 _%L48749%_
                                                 _%L48751%_
                                                 _%L48752%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))))))))
                          (_%loop4835148725%_ _%target4834848719%_ '()))))
                     (_%__match7781577816%_
                      (lambda (_%e4830648791%_
                               _%hd4830748795%_
                               _%tl4830848798%_
                               _%e4830948801%_
                               _%hd4831048805%_
                               _%tl4831148808%_
                               _%e4831248811%_
                               _%hd4831348815%_
                               _%tl4831448818%_
                               _%e4831548821%_
                               _%hd4831648825%_
                               _%tl4831748828%_
                               _%e4831848831%_
                               _%hd4831948835%_
                               _%tl4832048838%_
                               _%__splice7771777718%_
                               _%target4832148841%_
                               _%tl4832348844%_)
                        (letrec ((_%loop4832448847%_
                                  (lambda (_%hd4832248851%_ _%body4832848854%_)
                                    (if (gx#stx-pair? _%hd4832248851%_)
                                        (let ((_%e4832548857%_
                                               (gx#syntax-e _%hd4832248851%_)))
                                          (let ((_%lp-tl4832748864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4832548857%_)))
                                                (_%lp-hd4832648861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4832548857%_))))
                                            (_%loop4832448847%_
                                             _%lp-tl4832748864%_
                                             (cons _%lp-hd4832648861%_
                                                   _%body4832848854%_))))
                                        (let ((_%body4832948867%_
                                               (reverse _%body4832848854%_)))
                                          (let ((_%L48871%_ _%body4832948867%_)
                                                (_%L48873%_ _%hd4831948835%_)
                                                (_%L48874%_ _%hd4831348815%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48873%_))
                                                (_%__kont7771577716%_
                                                 _%L48871%_
                                                 _%L48873%_
                                                 _%L48874%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))))))))
                          (_%loop4832448847%_ _%target4832148841%_ '()))))
                     (_%__match7779577796%_
                      (lambda (_%e4830648791%_
                               _%hd4830748795%_
                               _%tl4830848798%_
                               _%e4830948801%_
                               _%hd4831048805%_
                               _%tl4831148808%_
                               _%e4831248811%_
                               _%hd4831348815%_
                               _%tl4831448818%_
                               _%e4831548821%_
                               _%hd4831648825%_
                               _%tl4831748828%_)
                        (if (gx#identifier? _%hd4831648825%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82631_|
                                 _%hd4831648825%_)
                                (if (gx#stx-pair? _%tl4831748828%_)
                                    (let ((_%e4831848831%_
                                           (gx#syntax-e _%tl4831748828%_)))
                                      (let ((_%tl4832048838%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4831848831%_)))
                                            (_%hd4831948835%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4831848831%_))))
                                        (if (gx#stx-null? _%tl4832048838%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4831148808%_)
                                                (let ((_%__splice7771777718%_
                                                       (gx#syntax-split-splice
                                                        _%tl4831148808%_
                                                        '0)))
                                                  (let ((_%tl4832348844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7771777718%_
                                                            '1)))
                                                        (_%target4832148841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7771777718%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4832348844%_)
                                                        (_%__match7781577816%_
                                                         _%e4830648791%_
                                                         _%hd4830748795%_
                                                         _%tl4830848798%_
                                                         _%e4830948801%_
                                                         _%hd4831048805%_
                                                         _%tl4831148808%_
                                                         _%e4831248811%_
                                                         _%hd4831348815%_
                                                         _%tl4831448818%_
                                                         _%e4831548821%_
                                                         _%hd4831648825%_
                                                         _%tl4831748828%_
                                                         _%e4831848831%_
                                                         _%hd4831948835%_
                                                         _%tl4832048838%_
                                                         _%__splice7771777718%_
                                                         _%target4832148841%_
                                                         _%tl4832348844%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4827348416%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827348416%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4827348416%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82632_|
                                     _%hd4831648825%_)
                                    (if (gx#stx-pair? _%tl4831748828%_)
                                        (let ((_%e4834548709%_
                                               (gx#syntax-e _%tl4831748828%_)))
                                          (let ((_%tl4834748716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4834548709%_)))
                                                (_%hd4834648713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4834548709%_))))
                                            (if (gx#stx-null? _%tl4834748716%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4831148808%_)
                                                    (let ((_%__splice7772177722%_
                                                           (gx#syntax-split-splice
                                                            _%tl4831148808%_
                                                            '0)))
                                                      (let ((_%tl4835048722%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7772177722%_ '1)))
                    (_%target4834848719%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7772177722%_ '0))))
                (if (gx#stx-null? _%tl4835048722%_)
                    (_%__match7785977860%_
                     _%e4830648791%_
                     _%hd4830748795%_
                     _%tl4830848798%_
                     _%e4830948801%_
                     _%hd4831048805%_
                     _%tl4831148808%_
                     _%e4831248811%_
                     _%hd4831348815%_
                     _%tl4831448818%_
                     _%e4831548821%_
                     _%hd4831648825%_
                     _%tl4831748828%_
                     _%e4834548709%_
                     _%hd4834648713%_
                     _%tl4834748716%_
                     _%__splice7772177722%_
                     _%target4834848719%_
                     _%tl4835048722%_)
                    (let () (declare (not safe)) (_%g4827348416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827348416%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4827348416%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82633_|
                                         _%hd4831648825%_)
                                        (if (gx#stx-pair? _%tl4831748828%_)
                                            (let ((_%e4837248587%_
                                                   (gx#syntax-e
                                                    _%tl4831748828%_)))
                                              (let ((_%tl4837448594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4837248587%_)))
                                                    (_%hd4837348591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4837248587%_))))
                                                (if (gx#stx-null?
                                                     _%tl4837448594%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4831148808%_)
                                                        (let ((_%__splice7772577726%_
                                                               (gx#syntax-split-splice
                                                                _%tl4831148808%_
                                                                '0)))
                                                          (let ((_%tl4837748600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7772577726%_ '1)))
                        (_%target4837548597%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7772577726%_ '0))))
                    (if (gx#stx-null? _%tl4837748600%_)
                        (_%__match7790377904%_
                         _%e4830648791%_
                         _%hd4830748795%_
                         _%tl4830848798%_
                         _%e4830948801%_
                         _%hd4831048805%_
                         _%tl4831148808%_
                         _%e4831248811%_
                         _%hd4831348815%_
                         _%tl4831448818%_
                         _%e4831548821%_
                         _%hd4831648825%_
                         _%tl4831748828%_
                         _%e4837248587%_
                         _%hd4837348591%_
                         _%tl4837448594%_
                         _%__splice7772577726%_
                         _%target4837548597%_
                         _%tl4837748600%_)
                        (let () (declare (not safe)) (_%g4827348416%_)))))
                (let () (declare (not safe)) (_%g4827348416%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827348416%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827348416%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82634_|
                                             _%hd4831648825%_)
                                            (if (gx#stx-pair? _%tl4831748828%_)
                                                (let ((_%e4839948463%_
                                                       (gx#syntax-e
                                                        _%tl4831748828%_)))
                                                  (let ((_%tl4840148470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4839948463%_)))
                                                        (_%hd4840048467%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4839948463%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4840148470%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4831148808%_)
                                                            (let ((_%__splice7772977730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4831148808%_ '0)))
                      (let ((_%tl4840448476%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7772977730%_ '1)))
                            (_%target4840248473%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7772977730%_ '0))))
                        (if (gx#stx-null? _%tl4840448476%_)
                            (_%__match7794777948%_
                             _%e4830648791%_
                             _%hd4830748795%_
                             _%tl4830848798%_
                             _%e4830948801%_
                             _%hd4831048805%_
                             _%tl4831148808%_
                             _%e4831248811%_
                             _%hd4831348815%_
                             _%tl4831448818%_
                             _%e4831548821%_
                             _%hd4831648825%_
                             _%tl4831748828%_
                             _%e4839948463%_
                             _%hd4840048467%_
                             _%tl4840148470%_
                             _%__splice7772977730%_
                             _%target4840248473%_
                             _%tl4840448476%_)
                            (let () (declare (not safe)) (_%g4827348416%_)))))
                    (let () (declare (not safe)) (_%g4827348416%_)))
                (let () (declare (not safe)) (_%g4827348416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827348416%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827348416%_))))))
                            (let () (declare (not safe)) (_%g4827348416%_)))))
                     (_%__match7777177772%_
                      (lambda (_%e4827948913%_
                               _%hd4828048917%_
                               _%tl4828148920%_
                               _%e4828248923%_
                               _%hd4828348927%_
                               _%tl4828448930%_
                               _%e4828548933%_
                               _%hd4828648937%_
                               _%tl4828748940%_
                               _%e4828848943%_
                               _%hd4828948947%_
                               _%tl4829048950%_
                               _%e4829148953%_
                               _%hd4829248957%_
                               _%tl4829348960%_
                               _%__splice7771377714%_
                               _%target4829448963%_
                               _%tl4829648966%_)
                        (letrec ((_%loop4829748969%_
                                  (lambda (_%hd4829548973%_ _%body4830148976%_)
                                    (if (gx#stx-pair? _%hd4829548973%_)
                                        (let ((_%e4829848979%_
                                               (gx#syntax-e _%hd4829548973%_)))
                                          (let ((_%lp-tl4830048986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4829848979%_)))
                                                (_%lp-hd4829948983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4829848979%_))))
                                            (_%loop4829748969%_
                                             _%lp-tl4830048986%_
                                             (cons _%lp-hd4829948983%_
                                                   _%body4830148976%_))))
                                        (let ((_%body4830248989%_
                                               (reverse _%body4830148976%_)))
                                          (let ((_%L48993%_ _%body4830248989%_)
                                                (_%L48995%_ _%hd4829248957%_)
                                                (_%L48996%_ _%hd4828948947%_)
                                                (_%L48997%_ _%hd4828648937%_))
                                            (if (let ((__tmp82635
                                                       (gx#syntax-local-value
                                                        _%L48995%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82635))
                                                (_%__kont7771177712%_
                                                 _%L48993%_
                                                 _%L48995%_
                                                 _%L48996%_
                                                 _%L48997%_)
                                                (_%__match7779577796%_
                                                 _%e4827948913%_
                                                 _%hd4828048917%_
                                                 _%tl4828148920%_
                                                 _%e4828248923%_
                                                 _%hd4828348927%_
                                                 _%tl4828448930%_
                                                 _%e4828548933%_
                                                 _%hd4828648937%_
                                                 _%tl4828748940%_
                                                 _%e4828848943%_
                                                 _%hd4828948947%_
                                                 _%tl4829048950%_))))))))
                          (_%loop4829748969%_ _%target4829448963%_ '())))))
                (if (gx#stx-pair? _%__stx7770877709%_)
                    (let ((_%e4827948913%_ (gx#syntax-e _%__stx7770877709%_)))
                      (let ((_%tl4828148920%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4827948913%_)))
                            (_%hd4828048917%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4827948913%_))))
                        (if (gx#stx-pair? _%tl4828148920%_)
                            (let ((_%e4828248923%_
                                   (gx#syntax-e _%tl4828148920%_)))
                              (let ((_%tl4828448930%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4828248923%_)))
                                    (_%hd4828348927%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4828248923%_))))
                                (if (gx#stx-pair? _%hd4828348927%_)
                                    (let ((_%e4828548933%_
                                           (gx#syntax-e _%hd4828348927%_)))
                                      (let ((_%tl4828748940%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4828548933%_)))
                                            (_%hd4828648937%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4828548933%_))))
                                        (if (gx#stx-pair? _%tl4828748940%_)
                                            (let ((_%e4828848943%_
                                                   (gx#syntax-e
                                                    _%tl4828748940%_)))
                                              (let ((_%tl4829048950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4828848943%_)))
                                                    (_%hd4828948947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4828848943%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4829048950%_)
                                                    (let ((_%e4829148953%_
                                                           (gx#syntax-e
                                                            _%tl4829048950%_)))
                                                      (let ((_%tl4829348960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4829148953%_)))
                    (_%hd4829248957%_
                     (let () (declare (not safe)) (##car _%e4829148953%_))))
                (if (gx#stx-null? _%tl4829348960%_)
                    (if (gx#stx-pair/null? _%tl4828448930%_)
                        (let ((_%__splice7771377714%_
                               (gx#syntax-split-splice _%tl4828448930%_ '0)))
                          (let ((_%tl4829648966%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7771377714%_ '1)))
                                (_%target4829448963%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7771377714%_ '0))))
                            (if (gx#stx-null? _%tl4829648966%_)
                                (_%__match7777177772%_
                                 _%e4827948913%_
                                 _%hd4828048917%_
                                 _%tl4828148920%_
                                 _%e4828248923%_
                                 _%hd4828348927%_
                                 _%tl4828448930%_
                                 _%e4828548933%_
                                 _%hd4828648937%_
                                 _%tl4828748940%_
                                 _%e4828848943%_
                                 _%hd4828948947%_
                                 _%tl4829048950%_
                                 _%e4829148953%_
                                 _%hd4829248957%_
                                 _%tl4829348960%_
                                 _%__splice7771377714%_
                                 _%target4829448963%_
                                 _%tl4829648966%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4827348416%_)))))
                        (let () (declare (not safe)) (_%g4827348416%_)))
                    (let () (declare (not safe)) (_%g4827348416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827348416%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827348416%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4827348416%_)))))
                            (let () (declare (not safe)) (_%g4827348416%_)))))
                    (let () (declare (not safe)) (_%g4827348416%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49391%_)
        (letrec ((_%expand-body49394%_
                  (lambda (_%var50395%_
                           _%Interface50397%_
                           _%body50398%_
                           _%checked?50399%_)
                    (let* ((_%type50401%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49391%_
                               _%Interface50397%_)))
                           (_%g5040450448%_
                            (lambda (_%g5040550444%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5040550444%_)))
                           (_%g5040350606%_
                            (lambda (_%g5040550452%_)
                              (if (gx#stx-pair? _%g5040550452%_)
                                  (let ((_%e5041350455%_
                                         (gx#syntax-e _%g5040550452%_)))
                                    (let ((_%hd5041450459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5041350455%_)))
                                          (_%tl5041550462%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5041350455%_))))
                                      (if (gx#stx-pair? _%tl5041550462%_)
                                          (let ((_%e5041650465%_
                                                 (gx#syntax-e
                                                  _%tl5041550462%_)))
                                            (let ((_%hd5041750469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5041650465%_)))
                                                  (_%tl5041850472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5041650465%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5041850472%_)
                                                  (let ((_%e5041950475%_
                                                         (gx#syntax-e
                                                          _%tl5041850472%_)))
                                                    (let ((_%hd5042050479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5041950475%_)))
                                                          (_%tl5042150482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5041950475%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5042150482%_)
                                                          (let ((_%e5042250485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5042150482%_)))
                    (let ((_%hd5042350489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5042250485%_)))
                          (_%tl5042450492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5042250485%_))))
                      (if (gx#stx-pair? _%tl5042450492%_)
                          (let ((_%e5042550495%_
                                 (gx#syntax-e _%tl5042450492%_)))
                            (let ((_%hd5042650499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5042550495%_)))
                                  (_%tl5042750502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5042550495%_))))
                              (if (gx#stx-pair? _%tl5042750502%_)
                                  (let ((_%e5042850505%_
                                         (gx#syntax-e _%tl5042750502%_)))
                                    (let ((_%hd5042950509%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5042850505%_)))
                                          (_%tl5043050512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5042850505%_))))
                                      (if (gx#stx-pair? _%tl5043050512%_)
                                          (let ((_%e5043150515%_
                                                 (gx#syntax-e
                                                  _%tl5043050512%_)))
                                            (let ((_%hd5043250519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5043150515%_)))
                                                  (_%tl5043350522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5043150515%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5043250519%_)
                                                  (let ((_g82636_
                                                         (gx#syntax-split-splice
                                                          _%hd5043250519%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82636_)
                           (##vector-length _g82636_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82637_ 2)))
                    (error "Context expects 2 values" _g82637_)))
              (let ((_%target5043450525%_
                     (let () (declare (not safe)) (##vector-ref _g82636_ 0)))
                    (_%tl5043650528%_
                     (let () (declare (not safe)) (##vector-ref _g82636_ 1))))
                (if (gx#stx-null? _%tl5043650528%_)
                    (letrec ((_%loop5043750531%_
                              (lambda (_%hd5043550535%_ _%body5044150538%_)
                                (if (gx#stx-pair? _%hd5043550535%_)
                                    (let ((_%e5043850541%_
                                           (gx#syntax-e _%hd5043550535%_)))
                                      (let ((_%lp-hd5043950545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5043850541%_)))
                                            (_%lp-tl5044050548%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5043850541%_))))
                                        (_%loop5043750531%_
                                         _%lp-tl5044050548%_
                                         (cons _%lp-hd5043950545%_
                                               _%body5044150538%_))))
                                    (let ((_%body5044250551%_
                                           (reverse _%body5044150538%_)))
                                      (if (gx#stx-null? _%tl5043350522%_)
                                          ((lambda (_%L50555%_
                                                    _%L50557%_
                                                    _%L50558%_
                                                    _%L50559%_
                                                    _%L50560%_
                                                    _%L50561%_
                                                    _%L50562%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50559%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50560%_ '()))
                                         (cons _%L50559%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50562%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50559%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50561%_ '()))
                               (cons _%L50558%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50557%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5059750600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5059850603%_)
                      (cons _%g5059750600%_ _%g5059850603%_))
                    '()
                    _%L50555%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5044250551%_
                                           _%hd5042950509%_
                                           _%hd5042650499%_
                                           _%hd5042350489%_
                                           _%hd5042050479%_
                                           _%hd5041750469%_
                                           _%hd5041450459%_)
                                          (_%g5040450448%_
                                           _%g5040550452%_)))))))
                      (_%loop5043750531%_ _%target5043450525%_ '()))
                    (_%g5040450448%_ _%g5040550452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5040450448%_
                                                   _%g5040550452%_))))
                                          (_%g5040450448%_ _%g5040550452%_))))
                                  (_%g5040450448%_ _%g5040550452%_))))
                          (_%g5040450448%_ _%g5040550452%_))))
                  (_%g5040450448%_ _%g5040550452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5040450448%_
                                                   _%g5040550452%_))))
                                          (_%g5040450448%_ _%g5040550452%_))))
                                  (_%g5040450448%_ _%g5040550452%_)))))
                      (_%g5040350606%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50401%_
                             (let ((__obj82471 _%type50401%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82471
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82471
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj82471
                                    'instance-type)))
                             _%var50395%_
                             _%checked?50399%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50398%_)))))
                 (_%expand49396%_
                  (lambda (_%var50194%_
                           _%Interface50196%_
                           _%body50197%_
                           _%checked?50198%_
                           _%checked-methods?50199%_
                           _%maybe?50200%_)
                    (let* ((_%g5020250210%_
                            (lambda (_%g5020350206%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5020350206%_)))
                           (_%g5020150387%_
                            (lambda (_%g5020350214%_)
                              ((lambda (_%L50217%_)
                                 (if _%checked?50198%_
                                     (if _%maybe?50200%_
                                         (let* ((_%g5022950244%_
                                                 (lambda (_%g5023050240%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5023050240%_)))
                                                (_%g5022850290%_
                                                 (lambda (_%g5023050248%_)
                                                   (if (gx#stx-pair?
                                                        _%g5023050248%_)
                                                       (let ((_%e5023350251%_
                                                              (gx#syntax-e
                                                               _%g5023050248%_)))
                                                         (let ((_%hd5023450255%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5023350251%_)))
                       (_%tl5023550258%_
                        (let () (declare (not safe)) (##cdr _%e5023350251%_))))
                   (if (gx#stx-pair? _%tl5023550258%_)
                       (let ((_%e5023650261%_ (gx#syntax-e _%tl5023550258%_)))
                         (let ((_%hd5023750265%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5023650261%_)))
                               (_%tl5023850268%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5023650261%_))))
                           (if (gx#stx-null? _%tl5023850268%_)
                               ((lambda (_%L50271%_ _%L50273%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50273%_
                                                    (cons (cons _%L50271%_
                                                                (cons _%L50273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50273%_
                                                                (cons _%L50217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50273%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5023750265%_
                                _%hd5023450255%_)
                               (_%g5022950244%_ _%g5023050248%_))))
                       (_%g5022950244%_ _%g5023050248%_))))
               (_%g5022950244%_ _%g5023050248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5022850290%_
                                            (list _%var50194%_
                                                  _%Interface50196%_)))
                                         (let* ((_%g5029450309%_
                                                 (lambda (_%g5029550305%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5029550305%_)))
                                                (_%g5029350353%_
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
                                              (cons _%L50217%_ '()))))
                                _%hd5030250330%_
                                _%hd5029950320%_)
                               (_%g5029450309%_ _%g5029550313%_))))
                       (_%g5029450309%_ _%g5029550313%_))))
               (_%g5029450309%_ _%g5029550313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5029350353%_
                                            (list _%var50194%_
                                                  _%Interface50196%_))))
                                     (if _%maybe?50200%_
                                         (let* ((_%g5035750365%_
                                                 (lambda (_%g5035850361%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5035850361%_)))
                                                (_%g5035650383%_
                                                 (lambda (_%g5035850369%_)
                                                   ((lambda (_%L50372%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50217%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50372%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5035850369%_))))
                                           (_%g5035650383%_ _%var50194%_))
                                         _%L50217%_)))
                               _%g5020350214%_))))
                      (_%g5020150387%_
                       (_%expand-body49394%_
                        _%var50194%_
                        _%Interface50196%_
                        _%body50197%_
                        (let ((_%$e50391%_ _%checked?50198%_))
                          (if _%$e50391%_
                              _%$e50391%_
                              _%checked-methods?50199%_))))))))
          (let* ((_%__stx7795077951%_ _%stx49391%_)
                 (_%g4940249545%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7795077951%_))))
            (let ((_%__kont7795377954%_
                   (lambda (_%L50122%_ _%L50124%_ _%L50125%_ _%L50126%_)
                     (let* ((_%g5015150159%_
                             (lambda (_%g5015250155%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5015250155%_)))
                            (_%g5015050186%_
                             (lambda (_%g5015250163%_)
                               ((lambda (_%L50166%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50126%_
                                                    (cons _%L50125%_
                                                          (cons _%L50166%_
                                                                '())))
                                              (foldr (lambda (_%g5017750180%_
                                                              _%g5017850183%_)
                                                       (cons _%g5017750180%_
                                                             _%g5017850183%_))
                                                     '()
                                                     _%L50122%_))))
                                _%g5015250163%_))))
                       (_%g5015050186%_
                        (let ((__obj82472 (gx#syntax-local-value _%L50124%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj82472
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj82472
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj82472
                               'identifier)))))))
                  (_%__kont7795777958%_
                   (lambda (_%L50000%_ _%L50002%_ _%L50003%_)
                     (_%expand49396%_
                      _%L50003%_
                      _%L50002%_
                      (foldr (lambda (_%g5002650029%_ _%g5002750032%_)
                               (cons _%g5002650029%_ _%g5002750032%_))
                             '()
                             _%L50000%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7796177962%_
                   (lambda (_%L49878%_ _%L49880%_ _%L49881%_)
                     (_%expand49396%_
                      _%L49881%_
                      _%L49880%_
                      (foldr (lambda (_%g4990449907%_ _%g4990549910%_)
                               (cons _%g4990449907%_ _%g4990549910%_))
                             '()
                             _%L49878%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7796577966%_
                   (lambda (_%L49756%_ _%L49758%_ _%L49759%_)
                     (_%expand49396%_
                      _%L49759%_
                      _%L49758%_
                      (foldr (lambda (_%g4978249785%_ _%g4978349788%_)
                               (cons _%g4978249785%_ _%g4978349788%_))
                             '()
                             _%L49756%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7796977970%_
                   (lambda (_%L49632%_ _%L49634%_ _%L49635%_)
                     (_%expand49396%_
                      _%L49635%_
                      _%L49634%_
                      (foldr (lambda (_%g4966049663%_ _%g4966149666%_)
                               (cons _%g4966049663%_ _%g4966149666%_))
                             '()
                             _%L49632%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7818978190%_
                      (lambda (_%e4951649552%_
                               _%hd4951749556%_
                               _%tl4951849559%_
                               _%e4951949562%_
                               _%hd4952049566%_
                               _%tl4952149569%_
                               _%e4952249572%_
                               _%hd4952349576%_
                               _%tl4952449579%_
                               _%e4952549582%_
                               _%hd4952649586%_
                               _%tl4952749589%_
                               _%e4952849592%_
                               _%hd4952949596%_
                               _%tl4953049599%_
                               _%__splice7797177972%_
                               _%target4953149602%_
                               _%tl4953349605%_)
                        (letrec ((_%loop4953449608%_
                                  (lambda (_%hd4953249612%_ _%body4953849615%_)
                                    (if (gx#stx-pair? _%hd4953249612%_)
                                        (let ((_%e4953549618%_
                                               (gx#syntax-e _%hd4953249612%_)))
                                          (let ((_%lp-tl4953749625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953549618%_)))
                                                (_%lp-hd4953649622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953549618%_))))
                                            (_%loop4953449608%_
                                             _%lp-tl4953749625%_
                                             (cons _%lp-hd4953649622%_
                                                   _%body4953849615%_))))
                                        (let ((_%body4953949628%_
                                               (reverse _%body4953849615%_)))
                                          (let ((_%L49632%_ _%body4953949628%_)
                                                (_%L49634%_ _%hd4952949596%_)
                                                (_%L49635%_ _%hd4952349576%_))
                                            (if (and (gx#identifier?
                                                      _%L49635%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49634%_)))
                                                (_%__kont7796977970%_
                                                 _%L49632%_
                                                 _%L49634%_
                                                 _%L49635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))))))))
                          (_%loop4953449608%_ _%target4953149602%_ '()))))
                     (_%__match7814578146%_
                      (lambda (_%e4948949676%_
                               _%hd4949049680%_
                               _%tl4949149683%_
                               _%e4949249686%_
                               _%hd4949349690%_
                               _%tl4949449693%_
                               _%e4949549696%_
                               _%hd4949649700%_
                               _%tl4949749703%_
                               _%e4949849706%_
                               _%hd4949949710%_
                               _%tl4950049713%_
                               _%e4950149716%_
                               _%hd4950249720%_
                               _%tl4950349723%_
                               _%__splice7796777968%_
                               _%target4950449726%_
                               _%tl4950649729%_)
                        (letrec ((_%loop4950749732%_
                                  (lambda (_%hd4950549736%_ _%body4951149739%_)
                                    (if (gx#stx-pair? _%hd4950549736%_)
                                        (let ((_%e4950849742%_
                                               (gx#syntax-e _%hd4950549736%_)))
                                          (let ((_%lp-tl4951049749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4950849742%_)))
                                                (_%lp-hd4950949746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4950849742%_))))
                                            (_%loop4950749732%_
                                             _%lp-tl4951049749%_
                                             (cons _%lp-hd4950949746%_
                                                   _%body4951149739%_))))
                                        (let ((_%body4951249752%_
                                               (reverse _%body4951149739%_)))
                                          (let ((_%L49756%_ _%body4951249752%_)
                                                (_%L49758%_ _%hd4950249720%_)
                                                (_%L49759%_ _%hd4949649700%_))
                                            (if (and (gx#identifier?
                                                      _%L49759%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49758%_)))
                                                (_%__kont7796577966%_
                                                 _%L49756%_
                                                 _%L49758%_
                                                 _%L49759%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))))))))
                          (_%loop4950749732%_ _%target4950449726%_ '()))))
                     (_%__match7810178102%_
                      (lambda (_%e4946249798%_
                               _%hd4946349802%_
                               _%tl4946449805%_
                               _%e4946549808%_
                               _%hd4946649812%_
                               _%tl4946749815%_
                               _%e4946849818%_
                               _%hd4946949822%_
                               _%tl4947049825%_
                               _%e4947149828%_
                               _%hd4947249832%_
                               _%tl4947349835%_
                               _%e4947449838%_
                               _%hd4947549842%_
                               _%tl4947649845%_
                               _%__splice7796377964%_
                               _%target4947749848%_
                               _%tl4947949851%_)
                        (letrec ((_%loop4948049854%_
                                  (lambda (_%hd4947849858%_ _%body4948449861%_)
                                    (if (gx#stx-pair? _%hd4947849858%_)
                                        (let ((_%e4948149864%_
                                               (gx#syntax-e _%hd4947849858%_)))
                                          (let ((_%lp-tl4948349871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4948149864%_)))
                                                (_%lp-hd4948249868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4948149864%_))))
                                            (_%loop4948049854%_
                                             _%lp-tl4948349871%_
                                             (cons _%lp-hd4948249868%_
                                                   _%body4948449861%_))))
                                        (let ((_%body4948549874%_
                                               (reverse _%body4948449861%_)))
                                          (let ((_%L49878%_ _%body4948549874%_)
                                                (_%L49880%_ _%hd4947549842%_)
                                                (_%L49881%_ _%hd4946949822%_))
                                            (if (and (gx#identifier?
                                                      _%L49881%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49880%_)))
                                                (_%__kont7796177962%_
                                                 _%L49878%_
                                                 _%L49880%_
                                                 _%L49881%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))))))))
                          (_%loop4948049854%_ _%target4947749848%_ '()))))
                     (_%__match7805778058%_
                      (lambda (_%e4943549920%_
                               _%hd4943649924%_
                               _%tl4943749927%_
                               _%e4943849930%_
                               _%hd4943949934%_
                               _%tl4944049937%_
                               _%e4944149940%_
                               _%hd4944249944%_
                               _%tl4944349947%_
                               _%e4944449950%_
                               _%hd4944549954%_
                               _%tl4944649957%_
                               _%e4944749960%_
                               _%hd4944849964%_
                               _%tl4944949967%_
                               _%__splice7795977960%_
                               _%target4945049970%_
                               _%tl4945249973%_)
                        (letrec ((_%loop4945349976%_
                                  (lambda (_%hd4945149980%_ _%body4945749983%_)
                                    (if (gx#stx-pair? _%hd4945149980%_)
                                        (let ((_%e4945449986%_
                                               (gx#syntax-e _%hd4945149980%_)))
                                          (let ((_%lp-tl4945649993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4945449986%_)))
                                                (_%lp-hd4945549990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4945449986%_))))
                                            (_%loop4945349976%_
                                             _%lp-tl4945649993%_
                                             (cons _%lp-hd4945549990%_
                                                   _%body4945749983%_))))
                                        (let ((_%body4945849996%_
                                               (reverse _%body4945749983%_)))
                                          (let ((_%L50000%_ _%body4945849996%_)
                                                (_%L50002%_ _%hd4944849964%_)
                                                (_%L50003%_ _%hd4944249944%_))
                                            (if (and (gx#identifier?
                                                      _%L50003%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50002%_)))
                                                (_%__kont7795777958%_
                                                 _%L50000%_
                                                 _%L50002%_
                                                 _%L50003%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))))))))
                          (_%loop4945349976%_ _%target4945049970%_ '()))))
                     (_%__match7803778038%_
                      (lambda (_%e4943549920%_
                               _%hd4943649924%_
                               _%tl4943749927%_
                               _%e4943849930%_
                               _%hd4943949934%_
                               _%tl4944049937%_
                               _%e4944149940%_
                               _%hd4944249944%_
                               _%tl4944349947%_
                               _%e4944449950%_
                               _%hd4944549954%_
                               _%tl4944649957%_)
                        (if (gx#identifier? _%hd4944549954%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82638_|
                                 _%hd4944549954%_)
                                (if (gx#stx-pair? _%tl4944649957%_)
                                    (let ((_%e4944749960%_
                                           (gx#syntax-e _%tl4944649957%_)))
                                      (let ((_%tl4944949967%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4944749960%_)))
                                            (_%hd4944849964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4944749960%_))))
                                        (if (gx#stx-null? _%tl4944949967%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4944049937%_)
                                                (let ((_%__splice7795977960%_
                                                       (gx#syntax-split-splice
                                                        _%tl4944049937%_
                                                        '0)))
                                                  (let ((_%tl4945249973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7795977960%_
                                                            '1)))
                                                        (_%target4945049970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7795977960%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4945249973%_)
                                                        (_%__match7805778058%_
                                                         _%e4943549920%_
                                                         _%hd4943649924%_
                                                         _%tl4943749927%_
                                                         _%e4943849930%_
                                                         _%hd4943949934%_
                                                         _%tl4944049937%_
                                                         _%e4944149940%_
                                                         _%hd4944249944%_
                                                         _%tl4944349947%_
                                                         _%e4944449950%_
                                                         _%hd4944549954%_
                                                         _%tl4944649957%_
                                                         _%e4944749960%_
                                                         _%hd4944849964%_
                                                         _%tl4944949967%_
                                                         _%__splice7795977960%_
                                                         _%target4945049970%_
                                                         _%tl4945249973%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4940249545%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940249545%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4940249545%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82639_|
                                     _%hd4944549954%_)
                                    (if (gx#stx-pair? _%tl4944649957%_)
                                        (let ((_%e4947449838%_
                                               (gx#syntax-e _%tl4944649957%_)))
                                          (let ((_%tl4947649845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4947449838%_)))
                                                (_%hd4947549842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4947449838%_))))
                                            (if (gx#stx-null? _%tl4947649845%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4944049937%_)
                                                    (let ((_%__splice7796377964%_
                                                           (gx#syntax-split-splice
                                                            _%tl4944049937%_
                                                            '0)))
                                                      (let ((_%tl4947949851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7796377964%_ '1)))
                    (_%target4947749848%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7796377964%_ '0))))
                (if (gx#stx-null? _%tl4947949851%_)
                    (_%__match7810178102%_
                     _%e4943549920%_
                     _%hd4943649924%_
                     _%tl4943749927%_
                     _%e4943849930%_
                     _%hd4943949934%_
                     _%tl4944049937%_
                     _%e4944149940%_
                     _%hd4944249944%_
                     _%tl4944349947%_
                     _%e4944449950%_
                     _%hd4944549954%_
                     _%tl4944649957%_
                     _%e4947449838%_
                     _%hd4947549842%_
                     _%tl4947649845%_
                     _%__splice7796377964%_
                     _%target4947749848%_
                     _%tl4947949851%_)
                    (let () (declare (not safe)) (_%g4940249545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940249545%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4940249545%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82640_|
                                         _%hd4944549954%_)
                                        (if (gx#stx-pair? _%tl4944649957%_)
                                            (let ((_%e4950149716%_
                                                   (gx#syntax-e
                                                    _%tl4944649957%_)))
                                              (let ((_%tl4950349723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4950149716%_)))
                                                    (_%hd4950249720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4950149716%_))))
                                                (if (gx#stx-null?
                                                     _%tl4950349723%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4944049937%_)
                                                        (let ((_%__splice7796777968%_
                                                               (gx#syntax-split-splice
                                                                _%tl4944049937%_
                                                                '0)))
                                                          (let ((_%tl4950649729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7796777968%_ '1)))
                        (_%target4950449726%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7796777968%_ '0))))
                    (if (gx#stx-null? _%tl4950649729%_)
                        (_%__match7814578146%_
                         _%e4943549920%_
                         _%hd4943649924%_
                         _%tl4943749927%_
                         _%e4943849930%_
                         _%hd4943949934%_
                         _%tl4944049937%_
                         _%e4944149940%_
                         _%hd4944249944%_
                         _%tl4944349947%_
                         _%e4944449950%_
                         _%hd4944549954%_
                         _%tl4944649957%_
                         _%e4950149716%_
                         _%hd4950249720%_
                         _%tl4950349723%_
                         _%__splice7796777968%_
                         _%target4950449726%_
                         _%tl4950649729%_)
                        (let () (declare (not safe)) (_%g4940249545%_)))))
                (let () (declare (not safe)) (_%g4940249545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940249545%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940249545%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82641_|
                                             _%hd4944549954%_)
                                            (if (gx#stx-pair? _%tl4944649957%_)
                                                (let ((_%e4952849592%_
                                                       (gx#syntax-e
                                                        _%tl4944649957%_)))
                                                  (let ((_%tl4953049599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4952849592%_)))
                                                        (_%hd4952949596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4952849592%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4953049599%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4944049937%_)
                                                            (let ((_%__splice7797177972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4944049937%_ '0)))
                      (let ((_%tl4953349605%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7797177972%_ '1)))
                            (_%target4953149602%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7797177972%_ '0))))
                        (if (gx#stx-null? _%tl4953349605%_)
                            (_%__match7818978190%_
                             _%e4943549920%_
                             _%hd4943649924%_
                             _%tl4943749927%_
                             _%e4943849930%_
                             _%hd4943949934%_
                             _%tl4944049937%_
                             _%e4944149940%_
                             _%hd4944249944%_
                             _%tl4944349947%_
                             _%e4944449950%_
                             _%hd4944549954%_
                             _%tl4944649957%_
                             _%e4952849592%_
                             _%hd4952949596%_
                             _%tl4953049599%_
                             _%__splice7797177972%_
                             _%target4953149602%_
                             _%tl4953349605%_)
                            (let () (declare (not safe)) (_%g4940249545%_)))))
                    (let () (declare (not safe)) (_%g4940249545%_)))
                (let () (declare (not safe)) (_%g4940249545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940249545%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940249545%_))))))
                            (let () (declare (not safe)) (_%g4940249545%_)))))
                     (_%__match7801378014%_
                      (lambda (_%e4940850042%_
                               _%hd4940950046%_
                               _%tl4941050049%_
                               _%e4941150052%_
                               _%hd4941250056%_
                               _%tl4941350059%_
                               _%e4941450062%_
                               _%hd4941550066%_
                               _%tl4941650069%_
                               _%e4941750072%_
                               _%hd4941850076%_
                               _%tl4941950079%_
                               _%e4942050082%_
                               _%hd4942150086%_
                               _%tl4942250089%_
                               _%__splice7795577956%_
                               _%target4942350092%_
                               _%tl4942550095%_)
                        (letrec ((_%loop4942650098%_
                                  (lambda (_%hd4942450102%_ _%body4943050105%_)
                                    (if (gx#stx-pair? _%hd4942450102%_)
                                        (let ((_%e4942750108%_
                                               (gx#syntax-e _%hd4942450102%_)))
                                          (let ((_%lp-tl4942950115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4942750108%_)))
                                                (_%lp-hd4942850112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4942750108%_))))
                                            (_%loop4942650098%_
                                             _%lp-tl4942950115%_
                                             (cons _%lp-hd4942850112%_
                                                   _%body4943050105%_))))
                                        (let ((_%body4943150118%_
                                               (reverse _%body4943050105%_)))
                                          (let ((_%L50122%_ _%body4943150118%_)
                                                (_%L50124%_ _%hd4942150086%_)
                                                (_%L50125%_ _%hd4941850076%_)
                                                (_%L50126%_ _%hd4941550066%_))
                                            (if (let ((__tmp82642
                                                       (gx#syntax-local-value
                                                        _%L50124%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82642))
                                                (_%__kont7795377954%_
                                                 _%L50122%_
                                                 _%L50124%_
                                                 _%L50125%_
                                                 _%L50126%_)
                                                (_%__match7803778038%_
                                                 _%e4940850042%_
                                                 _%hd4940950046%_
                                                 _%tl4941050049%_
                                                 _%e4941150052%_
                                                 _%hd4941250056%_
                                                 _%tl4941350059%_
                                                 _%e4941450062%_
                                                 _%hd4941550066%_
                                                 _%tl4941650069%_
                                                 _%e4941750072%_
                                                 _%hd4941850076%_
                                                 _%tl4941950079%_))))))))
                          (_%loop4942650098%_ _%target4942350092%_ '())))))
                (if (gx#stx-pair? _%__stx7795077951%_)
                    (let ((_%e4940850042%_ (gx#syntax-e _%__stx7795077951%_)))
                      (let ((_%tl4941050049%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4940850042%_)))
                            (_%hd4940950046%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4940850042%_))))
                        (if (gx#stx-pair? _%tl4941050049%_)
                            (let ((_%e4941150052%_
                                   (gx#syntax-e _%tl4941050049%_)))
                              (let ((_%tl4941350059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4941150052%_)))
                                    (_%hd4941250056%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4941150052%_))))
                                (if (gx#stx-pair? _%hd4941250056%_)
                                    (let ((_%e4941450062%_
                                           (gx#syntax-e _%hd4941250056%_)))
                                      (let ((_%tl4941650069%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4941450062%_)))
                                            (_%hd4941550066%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4941450062%_))))
                                        (if (gx#stx-pair? _%tl4941650069%_)
                                            (let ((_%e4941750072%_
                                                   (gx#syntax-e
                                                    _%tl4941650069%_)))
                                              (let ((_%tl4941950079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4941750072%_)))
                                                    (_%hd4941850076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4941750072%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4941950079%_)
                                                    (let ((_%e4942050082%_
                                                           (gx#syntax-e
                                                            _%tl4941950079%_)))
                                                      (let ((_%tl4942250089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4942050082%_)))
                    (_%hd4942150086%_
                     (let () (declare (not safe)) (##car _%e4942050082%_))))
                (if (gx#stx-null? _%tl4942250089%_)
                    (if (gx#stx-pair/null? _%tl4941350059%_)
                        (let ((_%__splice7795577956%_
                               (gx#syntax-split-splice _%tl4941350059%_ '0)))
                          (let ((_%tl4942550095%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7795577956%_ '1)))
                                (_%target4942350092%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7795577956%_ '0))))
                            (if (gx#stx-null? _%tl4942550095%_)
                                (_%__match7801378014%_
                                 _%e4940850042%_
                                 _%hd4940950046%_
                                 _%tl4941050049%_
                                 _%e4941150052%_
                                 _%hd4941250056%_
                                 _%tl4941350059%_
                                 _%e4941450062%_
                                 _%hd4941550066%_
                                 _%tl4941650069%_
                                 _%e4941750072%_
                                 _%hd4941850076%_
                                 _%tl4941950079%_
                                 _%e4942050082%_
                                 _%hd4942150086%_
                                 _%tl4942250089%_
                                 _%__splice7795577956%_
                                 _%target4942350092%_
                                 _%tl4942550095%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4940249545%_)))))
                        (let () (declare (not safe)) (_%g4940249545%_)))
                    (let () (declare (not safe)) (_%g4940249545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940249545%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940249545%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4940249545%_)))))
                            (let () (declare (not safe)) (_%g4940249545%_)))))
                    (let () (declare (not safe)) (_%g4940249545%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50616%_)
        (let* ((_%__stx7819278193%_ _%stx50616%_)
               (_%g5062150681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7819278193%_))))
          (let ((_%__kont7819578196%_
                 (lambda (_%L51243%_ _%L51245%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51245%_ '()))
                               (foldr (lambda (_%g5126151264%_ _%g5126251267%_)
                                        (cons _%g5126151264%_ _%g5126251267%_))
                                      '()
                                      _%L51243%_)))))
                (_%__kont7819978200%_
                 (lambda (_%L50829%_ _%L50831%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50831%_)
                       (let* ((_%g5085150858%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50616%_
                                _%L50831%_))
                              (_%E5085350864%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5085150858%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5085451162%_
                               (lambda (_%parts50868%_ _%var50870%_)
                                 (let ((_%$e50872%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50870%_))))
                                   (if _%$e50872%_
                                       ((lambda (_%te50876%_)
                                          (let _%loop50879%_ ((_%parts50882%_
                                                               _%parts50868%_)
                                                              (_%type50884%_
                                                               (##direct-structure-ref
                                                                _%te50876%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50885%_
                                                               _%var50870%_)
                                                              (_%checked-method?50886%_
                                                               (##direct-structure-ref
                                                                _%te50876%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50887%_
                                                               '#f))
                                            (let* ((_%parts5088850896%_
                                                    _%parts50882%_)
                                                   (_%else5089050957%_
                                                    (lambda ()
                                                      (let* ((_%g5090850916%_
                                                              (lambda (_%g5090950912%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5090950912%_)))
                     (_%g5090750953%_
                      (lambda (_%g5090950920%_)
                        ((lambda (_%L50923%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50923%_
                                       (foldr (lambda (_%g5094450947%_
                                                       _%g5094550950%_)
                                                (cons _%g5094450947%_
                                                      _%g5094550950%_))
                                              '()
                                              _%L50829%_))))
                         _%g5090950920%_))))
                (_%g5090750953%_ _%object50885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5089251136%_
                                                    (lambda (_%rest50961%_
                                                             _%part50963%_)
                                                      (if (and (not _%nil-check?50887%_)
                                                               (let ((__tmp82643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part50963%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp82643)))
                  (let ((_%str50967%_ (symbol->string _%part50963%_)))
                    (_%loop50879%_
                     (cons (let ((__tmp82644
                                  (substring
                                   _%str50967%_
                                   '1
                                   (string-length _%str50967%_))))
                             (declare (not safe))
                             (##string->symbol __tmp82644))
                           _%rest50961%_)
                     _%type50884%_
                     _%object50885%_
                     _%checked-method?50886%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50884%_))
                      (let* ((_%g5097250987%_
                              (lambda (_%g5097350983%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5097350983%_)))
                             (_%g5097151056%_
                              (lambda (_%g5097350991%_)
                                (if (gx#stx-pair? _%g5097350991%_)
                                    (let ((_%e5097650994%_
                                           (gx#syntax-e _%g5097350991%_)))
                                      (let ((_%hd5097750998%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5097650994%_)))
                                            (_%tl5097851001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5097650994%_))))
                                        (if (gx#stx-pair? _%tl5097851001%_)
                                            (let ((_%e5097951004%_
                                                   (gx#syntax-e
                                                    _%tl5097851001%_)))
                                              (let ((_%hd5098051008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5097951004%_)))
                                                    (_%tl5098151011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5097951004%_))))
                                                (if (gx#stx-null?
                                                     _%tl5098151011%_)
                                                    ((lambda (_%L51014%_
                                                              _%L51016%_)
                                                       (if (null? _%rest50961%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51014%_ (cons _%L51016%_ '()))
                               (foldr (lambda (_%g5103551038%_ _%g5103651041%_)
                                        (cons _%g5103551038%_ _%g5103651041%_))
                                      '()
                                      _%L50829%_)))
                   (let ((_%$e51044%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50884%_
                           _%part50963%_)))
                     (if _%$e51044%_
                         ((lambda (_%slot-type51048%_)
                            (let ((_%slot-type51051%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50616%_
                                      _%slot-type51048%_))))
                              (_%loop50879%_
                               _%rest50961%_
                               _%slot-type51051%_
                               (cons _%L51014%_ (cons _%L51016%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50884%_
                                _%part50963%_)
                               '#f)))
                          _%$e51044%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50616%_
                          _%L50831%_
                          _%part50963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5098051008%_
                                                     _%hd5097750998%_)
                                                    (_%g5097250987%_
                                                     _%g5097350991%_))))
                                            (_%g5097250987%_
                                             _%g5097350991%_))))
                                    (_%g5097250987%_ _%g5097350991%_)))))
                        (_%g5097151056%_
                         (list (if _%nil-check?50887%_
                                   (cons 'check-nil!
                                         (cons _%object50885%_ '()))
                                   _%object50885%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50616%_
                                _%type50884%_
                                _%part50963%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50884%_))
                          (if (null? _%rest50961%_)
                              (let* ((_%g5106251077%_
                                      (lambda (_%g5106351073%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5106351073%_)))
                                     (_%g5106151130%_
                                      (lambda (_%g5106351081%_)
                                        (if (gx#stx-pair? _%g5106351081%_)
                                            (let ((_%e5106651084%_
                                                   (gx#syntax-e
                                                    _%g5106351081%_)))
                                              (let ((_%hd5106751088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5106651084%_)))
                                                    (_%tl5106851091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5106651084%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5106851091%_)
                                                    (let ((_%e5106951094%_
                                                           (gx#syntax-e
                                                            _%tl5106851091%_)))
                                                      (let ((_%hd5107051098%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5106951094%_)))
                    (_%tl5107151101%_
                     (let () (declare (not safe)) (##cdr _%e5106951094%_))))
                (if (gx#stx-null? _%tl5107151101%_)
                    ((lambda (_%L51104%_ _%L51106%_)
                       (cons _%L51104%_
                             (cons _%L51106%_
                                   (foldr (lambda (_%g5112151124%_
                                                   _%g5112251127%_)
                                            (cons _%g5112151124%_
                                                  _%g5112251127%_))
                                          '()
                                          _%L50829%_))))
                     _%hd5107051098%_
                     _%hd5106751088%_)
                    (_%g5106251077%_ _%g5106351081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5106251077%_
                                                     _%g5106351081%_))))
                                            (_%g5106251077%_
                                             _%g5106351081%_)))))
                                (_%g5106151130%_
                                 (list (if _%nil-check?50887%_
                                           (cons 'check-nil!
                                                 (cons _%object50885%_ '()))
                                           _%object50885%_)
                                       (gx#stx-identifier
                                        _%L50831%_
                                        (if _%checked-method?50886%_ '"" '"&")
                                        (let ((__obj82473 _%type50884%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj82473
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj82473
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj82473
                                               'name)))
                                        '"-"
                                        _%part50963%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50616%_
                               _%L50831%_
                               _%part50963%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50616%_
                           _%type50884%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5088850896%_))
                                                  (let ((_%hd5089351140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5088850896%_)))
                                                        (_%tl5089451143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5088850896%_))))
                                                    (let* ((_%part51146%_
                                                            _%hd5089351140%_)
                                                           (_%rest51149%_
                                                            _%tl5089451143%_))
                                                      (_%K5089251136%_
                                                       _%rest51149%_
                                                       _%part51146%_)))
                                                  (_%else5089050957%_)))))
                                        _%$e50872%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50831%_
                                                   (foldr (lambda (_%g5115351156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5115451159%_)
                    (cons _%g5115351156%_ _%g5115451159%_))
                  '()
                  _%L50829%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5085150858%_))
                             (let ((_%hd5085551166%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5085150858%_)))
                                   (_%tl5085651169%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5085150858%_))))
                               (let* ((_%var51172%_ _%hd5085551166%_)
                                      (_%parts51175%_ _%tl5085651169%_))
                                 (_%K5085451162%_
                                  _%parts51175%_
                                  _%var51172%_)))
                             (_%E5085350864%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50831%_
                                   (foldr (lambda (_%g5117751180%_
                                                   _%g5117851183%_)
                                            (cons _%g5117751180%_
                                                  _%g5117851183%_))
                                          '()
                                          _%L50829%_))))))
                (_%__kont7820378204%_
                 (lambda (_%L50728%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5074350746%_ _%g5074450749%_)
                                  (cons _%g5074350746%_ _%g5074450749%_))
                                '()
                                _%L50728%_)))))
            (let* ((_%__match7827978280%_
                    (lambda (_%e5066450688%_
                             _%hd5066550692%_
                             _%tl5066650695%_
                             _%__splice7820578206%_
                             _%target5066750698%_
                             _%tl5066950701%_)
                      (letrec ((_%loop5067050704%_
                                (lambda (_%hd5066850708%_ _%arg5067450711%_)
                                  (if (gx#stx-pair? _%hd5066850708%_)
                                      (let ((_%e5067150714%_
                                             (gx#syntax-e _%hd5066850708%_)))
                                        (let ((_%lp-tl5067350721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5067150714%_)))
                                              (_%lp-hd5067250718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5067150714%_))))
                                          (_%loop5067050704%_
                                           _%lp-tl5067350721%_
                                           (cons _%lp-hd5067250718%_
                                                 _%arg5067450711%_))))
                                      (let ((_%arg5067550724%_
                                             (reverse _%arg5067450711%_)))
                                        (_%__kont7820378204%_
                                         _%arg5067550724%_))))))
                        (_%loop5067050704%_ _%target5066750698%_ '()))))
                   (_%__match7826578266%_
                    (lambda (_%e5064250759%_
                             _%hd5064350763%_
                             _%tl5064450766%_
                             _%e5064550769%_
                             _%hd5064650773%_
                             _%tl5064750776%_
                             _%e5064850779%_
                             _%hd5064950783%_
                             _%tl5065050786%_
                             _%e5065150789%_
                             _%hd5065250793%_
                             _%tl5065350796%_
                             _%__splice7820178202%_
                             _%target5065450799%_
                             _%tl5065650802%_)
                      (letrec ((_%loop5065750805%_
                                (lambda (_%hd5065550809%_ _%rand5066150812%_)
                                  (if (gx#stx-pair? _%hd5065550809%_)
                                      (let ((_%e5065850815%_
                                             (gx#syntax-e _%hd5065550809%_)))
                                        (let ((_%lp-tl5066050822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5065850815%_)))
                                              (_%lp-hd5065950819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5065850815%_))))
                                          (_%loop5065750805%_
                                           _%lp-tl5066050822%_
                                           (cons _%lp-hd5065950819%_
                                                 _%rand5066150812%_))))
                                      (let ((_%rand5066250825%_
                                             (reverse _%rand5066150812%_)))
                                        (_%__kont7819978200%_
                                         _%rand5066250825%_
                                         _%hd5065250793%_))))))
                        (_%loop5065750805%_ _%target5065450799%_ '()))))
                   (_%__match7823978240%_
                    (lambda (_%e5064250759%_
                             _%hd5064350763%_
                             _%tl5064450766%_
                             _%e5064550769%_
                             _%hd5064650773%_
                             _%tl5064750776%_)
                      (if (gx#stx-pair? _%hd5064650773%_)
                          (let ((_%e5064850779%_
                                 (gx#syntax-e _%hd5064650773%_)))
                            (let ((_%tl5065050786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5064850779%_)))
                                  (_%hd5064950783%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5064850779%_))))
                              (if (gx#identifier? _%hd5064950783%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82645_|
                                       _%hd5064950783%_)
                                      (if (gx#stx-pair? _%tl5065050786%_)
                                          (let ((_%e5065150789%_
                                                 (gx#syntax-e
                                                  _%tl5065050786%_)))
                                            (let ((_%tl5065350796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5065150789%_)))
                                                  (_%hd5065250793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5065150789%_))))
                                              (if (gx#stx-null?
                                                   _%tl5065350796%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5064750776%_)
                                                      (let ((_%__splice7820178202%_
                                                             (gx#syntax-split-splice
                                                              _%tl5064750776%_
                                                              '0)))
                                                        (let ((_%tl5065650802%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820178202%_ '1)))
                      (_%target5065450799%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820178202%_ '0))))
                  (if (gx#stx-null? _%tl5065650802%_)
                      (_%__match7826578266%_
                       _%e5064250759%_
                       _%hd5064350763%_
                       _%tl5064450766%_
                       _%e5064550769%_
                       _%hd5064650773%_
                       _%tl5064750776%_
                       _%e5064850779%_
                       _%hd5064950783%_
                       _%tl5065050786%_
                       _%e5065150789%_
                       _%hd5065250793%_
                       _%tl5065350796%_
                       _%__splice7820178202%_
                       _%target5065450799%_
                       _%tl5065650802%_)
                      (if (gx#stx-pair/null? _%tl5064450766%_)
                          (let ((_%__splice7820578206%_
                                 (gx#syntax-split-splice _%tl5064450766%_ '0)))
                            (let ((_%tl5066950701%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7820578206%_ '1)))
                                  (_%target5066750698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7820578206%_
                                      '0))))
                              (if (gx#stx-null? _%tl5066950701%_)
                                  (_%__match7827978280%_
                                   _%e5064250759%_
                                   _%hd5064350763%_
                                   _%tl5064450766%_
                                   _%__splice7820578206%_
                                   _%target5066750698%_
                                   _%tl5066950701%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5062150681%_)))))
                          (let () (declare (not safe)) (_%g5062150681%_))))))
              (if (gx#stx-pair/null? _%tl5064450766%_)
                  (let ((_%__splice7820578206%_
                         (gx#syntax-split-splice _%tl5064450766%_ '0)))
                    (let ((_%tl5066950701%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '1)))
                          (_%target5066750698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '0))))
                      (if (gx#stx-null? _%tl5066950701%_)
                          (_%__match7827978280%_
                           _%e5064250759%_
                           _%hd5064350763%_
                           _%tl5064450766%_
                           _%__splice7820578206%_
                           _%target5066750698%_
                           _%tl5066950701%_)
                          (let () (declare (not safe)) (_%g5062150681%_)))))
                  (let () (declare (not safe)) (_%g5062150681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5064450766%_)
                                                      (let ((_%__splice7820578206%_
                                                             (gx#syntax-split-splice
                                                              _%tl5064450766%_
                                                              '0)))
                                                        (let ((_%tl5066950701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820578206%_ '1)))
                      (_%target5066750698%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820578206%_ '0))))
                  (if (gx#stx-null? _%tl5066950701%_)
                      (_%__match7827978280%_
                       _%e5064250759%_
                       _%hd5064350763%_
                       _%tl5064450766%_
                       _%__splice7820578206%_
                       _%target5066750698%_
                       _%tl5066950701%_)
                      (let () (declare (not safe)) (_%g5062150681%_)))))
              (let () (declare (not safe)) (_%g5062150681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5064450766%_)
                                              (let ((_%__splice7820578206%_
                                                     (gx#syntax-split-splice
                                                      _%tl5064450766%_
                                                      '0)))
                                                (let ((_%tl5066950701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7820578206%_
                                                          '1)))
                                                      (_%target5066750698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7820578206%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5066950701%_)
                                                      (_%__match7827978280%_
                                                       _%e5064250759%_
                                                       _%hd5064350763%_
                                                       _%tl5064450766%_
                                                       _%__splice7820578206%_
                                                       _%target5066750698%_
                                                       _%tl5066950701%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5062150681%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5062150681%_))))
                                      (if (gx#stx-pair/null? _%tl5064450766%_)
                                          (let ((_%__splice7820578206%_
                                                 (gx#syntax-split-splice
                                                  _%tl5064450766%_
                                                  '0)))
                                            (let ((_%tl5066950701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820578206%_
                                                      '1)))
                                                  (_%target5066750698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820578206%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5066950701%_)
                                                  (_%__match7827978280%_
                                                   _%e5064250759%_
                                                   _%hd5064350763%_
                                                   _%tl5064450766%_
                                                   _%__splice7820578206%_
                                                   _%target5066750698%_
                                                   _%tl5066950701%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062150681%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5062150681%_))))
                                  (if (gx#stx-pair/null? _%tl5064450766%_)
                                      (let ((_%__splice7820578206%_
                                             (gx#syntax-split-splice
                                              _%tl5064450766%_
                                              '0)))
                                        (let ((_%tl5066950701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7820578206%_
                                                  '1)))
                                              (_%target5066750698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7820578206%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5066950701%_)
                                              (_%__match7827978280%_
                                               _%e5064250759%_
                                               _%hd5064350763%_
                                               _%tl5064450766%_
                                               _%__splice7820578206%_
                                               _%target5066750698%_
                                               _%tl5066950701%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5062150681%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062150681%_))))))
                          (if (gx#stx-pair/null? _%tl5064450766%_)
                              (let ((_%__splice7820578206%_
                                     (gx#syntax-split-splice
                                      _%tl5064450766%_
                                      '0)))
                                (let ((_%tl5066950701%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '1)))
                                      (_%target5066750698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5066950701%_)
                                      (_%__match7827978280%_
                                       _%e5064250759%_
                                       _%hd5064350763%_
                                       _%tl5064450766%_
                                       _%__splice7820578206%_
                                       _%target5066750698%_
                                       _%tl5066950701%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062150681%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062150681%_))))))
                   (_%__match7822778228%_
                    (lambda (_%e5062551193%_
                             _%hd5062651197%_
                             _%tl5062751200%_
                             _%e5062851203%_
                             _%hd5062951207%_
                             _%tl5063051210%_
                             _%__splice7819778198%_
                             _%target5063151213%_
                             _%tl5063351216%_)
                      (letrec ((_%loop5063451219%_
                                (lambda (_%hd5063251223%_ _%rand5063851226%_)
                                  (if (gx#stx-pair? _%hd5063251223%_)
                                      (let ((_%e5063551229%_
                                             (gx#syntax-e _%hd5063251223%_)))
                                        (let ((_%lp-tl5063751236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5063551229%_)))
                                              (_%lp-hd5063651233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5063551229%_))))
                                          (_%loop5063451219%_
                                           _%lp-tl5063751236%_
                                           (cons _%lp-hd5063651233%_
                                                 _%rand5063851226%_))))
                                      (let ((_%rand5063951239%_
                                             (reverse _%rand5063851226%_)))
                                        (let ((_%L51243%_ _%rand5063951239%_)
                                              (_%L51245%_ _%hd5062951207%_))
                                          (if (gx#identifier? _%L51245%_)
                                              (_%__kont7819578196%_
                                               _%L51243%_
                                               _%L51245%_)
                                              (_%__match7823978240%_
                                               _%e5062551193%_
                                               _%hd5062651197%_
                                               _%tl5062751200%_
                                               _%e5062851203%_
                                               _%hd5062951207%_
                                               _%tl5063051210%_))))))))
                        (_%loop5063451219%_ _%target5063151213%_ '())))))
              (if (gx#stx-pair? _%__stx7819278193%_)
                  (let ((_%e5062551193%_ (gx#syntax-e _%__stx7819278193%_)))
                    (let ((_%tl5062751200%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5062551193%_)))
                          (_%hd5062651197%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5062551193%_))))
                      (if (gx#stx-pair? _%tl5062751200%_)
                          (let ((_%e5062851203%_
                                 (gx#syntax-e _%tl5062751200%_)))
                            (let ((_%tl5063051210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5062851203%_)))
                                  (_%hd5062951207%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5062851203%_))))
                              (if (gx#stx-pair/null? _%tl5063051210%_)
                                  (let ((_%__splice7819778198%_
                                         (gx#syntax-split-splice
                                          _%tl5063051210%_
                                          '0)))
                                    (let ((_%tl5063351216%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7819778198%_
                                              '1)))
                                          (_%target5063151213%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7819778198%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5063351216%_)
                                          (_%__match7822778228%_
                                           _%e5062551193%_
                                           _%hd5062651197%_
                                           _%tl5062751200%_
                                           _%e5062851203%_
                                           _%hd5062951207%_
                                           _%tl5063051210%_
                                           _%__splice7819778198%_
                                           _%target5063151213%_
                                           _%tl5063351216%_)
                                          (if (gx#stx-pair? _%hd5062951207%_)
                                              (let ((_%e5064850779%_
                                                     (gx#syntax-e
                                                      _%hd5062951207%_)))
                                                (let ((_%tl5065050786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5064850779%_)))
                                                      (_%hd5064950783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5064850779%_))))
                                                  (if (gx#identifier?
                                                       _%hd5064950783%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82645_|
                                                           _%hd5064950783%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5065050786%_)
                                                              (let ((_%e5065150789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5065050786%_)))
                        (let ((_%tl5065350796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5065150789%_)))
                              (_%hd5065250793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5065150789%_))))
                          (if (gx#stx-pair/null? _%tl5062751200%_)
                              (let ((_%__splice7820578206%_
                                     (gx#syntax-split-splice
                                      _%tl5062751200%_
                                      '0)))
                                (let ((_%tl5066950701%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '1)))
                                      (_%target5066750698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5066950701%_)
                                      (_%__match7827978280%_
                                       _%e5062551193%_
                                       _%hd5062651197%_
                                       _%tl5062751200%_
                                       _%__splice7820578206%_
                                       _%target5066750698%_
                                       _%tl5066950701%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062150681%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062150681%_)))))
                      (if (gx#stx-pair/null? _%tl5062751200%_)
                          (let ((_%__splice7820578206%_
                                 (gx#syntax-split-splice _%tl5062751200%_ '0)))
                            (let ((_%tl5066950701%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7820578206%_ '1)))
                                  (_%target5066750698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7820578206%_
                                      '0))))
                              (if (gx#stx-null? _%tl5066950701%_)
                                  (_%__match7827978280%_
                                   _%e5062551193%_
                                   _%hd5062651197%_
                                   _%tl5062751200%_
                                   _%__splice7820578206%_
                                   _%target5066750698%_
                                   _%tl5066950701%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5062150681%_)))))
                          (let () (declare (not safe)) (_%g5062150681%_))))
                  (if (gx#stx-pair/null? _%tl5062751200%_)
                      (let ((_%__splice7820578206%_
                             (gx#syntax-split-splice _%tl5062751200%_ '0)))
                        (let ((_%tl5066950701%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820578206%_ '1)))
                              (_%target5066750698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820578206%_ '0))))
                          (if (gx#stx-null? _%tl5066950701%_)
                              (_%__match7827978280%_
                               _%e5062551193%_
                               _%hd5062651197%_
                               _%tl5062751200%_
                               _%__splice7820578206%_
                               _%target5066750698%_
                               _%tl5066950701%_)
                              (let ()
                                (declare (not safe))
                                (_%g5062150681%_)))))
                      (let () (declare (not safe)) (_%g5062150681%_))))
              (if (gx#stx-pair/null? _%tl5062751200%_)
                  (let ((_%__splice7820578206%_
                         (gx#syntax-split-splice _%tl5062751200%_ '0)))
                    (let ((_%tl5066950701%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '1)))
                          (_%target5066750698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '0))))
                      (if (gx#stx-null? _%tl5066950701%_)
                          (_%__match7827978280%_
                           _%e5062551193%_
                           _%hd5062651197%_
                           _%tl5062751200%_
                           _%__splice7820578206%_
                           _%target5066750698%_
                           _%tl5066950701%_)
                          (let () (declare (not safe)) (_%g5062150681%_)))))
                  (let () (declare (not safe)) (_%g5062150681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5062751200%_)
                                                  (let ((_%__splice7820578206%_
                                                         (gx#syntax-split-splice
                                                          _%tl5062751200%_
                                                          '0)))
                                                    (let ((_%tl5066950701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820578206%_
                                                              '1)))
                                                          (_%target5066750698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820578206%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5066950701%_)
                                                          (_%__match7827978280%_
                                                           _%e5062551193%_
                                                           _%hd5062651197%_
                                                           _%tl5062751200%_
                                                           _%__splice7820578206%_
                                                           _%target5066750698%_
                                                           _%tl5066950701%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5062150681%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062150681%_)))))))
                                  (if (gx#stx-pair? _%hd5062951207%_)
                                      (let ((_%e5064850779%_
                                             (gx#syntax-e _%hd5062951207%_)))
                                        (let ((_%tl5065050786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5064850779%_)))
                                              (_%hd5064950783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5064850779%_))))
                                          (if (gx#identifier? _%hd5064950783%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g82645_|
                                                   _%hd5064950783%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5065050786%_)
                                                      (let ((_%e5065150789%_
                                                             (gx#syntax-e
                                                              _%tl5065050786%_)))
                                                        (let ((_%tl5065350796%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5065150789%_)))
                      (_%hd5065250793%_
                       (let () (declare (not safe)) (##car _%e5065150789%_))))
                  (if (gx#stx-pair/null? _%tl5062751200%_)
                      (let ((_%__splice7820578206%_
                             (gx#syntax-split-splice _%tl5062751200%_ '0)))
                        (let ((_%tl5066950701%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820578206%_ '1)))
                              (_%target5066750698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820578206%_ '0))))
                          (if (gx#stx-null? _%tl5066950701%_)
                              (_%__match7827978280%_
                               _%e5062551193%_
                               _%hd5062651197%_
                               _%tl5062751200%_
                               _%__splice7820578206%_
                               _%target5066750698%_
                               _%tl5066950701%_)
                              (let ()
                                (declare (not safe))
                                (_%g5062150681%_)))))
                      (let () (declare (not safe)) (_%g5062150681%_)))))
              (if (gx#stx-pair/null? _%tl5062751200%_)
                  (let ((_%__splice7820578206%_
                         (gx#syntax-split-splice _%tl5062751200%_ '0)))
                    (let ((_%tl5066950701%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '1)))
                          (_%target5066750698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820578206%_ '0))))
                      (if (gx#stx-null? _%tl5066950701%_)
                          (_%__match7827978280%_
                           _%e5062551193%_
                           _%hd5062651197%_
                           _%tl5062751200%_
                           _%__splice7820578206%_
                           _%target5066750698%_
                           _%tl5066950701%_)
                          (let () (declare (not safe)) (_%g5062150681%_)))))
                  (let () (declare (not safe)) (_%g5062150681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5062751200%_)
                                                      (let ((_%__splice7820578206%_
                                                             (gx#syntax-split-splice
                                                              _%tl5062751200%_
                                                              '0)))
                                                        (let ((_%tl5066950701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820578206%_ '1)))
                      (_%target5066750698%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820578206%_ '0))))
                  (if (gx#stx-null? _%tl5066950701%_)
                      (_%__match7827978280%_
                       _%e5062551193%_
                       _%hd5062651197%_
                       _%tl5062751200%_
                       _%__splice7820578206%_
                       _%target5066750698%_
                       _%tl5066950701%_)
                      (let () (declare (not safe)) (_%g5062150681%_)))))
              (let () (declare (not safe)) (_%g5062150681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5062751200%_)
                                                  (let ((_%__splice7820578206%_
                                                         (gx#syntax-split-splice
                                                          _%tl5062751200%_
                                                          '0)))
                                                    (let ((_%tl5066950701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820578206%_
                                                              '1)))
                                                          (_%target5066750698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820578206%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5066950701%_)
                                                          (_%__match7827978280%_
                                                           _%e5062551193%_
                                                           _%hd5062651197%_
                                                           _%tl5062751200%_
                                                           _%__splice7820578206%_
                                                           _%target5066750698%_
                                                           _%tl5066950701%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5062150681%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062150681%_))))))
                                      (if (gx#stx-pair/null? _%tl5062751200%_)
                                          (let ((_%__splice7820578206%_
                                                 (gx#syntax-split-splice
                                                  _%tl5062751200%_
                                                  '0)))
                                            (let ((_%tl5066950701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820578206%_
                                                      '1)))
                                                  (_%target5066750698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820578206%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5066950701%_)
                                                  (_%__match7827978280%_
                                                   _%e5062551193%_
                                                   _%hd5062651197%_
                                                   _%tl5062751200%_
                                                   _%__splice7820578206%_
                                                   _%target5066750698%_
                                                   _%tl5066950701%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062150681%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5062150681%_)))))))
                          (if (gx#stx-pair/null? _%tl5062751200%_)
                              (let ((_%__splice7820578206%_
                                     (gx#syntax-split-splice
                                      _%tl5062751200%_
                                      '0)))
                                (let ((_%tl5066950701%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '1)))
                                      (_%target5066750698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820578206%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5066950701%_)
                                      (_%__match7827978280%_
                                       _%e5062551193%_
                                       _%hd5062651197%_
                                       _%tl5062751200%_
                                       _%__splice7820578206%_
                                       _%target5066750698%_
                                       _%tl5066950701%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062150681%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062150681%_))))))
                  (let () (declare (not safe)) (_%g5062150681%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51277%_)
        (let* ((_%__stx7828278283%_ _%stx51277%_)
               (_%g5128151302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7828278283%_))))
          (let ((_%__kont7828578286%_
                 (lambda (_%L51370%_)
                   (let* ((_%g5138251389%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51277%_
                            _%L51370%_))
                          (_%E5138451395%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5138251389%_
                                    '([var . parts]))
                             (void)))
                          (_%K5138551611%_
                           (lambda (_%parts51399%_ _%var51401%_)
                             (let ((_%$e51403%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51401%_))))
                               (if _%$e51403%_
                                   ((lambda (_%te51407%_)
                                      (let _%loop51410%_ ((_%parts51413%_
                                                           _%parts51399%_)
                                                          (_%type51415%_
                                                           (##direct-structure-ref
                                                            _%te51407%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51416%_
                                                           _%var51401%_)
                                                          (_%nil-check?51417%_
                                                           '#f))
                                        (let* ((_%parts5141851426%_
                                                _%parts51413%_)
                                               (_%else5142051438%_
                                                (lambda () _%object51416%_))
                                               (_%K5142251593%_
                                                (lambda (_%rest51442%_
                                                         _%part51444%_)
                                                  (if (and (not _%nil-check?51417%_)
                                                           (let ((__tmp82646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51444%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82646)))
              (let ((_%str51448%_ (symbol->string _%part51444%_)))
                (_%loop51410%_
                 (cons (let ((__tmp82647
                              (substring
                               _%str51448%_
                               '1
                               (string-length _%str51448%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82647))
                       _%rest51442%_)
                 _%type51415%_
                 _%object51416%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51415%_))
                  (let* ((_%g5145351468%_
                          (lambda (_%g5145451464%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5145451464%_)))
                         (_%g5145251585%_
                          (lambda (_%g5145451472%_)
                            (if (gx#stx-pair? _%g5145451472%_)
                                (let ((_%e5145751475%_
                                       (gx#syntax-e _%g5145451472%_)))
                                  (let ((_%hd5145851479%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5145751475%_)))
                                        (_%tl5145951482%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5145751475%_))))
                                    (if (gx#stx-pair? _%tl5145951482%_)
                                        (let ((_%e5146051485%_
                                               (gx#syntax-e _%tl5145951482%_)))
                                          (let ((_%hd5146151489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5146051485%_)))
                                                (_%tl5146251492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5146051485%_))))
                                            (if (gx#stx-null? _%tl5146251492%_)
                                                ((lambda (_%L51495%_
                                                          _%L51497%_)
                                                   (if (null? _%rest51442%_)
                                                       (let ((_%$e51527%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51415%_
                                                               _%part51444%_)))
                                                         (if _%$e51527%_
                                                             ((lambda (_%slot-type51531%_)
                                                                (let* ((_%g5153451542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5153551538%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5153551538%_)))
                               (_%g5153351565%_
                                (lambda (_%g5153551546%_)
                                  ((lambda (_%L51549%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51549%_ '()))
                                                 (cons (cons _%L51495%_
                                                             (cons _%L51497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5153551546%_))))
                          (_%g5153351565%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51277%_
                              _%slot-type51531%_)))))
                      _%$e51527%_)
                     (if _%nil-check?51417%_
                         (cons _%L51495%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51497%_ '()))
                                     '()))
                         (cons _%L51495%_ (cons _%L51497%_ '())))))
               (let ((_%$e51573%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51415%_
                       _%part51444%_)))
                 (if _%$e51573%_
                     ((lambda (_%type51577%_)
                        (let ((_%type51580%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51277%_
                                  _%type51577%_))))
                          (if _%nil-check?51417%_
                              (_%loop51410%_
                               _%rest51442%_
                               _%type51580%_
                               (cons _%L51495%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51497%_ '()))
                                           '()))
                               '#f)
                              (_%loop51410%_
                               _%rest51442%_
                               _%type51580%_
                               (cons _%L51495%_ (cons _%L51497%_ '()))
                               '#f))))
                      _%$e51573%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51277%_
                      _%L51370%_
                      _%part51444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5146151489%_
                                                 _%hd5145851479%_)
                                                (_%g5145351468%_
                                                 _%g5145451472%_))))
                                        (_%g5145351468%_ _%g5145451472%_))))
                                (_%g5145351468%_ _%g5145451472%_)))))
                    (_%g5145251585%_
                     (list (if _%nil-check?51417%_
                               (cons 'check-nil! (cons _%object51416%_ '()))
                               _%object51416%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51277%_
                            _%type51415%_
                            _%part51444%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51415%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51277%_
                       _%type51415%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5141851426%_))
                                              (let ((_%hd5142351597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5141851426%_)))
                                                    (_%tl5142451600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5141851426%_))))
                                                (let* ((_%part51603%_
                                                        _%hd5142351597%_)
                                                       (_%rest51606%_
                                                        _%tl5142451600%_))
                                                  (_%K5142251593%_
                                                   _%rest51606%_
                                                   _%part51603%_)))
                                              (_%else5142051438%_)))))
                                    _%$e51403%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51370%_ '())))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5138251389%_))
                         (let ((_%hd5138651615%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5138251389%_)))
                               (_%tl5138751618%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5138251389%_))))
                           (let* ((_%var51621%_ _%hd5138651615%_)
                                  (_%parts51624%_ _%tl5138751618%_))
                             (_%K5138551611%_ _%parts51624%_ _%var51621%_)))
                         (_%E5138451395%_)))))
                (_%__kont7828778288%_
                 (lambda (_%L51329%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51329%_ '())))))
            (let ((_%__match7830378304%_
                   (lambda (_%e5128451350%_
                            _%hd5128551354%_
                            _%tl5128651357%_
                            _%e5128751360%_
                            _%hd5128851364%_
                            _%tl5128951367%_)
                     (let ((_%L51370%_ _%hd5128851364%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51370%_)
                           (_%__kont7828578286%_ _%L51370%_)
                           (_%__kont7828778288%_ _%hd5128851364%_))))))
              (if (gx#stx-pair? _%__stx7828278283%_)
                  (let ((_%e5128451350%_ (gx#syntax-e _%__stx7828278283%_)))
                    (let ((_%tl5128651357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5128451350%_)))
                          (_%hd5128551354%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5128451350%_))))
                      (if (gx#stx-pair? _%tl5128651357%_)
                          (let ((_%e5128751360%_
                                 (gx#syntax-e _%tl5128651357%_)))
                            (let ((_%tl5128951367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5128751360%_)))
                                  (_%hd5128851364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5128751360%_))))
                              (if (gx#stx-null? _%tl5128951367%_)
                                  (_%__match7830378304%_
                                   _%e5128451350%_
                                   _%hd5128551354%_
                                   _%tl5128651357%_
                                   _%e5128751360%_
                                   _%hd5128851364%_
                                   _%tl5128951367%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5128151302%_)))))
                          (let () (declare (not safe)) (_%g5128151302%_)))))
                  (let () (declare (not safe)) (_%g5128151302%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51631%_)
        (let* ((_%__stx7832078321%_ _%stx51631%_)
               (_%g5163551664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7832078321%_))))
          (let ((_%__kont7832378324%_
                 (lambda (_%L51756%_ _%L51758%_)
                   (let* ((_%g5177251779%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51631%_
                            _%L51758%_))
                          (_%E5177451785%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5177251779%_
                                    '([var . parts]))
                             (void)))
                          (_%K5177552015%_
                           (lambda (_%parts51789%_ _%var51791%_)
                             (let ((_%$e51793%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51791%_))))
                               (if _%$e51793%_
                                   ((lambda (_%te51797%_)
                                      (let _%loop51800%_ ((_%parts51803%_
                                                           _%parts51789%_)
                                                          (_%type51805%_
                                                           (##direct-structure-ref
                                                            _%te51797%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51806%_
                                                           _%var51791%_)
                                                          (_%checked-mutator?51807%_
                                                           (##direct-structure-ref
                                                            _%te51797%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51808%_
                                                           '#f))
                                        (let* ((_%parts5180951816%_
                                                _%parts51803%_)
                                               (_%E5181151822%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5180951816%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5181251997%_
                                                (lambda (_%rest51826%_
                                                         _%part51828%_)
                                                  (if (and (not _%nil-check?51808%_)
                                                           (let ((__tmp82648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51828%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82648)))
              (let ((_%str51832%_ (symbol->string _%part51828%_)))
                (_%loop51800%_
                 (cons (let ((__tmp82649
                              (substring
                               _%str51832%_
                               '1
                               (string-length _%str51832%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82649))
                       _%rest51826%_)
                 _%type51805%_
                 _%object51806%_
                 _%checked-mutator?51807%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51805%_))
                  (if (null? _%rest51826%_)
                      (let* ((_%g5183951854%_
                              (lambda (_%g5184051850%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5184051850%_)))
                             (_%g5183851911%_
                              (lambda (_%g5184051858%_)
                                (if (gx#stx-pair? _%g5184051858%_)
                                    (let ((_%e5184351861%_
                                           (gx#syntax-e _%g5184051858%_)))
                                      (let ((_%hd5184451865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5184351861%_)))
                                            (_%tl5184551868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5184351861%_))))
                                        (if (gx#stx-pair? _%tl5184551868%_)
                                            (let ((_%e5184651871%_
                                                   (gx#syntax-e
                                                    _%tl5184551868%_)))
                                              (let ((_%hd5184751875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5184651871%_)))
                                                    (_%tl5184851878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5184651871%_))))
                                                (if (gx#stx-null?
                                                     _%tl5184851878%_)
                                                    ((lambda (_%L51881%_
                                                              _%L51883%_)
                                                       (if _%nil-check?51808%_
                                                           (cons _%L51881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51883%_ '()))
                               (cons _%L51756%_ '())))
                   (cons _%L51881%_ (cons _%L51883%_ (cons _%L51756%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5184751875%_
                                                     _%hd5184451865%_)
                                                    (_%g5183951854%_
                                                     _%g5184051858%_))))
                                            (_%g5183951854%_
                                             _%g5184051858%_))))
                                    (_%g5183951854%_ _%g5184051858%_)))))
                        (_%g5183851911%_
                         (list _%object51806%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51631%_
                                _%type51805%_
                                _%part51828%_
                                (if _%checked-mutator?51807%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51805%_
                                     _%part51828%_)
                                    '#f)))))
                      (let ((_%$e51915%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51805%_
                              _%part51828%_)))
                        (if _%$e51915%_
                            ((lambda (_%type51919%_)
                               (let* ((_%type51922%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51631%_
                                          _%type51919%_)))
                                      (_%g5192551940%_
                                       (lambda (_%g5192651936%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5192651936%_)))
                                      (_%g5192451987%_
                                       (lambda (_%g5192651944%_)
                                         (if (gx#stx-pair? _%g5192651944%_)
                                             (let ((_%e5192951947%_
                                                    (gx#syntax-e
                                                     _%g5192651944%_)))
                                               (let ((_%hd5193051951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5192951947%_)))
                                                     (_%tl5193151954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5192951947%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5193151954%_)
                                                     (let ((_%e5193251957%_
                                                            (gx#syntax-e
                                                             _%tl5193151954%_)))
                                                       (let ((_%hd5193351961%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5193251957%_)))
                     (_%tl5193451964%_
                      (let () (declare (not safe)) (##cdr _%e5193251957%_))))
                 (if (gx#stx-null? _%tl5193451964%_)
                     ((lambda (_%L51967%_ _%L51969%_)
                        (_%loop51800%_
                         _%rest51826%_
                         _%type51922%_
                         (cons _%L51967%_ (cons _%L51969%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51922%_
                          _%part51828%_)
                         '#f))
                      _%hd5193351961%_
                      _%hd5193051951%_)
                     (_%g5192551940%_ _%g5192651944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5192551940%_
                                                      _%g5192651944%_))))
                                             (_%g5192551940%_
                                              _%g5192651944%_)))))
                                 (_%g5192451987%_
                                  (list (if _%nil-check?51808%_
                                            (cons 'check-nil!
                                                  (cons _%object51806%_ '()))
                                            _%object51806%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51631%_
                                         _%type51922%_
                                         _%part51828%_)))))
                             _%$e51915%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51631%_
                             _%L51758%_
                             _%part51828%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51805%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51631%_
                       _%type51805%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5180951816%_))
                                              (let ((_%hd5181352001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5180951816%_)))
                                                    (_%tl5181452004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5180951816%_))))
                                                (let* ((_%part52007%_
                                                        _%hd5181352001%_)
                                                       (_%rest52010%_
                                                        _%tl5181452004%_))
                                                  (_%K5181251997%_
                                                   _%rest52010%_
                                                   _%part52007%_)))
                                              (_%E5181151822%_)))))
                                    _%$e51793%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51631%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5177251779%_))
                         (let ((_%hd5177652019%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5177251779%_)))
                               (_%tl5177752022%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5177251779%_))))
                           (let* ((_%var52025%_ _%hd5177652019%_)
                                  (_%parts52028%_ _%tl5177752022%_))
                             (_%K5177552015%_ _%parts52028%_ _%var52025%_)))
                         (_%E5177451785%_)))))
                (_%__kont7832578326%_
                 (lambda (_%L51701%_ _%L51703%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51631%_)))))
            (let ((_%__match7834778348%_
                   (lambda (_%e5163951726%_
                            _%hd5164051730%_
                            _%tl5164151733%_
                            _%e5164251736%_
                            _%hd5164351740%_
                            _%tl5164451743%_
                            _%e5164551746%_
                            _%hd5164651750%_
                            _%tl5164751753%_)
                     (let ((_%L51756%_ _%hd5164651750%_)
                           (_%L51758%_ _%hd5164351740%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51758%_)
                           (_%__kont7832378324%_ _%L51756%_ _%L51758%_)
                           (_%__kont7832578326%_
                            _%hd5164651750%_
                            _%hd5164351740%_))))))
              (if (gx#stx-pair? _%__stx7832078321%_)
                  (let ((_%e5163951726%_ (gx#syntax-e _%__stx7832078321%_)))
                    (let ((_%tl5164151733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5163951726%_)))
                          (_%hd5164051730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5163951726%_))))
                      (if (gx#stx-pair? _%tl5164151733%_)
                          (let ((_%e5164251736%_
                                 (gx#syntax-e _%tl5164151733%_)))
                            (let ((_%tl5164451743%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5164251736%_)))
                                  (_%hd5164351740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5164251736%_))))
                              (if (gx#stx-pair? _%tl5164451743%_)
                                  (let ((_%e5164551746%_
                                         (gx#syntax-e _%tl5164451743%_)))
                                    (let ((_%tl5164751753%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5164551746%_)))
                                          (_%hd5164651750%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5164551746%_))))
                                      (if (gx#stx-null? _%tl5164751753%_)
                                          (_%__match7834778348%_
                                           _%e5163951726%_
                                           _%hd5164051730%_
                                           _%tl5164151733%_
                                           _%e5164251736%_
                                           _%hd5164351740%_
                                           _%tl5164451743%_
                                           _%e5164551746%_
                                           _%hd5164651750%_
                                           _%tl5164751753%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551664%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551664%_)))))
                          (let () (declare (not safe)) (_%g5163551664%_)))))
                  (let () (declare (not safe)) (_%g5163551664%_))))))))))

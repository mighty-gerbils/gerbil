(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g82624_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82625_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82626_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82629_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82630_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82633_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82634_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82635_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82636_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82640_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82641_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82642_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82643_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82647_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46331%_)
        (let* ((_%__stx7722677227%_ _%stx46331%_)
               (_%g4634046549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7722677227%_))))
          (let ((_%__kont7722977230%_
                 (lambda (_%L47455%_
                          _%L47457%_
                          _%L47458%_
                          _%L47459%_
                          _%L47460%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47460%_ (cons _%L47459%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47460%_
                                                       (cons _%L47458%_
                                                             (cons _%L47457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4750347506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4750447509%_)
                  (cons _%g4750347506%_ _%g4750447509%_))
                '()
                _%L47455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7723377234%_
                 (lambda (_%L47299%_
                          _%L47301%_
                          _%L47302%_
                          _%L47303%_
                          _%L47304%_
                          _%L47305%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47305%_ (cons _%L47304%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47305%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47302%_ (cons _%L47301%_ '())))
                           (foldr (lambda (_%g4734947352%_ _%g4735047355%_)
                                    (cons _%g4734947352%_ _%g4735047355%_))
                                  '()
                                  _%L47299%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7723777238%_
                 (lambda (_%L47116%_ _%L47118%_ _%L47119%_ _%L47120%_)
                   (let ((_%meta47157%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46331%_
                             _%L47118%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47157%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47120%_
                                           (cons _%L47119%_
                                                 (cons _%L47118%_ '())))
                                     (foldr (lambda (_%g4716147164%_
                                                     _%g4716247167%_)
                                              (cons _%g4716147164%_
                                                    _%g4716247167%_))
                                            '()
                                            _%L47116%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47157%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47120%_
                                               (cons _%L47119%_
                                                     (cons _%L47118%_ '())))
                                         (foldr (lambda (_%g4717147174%_
                                                         _%g4717247177%_)
                                                  (cons _%g4717147174%_
                                                        _%g4717247177%_))
                                                '()
                                                _%L47116%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46331%_
                              _%L47118%_
                              _%meta47157%_))))))
                (_%__kont7724177242%_
                 (lambda (_%L46994%_ _%L46996%_ _%L46997%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L46997%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46996%_ '())))
                               (foldr (lambda (_%g4702047023%_ _%g4702147026%_)
                                        (cons _%g4702047023%_ _%g4702147026%_))
                                      '()
                                      _%L46994%_)))))
                (_%__kont7724577246%_
                 (lambda (_%L46852%_
                          _%L46854%_
                          _%L46855%_
                          _%L46856%_
                          _%L46857%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46857%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46856%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46857%_
                                                       (cons _%L46855%_
                                                             (cons _%L46854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4689846901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4689946904%_)
                  (cons _%g4689846901%_ _%g4689946904%_))
                '()
                _%L46852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7724977250%_
                 (lambda (_%L46710%_ _%L46712%_ _%L46713%_ _%L46714%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46714%_ _%L46713%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46712%_
                                                 (foldr (lambda (_%g4673646739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4673746742%_)
                  (cons _%g4673646739%_ _%g4673746742%_))
                '()
                _%L46710%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7725377254%_
                 (lambda (_%L46606%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4662446627%_ _%g4662546630%_)
                                        (cons _%g4662446627%_ _%g4662546630%_))
                                      '()
                                      _%L46606%_))))))
            (let* ((_%__match7755977560%_
                    (lambda (_%e4652946556%_
                             _%hd4653046560%_
                             _%tl4653146563%_
                             _%e4653246566%_
                             _%hd4653346570%_
                             _%tl4653446573%_
                             _%__splice7725577256%_
                             _%target4653546576%_
                             _%tl4653746579%_)
                      (letrec ((_%loop4653846582%_
                                (lambda (_%hd4653646586%_ _%body4654246589%_)
                                  (if (gx#stx-pair? _%hd4653646586%_)
                                      (let ((_%e4653946592%_
                                             (gx#syntax-e _%hd4653646586%_)))
                                        (let ((_%lp-tl4654146599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4653946592%_)))
                                              (_%lp-hd4654046596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4653946592%_))))
                                          (_%loop4653846582%_
                                           _%lp-tl4654146599%_
                                           (cons _%lp-hd4654046596%_
                                                 _%body4654246589%_))))
                                      (let ((_%body4654346602%_
                                             (reverse _%body4654246589%_)))
                                        (_%__kont7725377254%_
                                         _%body4654346602%_))))))
                        (_%loop4653846582%_ _%target4653546576%_ '()))))
                   (_%__match7753777538%_
                    (lambda (_%e4650746640%_
                             _%hd4650846644%_
                             _%tl4650946647%_
                             _%e4651046650%_
                             _%hd4651146654%_
                             _%tl4651246657%_
                             _%e4651346660%_
                             _%hd4651446664%_
                             _%tl4651546667%_
                             _%e4651646670%_
                             _%hd4651746674%_
                             _%tl4651846677%_
                             _%__splice7725177252%_
                             _%target4651946680%_
                             _%tl4652146683%_)
                      (letrec ((_%loop4652246686%_
                                (lambda (_%hd4652046690%_ _%body4652646693%_)
                                  (if (gx#stx-pair? _%hd4652046690%_)
                                      (let ((_%e4652346696%_
                                             (gx#syntax-e _%hd4652046690%_)))
                                        (let ((_%lp-tl4652546703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4652346696%_)))
                                              (_%lp-hd4652446700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4652346696%_))))
                                          (_%loop4652246686%_
                                           _%lp-tl4652546703%_
                                           (cons _%lp-hd4652446700%_
                                                 _%body4652646693%_))))
                                      (let ((_%body4652746706%_
                                             (reverse _%body4652646693%_)))
                                        (let ((_%L46710%_ _%body4652746706%_)
                                              (_%L46712%_ _%tl4651546667%_)
                                              (_%L46713%_ _%tl4651846677%_)
                                              (_%L46714%_ _%hd4651746674%_))
                                          (if (gx#identifier? _%L46714%_)
                                              (_%__kont7724977250%_
                                               _%L46710%_
                                               _%L46712%_
                                               _%L46713%_
                                               _%L46714%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_)))))))))
                        (_%loop4652246686%_ _%target4651946680%_ '()))))
                   (_%__match7752377524%_
                    (lambda (_%e4650746640%_
                             _%hd4650846644%_
                             _%tl4650946647%_
                             _%e4651046650%_
                             _%hd4651146654%_
                             _%tl4651246657%_
                             _%e4651346660%_
                             _%hd4651446664%_
                             _%tl4651546667%_)
                      (if (gx#stx-pair? _%hd4651446664%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4651446664%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (if (gx#stx-pair/null? _%tl4651246657%_)
                                  (let ((_%__splice7725177252%_
                                         (gx#syntax-split-splice
                                          _%tl4651246657%_
                                          '0)))
                                    (let ((_%tl4652146683%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '1)))
                                          (_%target4651946680%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4652146683%_)
                                          (_%__match7753777538%_
                                           _%e4650746640%_
                                           _%hd4650846644%_
                                           _%tl4650946647%_
                                           _%e4651046650%_
                                           _%hd4651146654%_
                                           _%tl4651246657%_
                                           _%e4651346660%_
                                           _%hd4651446664%_
                                           _%tl4651546667%_
                                           _%e4651646670%_
                                           _%hd4651746674%_
                                           _%tl4651846677%_
                                           _%__splice7725177252%_
                                           _%target4651946680%_
                                           _%tl4652146683%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                   (_%__match7750577506%_
                    (lambda (_%e4647346752%_
                             _%hd4647446756%_
                             _%tl4647546759%_
                             _%e4647646762%_
                             _%hd4647746766%_
                             _%tl4647846769%_
                             _%e4647946772%_
                             _%hd4648046776%_
                             _%tl4648146779%_
                             _%e4648246782%_
                             _%hd4648346786%_
                             _%tl4648446789%_
                             _%e4648546792%_
                             _%hd4648646796%_
                             _%tl4648746799%_
                             _%e4648846802%_
                             _%hd4648946806%_
                             _%tl4649046809%_
                             _%e4649146812%_
                             _%hd4649246816%_
                             _%tl4649346819%_
                             _%__splice7724777248%_
                             _%target4649446822%_
                             _%tl4649646825%_)
                      (letrec ((_%loop4649746828%_
                                (lambda (_%hd4649546832%_ _%body4650146835%_)
                                  (if (gx#stx-pair? _%hd4649546832%_)
                                      (let ((_%e4649846838%_
                                             (gx#syntax-e _%hd4649546832%_)))
                                        (let ((_%lp-tl4650046845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649846838%_)))
                                              (_%lp-hd4649946842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649846838%_))))
                                          (_%loop4649746828%_
                                           _%lp-tl4650046845%_
                                           (cons _%lp-hd4649946842%_
                                                 _%body4650146835%_))))
                                      (let ((_%body4650246848%_
                                             (reverse _%body4650146835%_)))
                                        (let ((_%L46852%_ _%body4650246848%_)
                                              (_%L46854%_ _%hd4649246816%_)
                                              (_%L46855%_ _%hd4648946806%_)
                                              (_%L46856%_ _%hd4648646796%_)
                                              (_%L46857%_ _%hd4648046776%_))
                                          (if (and (gx#identifier? _%L46857%_)
                                                   (gx#identifier? _%L46854%_)
                                                   (gx#identifier? _%L46855%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46855%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46855%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46855%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46855%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7724577246%_
                                               _%L46852%_
                                               _%L46854%_
                                               _%L46855%_
                                               _%L46856%_
                                               _%L46857%_)
                                              (_%__match7752377524%_
                                               _%e4647346752%_
                                               _%hd4647446756%_
                                               _%tl4647546759%_
                                               _%e4647646762%_
                                               _%hd4647746766%_
                                               _%tl4647846769%_
                                               _%e4647946772%_
                                               _%hd4648046776%_
                                               _%tl4648146779%_))))))))
                        (_%loop4649746828%_ _%target4649446822%_ '()))))
                   (_%__match7744977450%_
                    (lambda (_%e4644446914%_
                             _%hd4644546918%_
                             _%tl4644646921%_
                             _%e4644746924%_
                             _%hd4644846928%_
                             _%tl4644946931%_
                             _%e4645046934%_
                             _%hd4645146938%_
                             _%tl4645246941%_
                             _%e4645346944%_
                             _%hd4645446948%_
                             _%tl4645546951%_
                             _%e4645646954%_
                             _%hd4645746958%_
                             _%tl4645846961%_
                             _%__splice7724377244%_
                             _%target4645946964%_
                             _%tl4646146967%_)
                      (letrec ((_%loop4646246970%_
                                (lambda (_%hd4646046974%_ _%body4646646977%_)
                                  (if (gx#stx-pair? _%hd4646046974%_)
                                      (let ((_%e4646346980%_
                                             (gx#syntax-e _%hd4646046974%_)))
                                        (let ((_%lp-tl4646546987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646346980%_)))
                                              (_%lp-hd4646446984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646346980%_))))
                                          (_%loop4646246970%_
                                           _%lp-tl4646546987%_
                                           (cons _%lp-hd4646446984%_
                                                 _%body4646646977%_))))
                                      (let ((_%body4646746990%_
                                             (reverse _%body4646646977%_)))
                                        (let ((_%L46994%_ _%body4646746990%_)
                                              (_%L46996%_ _%hd4645746958%_)
                                              (_%L46997%_ _%hd4645146938%_))
                                          (if (gx#identifier? _%L46997%_)
                                              (_%__kont7724177242%_
                                               _%L46994%_
                                               _%L46996%_
                                               _%L46997%_)
                                              (_%__match7752377524%_
                                               _%e4644446914%_
                                               _%hd4644546918%_
                                               _%tl4644646921%_
                                               _%e4644746924%_
                                               _%hd4644846928%_
                                               _%tl4644946931%_
                                               _%e4645046934%_
                                               _%hd4645146938%_
                                               _%tl4645246941%_))))))))
                        (_%loop4646246970%_ _%target4645946964%_ '()))))
                   (_%__match7742977430%_
                    (lambda (_%e4644446914%_
                             _%hd4644546918%_
                             _%tl4644646921%_
                             _%e4644746924%_
                             _%hd4644846928%_
                             _%tl4644946931%_
                             _%e4645046934%_
                             _%hd4645146938%_
                             _%tl4645246941%_
                             _%e4645346944%_
                             _%hd4645446948%_
                             _%tl4645546951%_)
                      (if (gx#identifier? _%hd4645446948%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82624_|
                               _%hd4645446948%_)
                              (if (gx#stx-pair? _%tl4645546951%_)
                                  (let ((_%e4645646954%_
                                         (gx#syntax-e _%tl4645546951%_)))
                                    (let ((_%tl4645846961%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4645646954%_)))
                                          (_%hd4645746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4645646954%_))))
                                      (if (gx#stx-null? _%tl4645846961%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4644946931%_)
                                              (let ((_%__splice7724377244%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644946931%_
                                                      '0)))
                                                (let ((_%tl4646146967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724377244%_
                                                          '1)))
                                                      (_%target4645946964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7724377244%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4646146967%_)
                                                      (_%__match7744977450%_
                                                       _%e4644446914%_
                                                       _%hd4644546918%_
                                                       _%tl4644646921%_
                                                       _%e4644746924%_
                                                       _%hd4644846928%_
                                                       _%tl4644946931%_
                                                       _%e4645046934%_
                                                       _%hd4645146938%_
                                                       _%tl4645246941%_
                                                       _%e4645346944%_
                                                       _%hd4645446948%_
                                                       _%tl4645546951%_
                                                       _%e4645646954%_
                                                       _%hd4645746958%_
                                                       _%tl4645846961%_
                                                       _%__splice7724377244%_
                                                       _%target4645946964%_
                                                       _%tl4646146967%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4645146938%_)
                                                          (let ((_%e4651646670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4645146938%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4645146938%_)
                                                  (let ((_%e4651646670%_
                                                         (gx#syntax-e
                                                          _%hd4645146938%_)))
                                                    (let ((_%tl4651846677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651646670%_)))
                                                          (_%hd4651746674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651646670%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4634046549%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))
                                          (if (gx#stx-pair? _%tl4645846961%_)
                                              (let ((_%e4648846802%_
                                                     (gx#syntax-e
                                                      _%tl4645846961%_)))
                                                (let ((_%tl4649046809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648846802%_)))
                                                      (_%hd4648946806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648846802%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4649046809%_)
                                                      (let ((_%e4649146812%_
                                                             (gx#syntax-e
                                                              _%tl4649046809%_)))
                                                        (let ((_%tl4649346819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4649146812%_)))
                      (_%hd4649246816%_
                       (let () (declare (not safe)) (##car _%e4649146812%_))))
                  (if (gx#stx-null? _%tl4649346819%_)
                      (if (gx#stx-pair/null? _%tl4644946931%_)
                          (let ((_%__splice7724777248%_
                                 (gx#syntax-split-splice _%tl4644946931%_ '0)))
                            (let ((_%tl4649646825%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724777248%_ '1)))
                                  (_%target4649446822%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724777248%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649646825%_)
                                  (_%__match7750577506%_
                                   _%e4644446914%_
                                   _%hd4644546918%_
                                   _%tl4644646921%_
                                   _%e4644746924%_
                                   _%hd4644846928%_
                                   _%tl4644946931%_
                                   _%e4645046934%_
                                   _%hd4645146938%_
                                   _%tl4645246941%_
                                   _%e4645346944%_
                                   _%hd4645446948%_
                                   _%tl4645546951%_
                                   _%e4645646954%_
                                   _%hd4645746958%_
                                   _%tl4645846961%_
                                   _%e4648846802%_
                                   _%hd4648946806%_
                                   _%tl4649046809%_
                                   _%e4649146812%_
                                   _%hd4649246816%_
                                   _%tl4649346819%_
                                   _%__splice7724777248%_
                                   _%target4649446822%_
                                   _%tl4649646825%_)
                                  (if (gx#stx-pair? _%hd4645146938%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4645146938%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))
                          (if (gx#stx-pair? _%hd4645146938%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4645146938%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                      (if (gx#stx-pair? _%hd4645146938%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4645146938%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (if (gx#stx-pair/null? _%tl4644946931%_)
                                  (let ((_%__splice7725177252%_
                                         (gx#syntax-split-splice
                                          _%tl4644946931%_
                                          '0)))
                                    (let ((_%tl4652146683%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '1)))
                                          (_%target4651946680%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4652146683%_)
                                          (_%__match7753777538%_
                                           _%e4644446914%_
                                           _%hd4644546918%_
                                           _%tl4644646921%_
                                           _%e4644746924%_
                                           _%hd4644846928%_
                                           _%tl4644946931%_
                                           _%e4645046934%_
                                           _%hd4645146938%_
                                           _%tl4645246941%_
                                           _%e4651646670%_
                                           _%hd4651746674%_
                                           _%tl4651846677%_
                                           _%__splice7725177252%_
                                           _%target4651946680%_
                                           _%tl4652146683%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_))))))
              (if (gx#stx-pair? _%hd4645146938%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4645146938%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4644946931%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4644946931%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4644446914%_
                                   _%hd4644546918%_
                                   _%tl4644646921%_
                                   _%e4644746924%_
                                   _%hd4644846928%_
                                   _%tl4644946931%_
                                   _%e4645046934%_
                                   _%hd4645146938%_
                                   _%tl4645246941%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4645146938%_)
                                                  (let ((_%e4651646670%_
                                                         (gx#syntax-e
                                                          _%hd4645146938%_)))
                                                    (let ((_%tl4651846677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651646670%_)))
                                                          (_%hd4651746674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651646670%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644946931%_)
                                                          (let ((_%__splice7725177252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644946931%_ '0)))
                    (let ((_%tl4652146683%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '1)))
                          (_%target4651946680%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '0))))
                      (if (gx#stx-null? _%tl4652146683%_)
                          (_%__match7753777538%_
                           _%e4644446914%_
                           _%hd4644546918%_
                           _%tl4644646921%_
                           _%e4644746924%_
                           _%hd4644846928%_
                           _%tl4644946931%_
                           _%e4645046934%_
                           _%hd4645146938%_
                           _%tl4645246941%_
                           _%e4651646670%_
                           _%hd4651746674%_
                           _%tl4651846677%_
                           _%__splice7725177252%_
                           _%target4651946680%_
                           _%tl4652146683%_)
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))))
                                  (if (gx#stx-pair? _%hd4645146938%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4645146938%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4644946931%_)
                                              (let ((_%__splice7725177252%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644946931%_
                                                      '0)))
                                                (let ((_%tl4652146683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '1)))
                                                      (_%target4651946680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652146683%_)
                                                      (_%__match7753777538%_
                                                       _%e4644446914%_
                                                       _%hd4644546918%_
                                                       _%tl4644646921%_
                                                       _%e4644746924%_
                                                       _%hd4644846928%_
                                                       _%tl4644946931%_
                                                       _%e4645046934%_
                                                       _%hd4645146938%_
                                                       _%tl4645246941%_
                                                       _%e4651646670%_
                                                       _%hd4651746674%_
                                                       _%tl4651846677%_
                                                       _%__splice7725177252%_
                                                       _%target4651946680%_
                                                       _%tl4652146683%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4634046549%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                              (if (gx#stx-pair? _%hd4645146938%_)
                                  (let ((_%e4651646670%_
                                         (gx#syntax-e _%hd4645146938%_)))
                                    (let ((_%tl4651846677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651646670%_)))
                                          (_%hd4651746674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651646670%_))))
                                      (if (gx#stx-pair/null? _%tl4644946931%_)
                                          (let ((_%__splice7725177252%_
                                                 (gx#syntax-split-splice
                                                  _%tl4644946931%_
                                                  '0)))
                                            (let ((_%tl4652146683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725177252%_
                                                      '1)))
                                                  (_%target4651946680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725177252%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4652146683%_)
                                                  (_%__match7753777538%_
                                                   _%e4644446914%_
                                                   _%hd4644546918%_
                                                   _%tl4644646921%_
                                                   _%e4644746924%_
                                                   _%hd4644846928%_
                                                   _%tl4644946931%_
                                                   _%e4645046934%_
                                                   _%hd4645146938%_
                                                   _%tl4645246941%_
                                                   _%e4651646670%_
                                                   _%hd4651746674%_
                                                   _%tl4651846677%_
                                                   _%__splice7725177252%_
                                                   _%target4651946680%_
                                                   _%tl4652146683%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                          (if (gx#stx-pair? _%hd4645146938%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4645146938%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (if (gx#stx-pair/null? _%tl4644946931%_)
                                      (let ((_%__splice7725177252%_
                                             (gx#syntax-split-splice
                                              _%tl4644946931%_
                                              '0)))
                                        (let ((_%tl4652146683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7725177252%_
                                                  '1)))
                                              (_%target4651946680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7725177252%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4652146683%_)
                                              (_%__match7753777538%_
                                               _%e4644446914%_
                                               _%hd4644546918%_
                                               _%tl4644646921%_
                                               _%e4644746924%_
                                               _%hd4644846928%_
                                               _%tl4644946931%_
                                               _%e4645046934%_
                                               _%hd4645146938%_
                                               _%tl4645246941%_
                                               _%e4651646670%_
                                               _%hd4651746674%_
                                               _%tl4651846677%_
                                               _%__splice7725177252%_
                                               _%target4651946680%_
                                               _%tl4652146683%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_))))))
                   (_%__match7740577406%_
                    (lambda (_%e4641747036%_
                             _%hd4641847040%_
                             _%tl4641947043%_
                             _%e4642047046%_
                             _%hd4642147050%_
                             _%tl4642247053%_
                             _%e4642347056%_
                             _%hd4642447060%_
                             _%tl4642547063%_
                             _%e4642647066%_
                             _%hd4642747070%_
                             _%tl4642847073%_
                             _%e4642947076%_
                             _%hd4643047080%_
                             _%tl4643147083%_
                             _%__splice7723977240%_
                             _%target4643247086%_
                             _%tl4643447089%_)
                      (letrec ((_%loop4643547092%_
                                (lambda (_%hd4643347096%_ _%body4643947099%_)
                                  (if (gx#stx-pair? _%hd4643347096%_)
                                      (let ((_%e4643647102%_
                                             (gx#syntax-e _%hd4643347096%_)))
                                        (let ((_%lp-tl4643847109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643647102%_)))
                                              (_%lp-hd4643747106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643647102%_))))
                                          (_%loop4643547092%_
                                           _%lp-tl4643847109%_
                                           (cons _%lp-hd4643747106%_
                                                 _%body4643947099%_))))
                                      (let ((_%body4644047112%_
                                             (reverse _%body4643947099%_)))
                                        (let ((_%L47116%_ _%body4644047112%_)
                                              (_%L47118%_ _%hd4643047080%_)
                                              (_%L47119%_ _%hd4642747070%_)
                                              (_%L47120%_ _%hd4642447060%_))
                                          (if (and (gx#identifier? _%L47120%_)
                                                   (gx#identifier? _%L47118%_)
                                                   (gx#identifier? _%L47119%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47119%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7723777238%_
                                               _%L47116%_
                                               _%L47118%_
                                               _%L47119%_
                                               _%L47120%_)
                                              (_%__match7742977430%_
                                               _%e4641747036%_
                                               _%hd4641847040%_
                                               _%tl4641947043%_
                                               _%e4642047046%_
                                               _%hd4642147050%_
                                               _%tl4642247053%_
                                               _%e4642347056%_
                                               _%hd4642447060%_
                                               _%tl4642547063%_
                                               _%e4642647066%_
                                               _%hd4642747070%_
                                               _%tl4642847073%_))))))))
                        (_%loop4643547092%_ _%target4643247086%_ '()))))
                   (_%__match7736577366%_
                    (lambda (_%e4638047189%_
                             _%hd4638147193%_
                             _%tl4638247196%_
                             _%e4638347199%_
                             _%hd4638447203%_
                             _%tl4638547206%_
                             _%e4638647209%_
                             _%hd4638747213%_
                             _%tl4638847216%_
                             _%e4638947219%_
                             _%hd4639047223%_
                             _%tl4639147226%_
                             _%e4639247229%_
                             _%hd4639347233%_
                             _%tl4639447236%_
                             _%e4639547239%_
                             _%hd4639647243%_
                             _%tl4639747246%_
                             _%e4639847249%_
                             _%hd4639947253%_
                             _%tl4640047256%_
                             _%e4640147259%_
                             _%hd4640247263%_
                             _%tl4640347266%_
                             _%__splice7723577236%_
                             _%target4640447269%_
                             _%tl4640647272%_)
                      (letrec ((_%loop4640747275%_
                                (lambda (_%hd4640547279%_ _%body4641147282%_)
                                  (if (gx#stx-pair? _%hd4640547279%_)
                                      (let ((_%e4640847285%_
                                             (gx#syntax-e _%hd4640547279%_)))
                                        (let ((_%lp-tl4641047292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4640847285%_)))
                                              (_%lp-hd4640947289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4640847285%_))))
                                          (_%loop4640747275%_
                                           _%lp-tl4641047292%_
                                           (cons _%lp-hd4640947289%_
                                                 _%body4641147282%_))))
                                      (let ((_%body4641247295%_
                                             (reverse _%body4641147282%_)))
                                        (let ((_%L47299%_ _%body4641247295%_)
                                              (_%L47301%_ _%hd4640247263%_)
                                              (_%L47302%_ _%hd4639947253%_)
                                              (_%L47303%_ _%hd4639647243%_)
                                              (_%L47304%_ _%hd4639047223%_)
                                              (_%L47305%_ _%hd4638747213%_))
                                          (if (and (gx#identifier? _%L47305%_)
                                                   (gx#identifier? _%L47301%_)
                                                   (gx#identifier? _%L47302%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47302%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47302%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47302%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47302%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7723377234%_
                                               _%L47299%_
                                               _%L47301%_
                                               _%L47302%_
                                               _%L47303%_
                                               _%L47304%_
                                               _%L47305%_)
                                              (_%__match7742977430%_
                                               _%e4638047189%_
                                               _%hd4638147193%_
                                               _%tl4638247196%_
                                               _%e4638347199%_
                                               _%hd4638447203%_
                                               _%tl4638547206%_
                                               _%e4638647209%_
                                               _%hd4638747213%_
                                               _%tl4638847216%_
                                               _%e4638947219%_
                                               _%hd4639047223%_
                                               _%tl4639147226%_))))))))
                        (_%loop4640747275%_ _%target4640447269%_ '()))))
                   (_%__match7733377334%_
                    (lambda (_%e4638047189%_
                             _%hd4638147193%_
                             _%tl4638247196%_
                             _%e4638347199%_
                             _%hd4638447203%_
                             _%tl4638547206%_
                             _%e4638647209%_
                             _%hd4638747213%_
                             _%tl4638847216%_
                             _%e4638947219%_
                             _%hd4639047223%_
                             _%tl4639147226%_
                             _%e4639247229%_
                             _%hd4639347233%_
                             _%tl4639447236%_)
                      (if (gx#identifier? _%hd4639347233%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82625_|
                               _%hd4639347233%_)
                              (if (gx#stx-pair? _%tl4639447236%_)
                                  (let ((_%e4639547239%_
                                         (gx#syntax-e _%tl4639447236%_)))
                                    (let ((_%tl4639747246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4639547239%_)))
                                          (_%hd4639647243%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4639547239%_))))
                                      (if (gx#stx-pair? _%tl4639747246%_)
                                          (let ((_%e4639847249%_
                                                 (gx#syntax-e
                                                  _%tl4639747246%_)))
                                            (let ((_%tl4640047256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4639847249%_)))
                                                  (_%hd4639947253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4639847249%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4640047256%_)
                                                  (let ((_%e4640147259%_
                                                         (gx#syntax-e
                                                          _%tl4640047256%_)))
                                                    (let ((_%tl4640347266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4640147259%_)))
                                                          (_%hd4640247263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4640147259%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4640347266%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4638547206%_)
                                                              (let ((_%__splice7723577236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4638547206%_ '0)))
                        (let ((_%tl4640647272%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7723577236%_ '1)))
                              (_%target4640447269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7723577236%_ '0))))
                          (if (gx#stx-null? _%tl4640647272%_)
                              (_%__match7736577366%_
                               _%e4638047189%_
                               _%hd4638147193%_
                               _%tl4638247196%_
                               _%e4638347199%_
                               _%hd4638447203%_
                               _%tl4638547206%_
                               _%e4638647209%_
                               _%hd4638747213%_
                               _%tl4638847216%_
                               _%e4638947219%_
                               _%hd4639047223%_
                               _%tl4639147226%_
                               _%e4639247229%_
                               _%hd4639347233%_
                               _%tl4639447236%_
                               _%e4639547239%_
                               _%hd4639647243%_
                               _%tl4639747246%_
                               _%e4639847249%_
                               _%hd4639947253%_
                               _%tl4640047256%_
                               _%e4640147259%_
                               _%hd4640247263%_
                               _%tl4640347266%_
                               _%__splice7723577236%_
                               _%target4640447269%_
                               _%tl4640647272%_)
                              (if (gx#stx-pair? _%hd4638747213%_)
                                  (let ((_%e4651646670%_
                                         (gx#syntax-e _%hd4638747213%_)))
                                    (let ((_%tl4651846677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651646670%_)))
                                          (_%hd4651746674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651646670%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))))
                      (if (gx#stx-pair? _%hd4638747213%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4638747213%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                  (if (gx#stx-pair? _%hd4638747213%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4638747213%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (if (gx#stx-pair/null? _%tl4638547206%_)
                              (let ((_%__splice7725177252%_
                                     (gx#syntax-split-splice
                                      _%tl4638547206%_
                                      '0)))
                                (let ((_%tl4652146683%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '1)))
                                      (_%target4651946680%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4652146683%_)
                                      (_%__match7753777538%_
                                       _%e4638047189%_
                                       _%hd4638147193%_
                                       _%tl4638247196%_
                                       _%e4638347199%_
                                       _%hd4638447203%_
                                       _%tl4638547206%_
                                       _%e4638647209%_
                                       _%hd4638747213%_
                                       _%tl4638847216%_
                                       _%e4651646670%_
                                       _%hd4651746674%_
                                       _%tl4651846677%_
                                       _%__splice7725177252%_
                                       _%target4651946680%_
                                       _%tl4652146683%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4639047223%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82624_|
                                                           _%hd4639047223%_)
                                                          (if (gx#stx-null?
                                                               _%tl4640047256%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4638547206%_)
                          (let ((_%__splice7724777248%_
                                 (gx#syntax-split-splice _%tl4638547206%_ '0)))
                            (let ((_%tl4649646825%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724777248%_ '1)))
                                  (_%target4649446822%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724777248%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649646825%_)
                                  (_%__match7750577506%_
                                   _%e4638047189%_
                                   _%hd4638147193%_
                                   _%tl4638247196%_
                                   _%e4638347199%_
                                   _%hd4638447203%_
                                   _%tl4638547206%_
                                   _%e4638647209%_
                                   _%hd4638747213%_
                                   _%tl4638847216%_
                                   _%e4638947219%_
                                   _%hd4639047223%_
                                   _%tl4639147226%_
                                   _%e4639247229%_
                                   _%hd4639347233%_
                                   _%tl4639447236%_
                                   _%e4639547239%_
                                   _%hd4639647243%_
                                   _%tl4639747246%_
                                   _%e4639847249%_
                                   _%hd4639947253%_
                                   _%tl4640047256%_
                                   _%__splice7724777248%_
                                   _%target4649446822%_
                                   _%tl4649646825%_)
                                  (if (gx#stx-pair? _%hd4638747213%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4638747213%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))
                          (if (gx#stx-pair? _%hd4638747213%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4638747213%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                      (if (gx#stx-pair? _%hd4638747213%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4638747213%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (if (gx#stx-pair/null? _%tl4638547206%_)
                                  (let ((_%__splice7725177252%_
                                         (gx#syntax-split-splice
                                          _%tl4638547206%_
                                          '0)))
                                    (let ((_%tl4652146683%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '1)))
                                          (_%target4651946680%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4652146683%_)
                                          (_%__match7753777538%_
                                           _%e4638047189%_
                                           _%hd4638147193%_
                                           _%tl4638247196%_
                                           _%e4638347199%_
                                           _%hd4638447203%_
                                           _%tl4638547206%_
                                           _%e4638647209%_
                                           _%hd4638747213%_
                                           _%tl4638847216%_
                                           _%e4651646670%_
                                           _%hd4651746674%_
                                           _%tl4651846677%_
                                           _%__splice7725177252%_
                                           _%target4651946680%_
                                           _%tl4652146683%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                  (if (gx#stx-pair? _%hd4638747213%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4638747213%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (if (gx#stx-pair/null? _%tl4638547206%_)
                              (let ((_%__splice7725177252%_
                                     (gx#syntax-split-splice
                                      _%tl4638547206%_
                                      '0)))
                                (let ((_%tl4652146683%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '1)))
                                      (_%target4651946680%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4652146683%_)
                                      (_%__match7753777538%_
                                       _%e4638047189%_
                                       _%hd4638147193%_
                                       _%tl4638247196%_
                                       _%e4638347199%_
                                       _%hd4638447203%_
                                       _%tl4638547206%_
                                       _%e4638647209%_
                                       _%hd4638747213%_
                                       _%tl4638847216%_
                                       _%e4651646670%_
                                       _%hd4651746674%_
                                       _%tl4651846677%_
                                       _%__splice7725177252%_
                                       _%target4651946680%_
                                       _%tl4652146683%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
              (if (gx#stx-pair? _%hd4638747213%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4638747213%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4638547206%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4638547206%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4638047189%_
                                   _%hd4638147193%_
                                   _%tl4638247196%_
                                   _%e4638347199%_
                                   _%hd4638447203%_
                                   _%tl4638547206%_
                                   _%e4638647209%_
                                   _%hd4638747213%_
                                   _%tl4638847216%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638747213%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4638747213%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638547206%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638547206%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4638047189%_
                       _%hd4638147193%_
                       _%tl4638247196%_
                       _%e4638347199%_
                       _%hd4638447203%_
                       _%tl4638547206%_
                       _%e4638647209%_
                       _%hd4638747213%_
                       _%tl4638847216%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))))
                                  (if (gx#stx-null? _%tl4639447236%_)
                                      (if (gx#stx-pair/null? _%tl4638547206%_)
                                          (let ((_%__splice7723977240%_
                                                 (gx#syntax-split-splice
                                                  _%tl4638547206%_
                                                  '0)))
                                            (let ((_%tl4643447089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7723977240%_
                                                      '1)))
                                                  (_%target4643247086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7723977240%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4643447089%_)
                                                  (_%__match7740577406%_
                                                   _%e4638047189%_
                                                   _%hd4638147193%_
                                                   _%tl4638247196%_
                                                   _%e4638347199%_
                                                   _%hd4638447203%_
                                                   _%tl4638547206%_
                                                   _%e4638647209%_
                                                   _%hd4638747213%_
                                                   _%tl4638847216%_
                                                   _%e4638947219%_
                                                   _%hd4639047223%_
                                                   _%tl4639147226%_
                                                   _%e4639247229%_
                                                   _%hd4639347233%_
                                                   _%tl4639447236%_
                                                   _%__splice7723977240%_
                                                   _%target4643247086%_
                                                   _%tl4643447089%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4638747213%_)
                                                      (let ((_%e4651646670%_
                                                             (gx#syntax-e
                                                              _%hd4638747213%_)))
                                                        (let ((_%tl4651846677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651646670%_)))
                      (_%hd4651746674%_
                       (let () (declare (not safe)) (##car _%e4651646670%_))))
                  (let () (declare (not safe)) (_%g4634046549%_))))
              (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638747213%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4638747213%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                      (if (gx#stx-pair? _%hd4638747213%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4638747213%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638547206%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638547206%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4638047189%_
                                                           _%hd4638147193%_
                                                           _%tl4638247196%_
                                                           _%e4638347199%_
                                                           _%hd4638447203%_
                                                           _%tl4638547206%_
                                                           _%e4638647209%_
                                                           _%hd4638747213%_
                                                           _%tl4638847216%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                              (if (gx#stx-null? _%tl4639447236%_)
                                  (if (gx#stx-pair/null? _%tl4638547206%_)
                                      (let ((_%__splice7723977240%_
                                             (gx#syntax-split-splice
                                              _%tl4638547206%_
                                              '0)))
                                        (let ((_%tl4643447089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7723977240%_
                                                  '1)))
                                              (_%target4643247086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7723977240%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4643447089%_)
                                              (_%__match7740577406%_
                                               _%e4638047189%_
                                               _%hd4638147193%_
                                               _%tl4638247196%_
                                               _%e4638347199%_
                                               _%hd4638447203%_
                                               _%tl4638547206%_
                                               _%e4638647209%_
                                               _%hd4638747213%_
                                               _%tl4638847216%_
                                               _%e4638947219%_
                                               _%hd4639047223%_
                                               _%tl4639147226%_
                                               _%e4639247229%_
                                               _%hd4639347233%_
                                               _%tl4639447236%_
                                               _%__splice7723977240%_
                                               _%target4643247086%_
                                               _%tl4643447089%_)
                                              (if (gx#stx-pair?
                                                   _%hd4638747213%_)
                                                  (let ((_%e4651646670%_
                                                         (gx#syntax-e
                                                          _%hd4638747213%_)))
                                                    (let ((_%tl4651846677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651646670%_)))
                                                          (_%hd4651746674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651646670%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4634046549%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))))
                                      (if (gx#stx-pair? _%hd4638747213%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4638747213%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                  (if (gx#identifier? _%hd4639047223%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82624_|
                                           _%hd4639047223%_)
                                          (if (gx#stx-pair? _%tl4639447236%_)
                                              (let ((_%e4648846802%_
                                                     (gx#syntax-e
                                                      _%tl4639447236%_)))
                                                (let ((_%tl4649046809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648846802%_)))
                                                      (_%hd4648946806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648846802%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4649046809%_)
                                                      (let ((_%e4649146812%_
                                                             (gx#syntax-e
                                                              _%tl4649046809%_)))
                                                        (let ((_%tl4649346819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4649146812%_)))
                      (_%hd4649246816%_
                       (let () (declare (not safe)) (##car _%e4649146812%_))))
                  (if (gx#stx-null? _%tl4649346819%_)
                      (if (gx#stx-pair/null? _%tl4638547206%_)
                          (let ((_%__splice7724777248%_
                                 (gx#syntax-split-splice _%tl4638547206%_ '0)))
                            (let ((_%tl4649646825%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7724777248%_ '1)))
                                  (_%target4649446822%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7724777248%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649646825%_)
                                  (_%__match7750577506%_
                                   _%e4638047189%_
                                   _%hd4638147193%_
                                   _%tl4638247196%_
                                   _%e4638347199%_
                                   _%hd4638447203%_
                                   _%tl4638547206%_
                                   _%e4638647209%_
                                   _%hd4638747213%_
                                   _%tl4638847216%_
                                   _%e4638947219%_
                                   _%hd4639047223%_
                                   _%tl4639147226%_
                                   _%e4639247229%_
                                   _%hd4639347233%_
                                   _%tl4639447236%_
                                   _%e4648846802%_
                                   _%hd4648946806%_
                                   _%tl4649046809%_
                                   _%e4649146812%_
                                   _%hd4649246816%_
                                   _%tl4649346819%_
                                   _%__splice7724777248%_
                                   _%target4649446822%_
                                   _%tl4649646825%_)
                                  (if (gx#stx-pair? _%hd4638747213%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4638747213%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))
                          (if (gx#stx-pair? _%hd4638747213%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4638747213%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                      (if (gx#stx-pair? _%hd4638747213%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4638747213%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (if (gx#stx-pair/null? _%tl4638547206%_)
                                  (let ((_%__splice7725177252%_
                                         (gx#syntax-split-splice
                                          _%tl4638547206%_
                                          '0)))
                                    (let ((_%tl4652146683%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '1)))
                                          (_%target4651946680%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4652146683%_)
                                          (_%__match7753777538%_
                                           _%e4638047189%_
                                           _%hd4638147193%_
                                           _%tl4638247196%_
                                           _%e4638347199%_
                                           _%hd4638447203%_
                                           _%tl4638547206%_
                                           _%e4638647209%_
                                           _%hd4638747213%_
                                           _%tl4638847216%_
                                           _%e4651646670%_
                                           _%hd4651746674%_
                                           _%tl4651846677%_
                                           _%__splice7725177252%_
                                           _%target4651946680%_
                                           _%tl4652146683%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_))))))
              (if (gx#stx-pair? _%hd4638747213%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4638747213%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4638547206%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4638547206%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4638047189%_
                                   _%hd4638147193%_
                                   _%tl4638247196%_
                                   _%e4638347199%_
                                   _%hd4638447203%_
                                   _%tl4638547206%_
                                   _%e4638647209%_
                                   _%hd4638747213%_
                                   _%tl4638847216%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4638747213%_)
                                                  (let ((_%e4651646670%_
                                                         (gx#syntax-e
                                                          _%hd4638747213%_)))
                                                    (let ((_%tl4651846677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651646670%_)))
                                                          (_%hd4651746674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651646670%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4638547206%_)
                                                          (let ((_%__splice7725177252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4638547206%_ '0)))
                    (let ((_%tl4652146683%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '1)))
                          (_%target4651946680%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '0))))
                      (if (gx#stx-null? _%tl4652146683%_)
                          (_%__match7753777538%_
                           _%e4638047189%_
                           _%hd4638147193%_
                           _%tl4638247196%_
                           _%e4638347199%_
                           _%hd4638447203%_
                           _%tl4638547206%_
                           _%e4638647209%_
                           _%hd4638747213%_
                           _%tl4638847216%_
                           _%e4651646670%_
                           _%hd4651746674%_
                           _%tl4651846677%_
                           _%__splice7725177252%_
                           _%target4651946680%_
                           _%tl4652146683%_)
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))
                                          (if (gx#stx-pair? _%hd4638747213%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4638747213%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638547206%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638547206%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4638047189%_
                       _%hd4638147193%_
                       _%tl4638247196%_
                       _%e4638347199%_
                       _%hd4638447203%_
                       _%tl4638547206%_
                       _%e4638647209%_
                       _%hd4638747213%_
                       _%tl4638847216%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                      (if (gx#stx-pair? _%hd4638747213%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4638747213%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638547206%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638547206%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4638047189%_
                                                           _%hd4638147193%_
                                                           _%tl4638247196%_
                                                           _%e4638347199%_
                                                           _%hd4638447203%_
                                                           _%tl4638547206%_
                                                           _%e4638647209%_
                                                           _%hd4638747213%_
                                                           _%tl4638847216%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))))
                          (if (gx#stx-null? _%tl4639447236%_)
                              (if (gx#stx-pair/null? _%tl4638547206%_)
                                  (let ((_%__splice7723977240%_
                                         (gx#syntax-split-splice
                                          _%tl4638547206%_
                                          '0)))
                                    (let ((_%tl4643447089%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7723977240%_
                                              '1)))
                                          (_%target4643247086%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7723977240%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4643447089%_)
                                          (_%__match7740577406%_
                                           _%e4638047189%_
                                           _%hd4638147193%_
                                           _%tl4638247196%_
                                           _%e4638347199%_
                                           _%hd4638447203%_
                                           _%tl4638547206%_
                                           _%e4638647209%_
                                           _%hd4638747213%_
                                           _%tl4638847216%_
                                           _%e4638947219%_
                                           _%hd4639047223%_
                                           _%tl4639147226%_
                                           _%e4639247229%_
                                           _%hd4639347233%_
                                           _%tl4639447236%_
                                           _%__splice7723977240%_
                                           _%target4643247086%_
                                           _%tl4643447089%_)
                                          (if (gx#stx-pair? _%hd4638747213%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4638747213%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))))
                                  (if (gx#stx-pair? _%hd4638747213%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4638747213%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                              (if (gx#identifier? _%hd4639047223%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82624_|
                                       _%hd4639047223%_)
                                      (if (gx#stx-pair? _%tl4639447236%_)
                                          (let ((_%e4648846802%_
                                                 (gx#syntax-e
                                                  _%tl4639447236%_)))
                                            (let ((_%tl4649046809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4648846802%_)))
                                                  (_%hd4648946806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4648846802%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4649046809%_)
                                                  (let ((_%e4649146812%_
                                                         (gx#syntax-e
                                                          _%tl4649046809%_)))
                                                    (let ((_%tl4649346819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4649146812%_)))
                                                          (_%hd4649246816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4649146812%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4649346819%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4638547206%_)
                                                              (let ((_%__splice7724777248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4638547206%_ '0)))
                        (let ((_%tl4649646825%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724777248%_ '1)))
                              (_%target4649446822%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724777248%_ '0))))
                          (if (gx#stx-null? _%tl4649646825%_)
                              (_%__match7750577506%_
                               _%e4638047189%_
                               _%hd4638147193%_
                               _%tl4638247196%_
                               _%e4638347199%_
                               _%hd4638447203%_
                               _%tl4638547206%_
                               _%e4638647209%_
                               _%hd4638747213%_
                               _%tl4638847216%_
                               _%e4638947219%_
                               _%hd4639047223%_
                               _%tl4639147226%_
                               _%e4639247229%_
                               _%hd4639347233%_
                               _%tl4639447236%_
                               _%e4648846802%_
                               _%hd4648946806%_
                               _%tl4649046809%_
                               _%e4649146812%_
                               _%hd4649246816%_
                               _%tl4649346819%_
                               _%__splice7724777248%_
                               _%target4649446822%_
                               _%tl4649646825%_)
                              (if (gx#stx-pair? _%hd4638747213%_)
                                  (let ((_%e4651646670%_
                                         (gx#syntax-e _%hd4638747213%_)))
                                    (let ((_%tl4651846677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651646670%_)))
                                          (_%hd4651746674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651646670%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))))
                      (if (gx#stx-pair? _%hd4638747213%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4638747213%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                  (if (gx#stx-pair? _%hd4638747213%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4638747213%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (if (gx#stx-pair/null? _%tl4638547206%_)
                              (let ((_%__splice7725177252%_
                                     (gx#syntax-split-splice
                                      _%tl4638547206%_
                                      '0)))
                                (let ((_%tl4652146683%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '1)))
                                      (_%target4651946680%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4652146683%_)
                                      (_%__match7753777538%_
                                       _%e4638047189%_
                                       _%hd4638147193%_
                                       _%tl4638247196%_
                                       _%e4638347199%_
                                       _%hd4638447203%_
                                       _%tl4638547206%_
                                       _%e4638647209%_
                                       _%hd4638747213%_
                                       _%tl4638847216%_
                                       _%e4651646670%_
                                       _%hd4651746674%_
                                       _%tl4651846677%_
                                       _%__splice7725177252%_
                                       _%target4651946680%_
                                       _%tl4652146683%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4638747213%_)
                                                      (let ((_%e4651646670%_
                                                             (gx#syntax-e
                                                              _%hd4638747213%_)))
                                                        (let ((_%tl4651846677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651646670%_)))
                      (_%hd4651746674%_
                       (let () (declare (not safe)) (##car _%e4651646670%_))))
                  (if (gx#stx-pair/null? _%tl4638547206%_)
                      (let ((_%__splice7725177252%_
                             (gx#syntax-split-splice _%tl4638547206%_ '0)))
                        (let ((_%tl4652146683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '1)))
                              (_%target4651946680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '0))))
                          (if (gx#stx-null? _%tl4652146683%_)
                              (_%__match7753777538%_
                               _%e4638047189%_
                               _%hd4638147193%_
                               _%tl4638247196%_
                               _%e4638347199%_
                               _%hd4638447203%_
                               _%tl4638547206%_
                               _%e4638647209%_
                               _%hd4638747213%_
                               _%tl4638847216%_
                               _%e4651646670%_
                               _%hd4651746674%_
                               _%tl4651846677%_
                               _%__splice7725177252%_
                               _%target4651946680%_
                               _%tl4652146683%_)
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4638747213%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4638747213%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4638547206%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4638547206%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4638047189%_
                       _%hd4638147193%_
                       _%tl4638247196%_
                       _%e4638347199%_
                       _%hd4638447203%_
                       _%tl4638547206%_
                       _%e4638647209%_
                       _%hd4638747213%_
                       _%tl4638847216%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                      (if (gx#stx-pair? _%hd4638747213%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4638747213%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4638547206%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4638547206%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4638047189%_
                                                           _%hd4638147193%_
                                                           _%tl4638247196%_
                                                           _%e4638347199%_
                                                           _%hd4638447203%_
                                                           _%tl4638547206%_
                                                           _%e4638647209%_
                                                           _%hd4638747213%_
                                                           _%tl4638847216%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                  (if (gx#stx-pair? _%hd4638747213%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4638747213%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4638547206%_)
                                              (let ((_%__splice7725177252%_
                                                     (gx#syntax-split-splice
                                                      _%tl4638547206%_
                                                      '0)))
                                                (let ((_%tl4652146683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '1)))
                                                      (_%target4651946680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652146683%_)
                                                      (_%__match7753777538%_
                                                       _%e4638047189%_
                                                       _%hd4638147193%_
                                                       _%tl4638247196%_
                                                       _%e4638347199%_
                                                       _%hd4638447203%_
                                                       _%tl4638547206%_
                                                       _%e4638647209%_
                                                       _%hd4638747213%_
                                                       _%tl4638847216%_
                                                       _%e4651646670%_
                                                       _%hd4651746674%_
                                                       _%tl4651846677%_
                                                       _%__splice7725177252%_
                                                       _%target4651946680%_
                                                       _%tl4652146683%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4634046549%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))))
                   (_%__match7730377304%_
                    (lambda (_%e4634747365%_
                             _%hd4634847369%_
                             _%tl4634947372%_
                             _%e4635047375%_
                             _%hd4635147379%_
                             _%tl4635247382%_
                             _%e4635347385%_
                             _%hd4635447389%_
                             _%tl4635547392%_
                             _%e4635647395%_
                             _%hd4635747399%_
                             _%tl4635847402%_
                             _%e4635947405%_
                             _%hd4636047409%_
                             _%tl4636147412%_
                             _%e4636247415%_
                             _%hd4636347419%_
                             _%tl4636447422%_
                             _%__splice7723177232%_
                             _%target4636547425%_
                             _%tl4636747428%_)
                      (letrec ((_%loop4636847431%_
                                (lambda (_%hd4636647435%_ _%body4637247438%_)
                                  (if (gx#stx-pair? _%hd4636647435%_)
                                      (let ((_%e4636947441%_
                                             (gx#syntax-e _%hd4636647435%_)))
                                        (let ((_%lp-tl4637147448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4636947441%_)))
                                              (_%lp-hd4637047445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4636947441%_))))
                                          (_%loop4636847431%_
                                           _%lp-tl4637147448%_
                                           (cons _%lp-hd4637047445%_
                                                 _%body4637247438%_))))
                                      (let ((_%body4637347451%_
                                             (reverse _%body4637247438%_)))
                                        (let ((_%L47455%_ _%body4637347451%_)
                                              (_%L47457%_ _%hd4636347419%_)
                                              (_%L47458%_ _%hd4636047409%_)
                                              (_%L47459%_ _%hd4635747399%_)
                                              (_%L47460%_ _%hd4635447389%_))
                                          (if (and (gx#identifier? _%L47460%_)
                                                   (gx#identifier? _%L47458%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47458%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47458%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47458%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47458%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47458%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7722977230%_
                                               _%L47455%_
                                               _%L47457%_
                                               _%L47458%_
                                               _%L47459%_
                                               _%L47460%_)
                                              (_%__match7733377334%_
                                               _%e4634747365%_
                                               _%hd4634847369%_
                                               _%tl4634947372%_
                                               _%e4635047375%_
                                               _%hd4635147379%_
                                               _%tl4635247382%_
                                               _%e4635347385%_
                                               _%hd4635447389%_
                                               _%tl4635547392%_
                                               _%e4635647395%_
                                               _%hd4635747399%_
                                               _%tl4635847402%_
                                               _%e4635947405%_
                                               _%hd4636047409%_
                                               _%tl4636147412%_))))))))
                        (_%loop4636847431%_ _%target4636547425%_ '())))))
              (if (gx#stx-pair? _%__stx7722677227%_)
                  (let ((_%e4634747365%_ (gx#syntax-e _%__stx7722677227%_)))
                    (let ((_%tl4634947372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4634747365%_)))
                          (_%hd4634847369%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4634747365%_))))
                      (if (gx#stx-pair? _%tl4634947372%_)
                          (let ((_%e4635047375%_
                                 (gx#syntax-e _%tl4634947372%_)))
                            (let ((_%tl4635247382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4635047375%_)))
                                  (_%hd4635147379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4635047375%_))))
                              (if (gx#stx-pair? _%hd4635147379%_)
                                  (let ((_%e4635347385%_
                                         (gx#syntax-e _%hd4635147379%_)))
                                    (let ((_%tl4635547392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4635347385%_)))
                                          (_%hd4635447389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4635347385%_))))
                                      (if (gx#stx-pair? _%tl4635547392%_)
                                          (let ((_%e4635647395%_
                                                 (gx#syntax-e
                                                  _%tl4635547392%_)))
                                            (let ((_%tl4635847402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4635647395%_)))
                                                  (_%hd4635747399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4635647395%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4635847402%_)
                                                  (let ((_%e4635947405%_
                                                         (gx#syntax-e
                                                          _%tl4635847402%_)))
                                                    (let ((_%tl4636147412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4635947405%_)))
                                                          (_%hd4636047409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4635947405%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4636147412%_)
                                                          (let ((_%e4636247415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4636147412%_)))
                    (let ((_%tl4636447422%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4636247415%_)))
                          (_%hd4636347419%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4636247415%_))))
                      (if (gx#stx-null? _%tl4636447422%_)
                          (if (gx#stx-pair/null? _%tl4635247382%_)
                              (let ((_%__splice7723177232%_
                                     (gx#syntax-split-splice
                                      _%tl4635247382%_
                                      '0)))
                                (let ((_%tl4636747428%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7723177232%_
                                          '1)))
                                      (_%target4636547425%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7723177232%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4636747428%_)
                                      (_%__match7730377304%_
                                       _%e4634747365%_
                                       _%hd4634847369%_
                                       _%tl4634947372%_
                                       _%e4635047375%_
                                       _%hd4635147379%_
                                       _%tl4635247382%_
                                       _%e4635347385%_
                                       _%hd4635447389%_
                                       _%tl4635547392%_
                                       _%e4635647395%_
                                       _%hd4635747399%_
                                       _%tl4635847402%_
                                       _%e4635947405%_
                                       _%hd4636047409%_
                                       _%tl4636147412%_
                                       _%e4636247415%_
                                       _%hd4636347419%_
                                       _%tl4636447422%_
                                       _%__splice7723177232%_
                                       _%target4636547425%_
                                       _%tl4636747428%_)
                                      (if (gx#stx-pair? _%hd4635447389%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4635447389%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))))
                              (if (gx#stx-pair? _%hd4635447389%_)
                                  (let ((_%e4651646670%_
                                         (gx#syntax-e _%hd4635447389%_)))
                                    (let ((_%tl4651846677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651646670%_)))
                                          (_%hd4651746674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651646670%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                          (if (gx#identifier? _%hd4636047409%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g82625_|
                                   _%hd4636047409%_)
                                  (if (gx#stx-pair? _%tl4636447422%_)
                                      (let ((_%e4639847249%_
                                             (gx#syntax-e _%tl4636447422%_)))
                                        (let ((_%tl4640047256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4639847249%_)))
                                              (_%hd4639947253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4639847249%_))))
                                          (if (gx#stx-pair? _%tl4640047256%_)
                                              (let ((_%e4640147259%_
                                                     (gx#syntax-e
                                                      _%tl4640047256%_)))
                                                (let ((_%tl4640347266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4640147259%_)))
                                                      (_%hd4640247263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4640147259%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4640347266%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635247382%_)
                                                          (let ((_%__splice7723577236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635247382%_ '0)))
                    (let ((_%tl4640647272%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7723577236%_ '1)))
                          (_%target4640447269%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7723577236%_ '0))))
                      (if (gx#stx-null? _%tl4640647272%_)
                          (_%__match7736577366%_
                           _%e4634747365%_
                           _%hd4634847369%_
                           _%tl4634947372%_
                           _%e4635047375%_
                           _%hd4635147379%_
                           _%tl4635247382%_
                           _%e4635347385%_
                           _%hd4635447389%_
                           _%tl4635547392%_
                           _%e4635647395%_
                           _%hd4635747399%_
                           _%tl4635847402%_
                           _%e4635947405%_
                           _%hd4636047409%_
                           _%tl4636147412%_
                           _%e4636247415%_
                           _%hd4636347419%_
                           _%tl4636447422%_
                           _%e4639847249%_
                           _%hd4639947253%_
                           _%tl4640047256%_
                           _%e4640147259%_
                           _%hd4640247263%_
                           _%tl4640347266%_
                           _%__splice7723577236%_
                           _%target4640447269%_
                           _%tl4640647272%_)
                          (if (gx#stx-pair? _%hd4635447389%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4635447389%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_))))))
                  (if (gx#stx-pair? _%hd4635447389%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
              (if (gx#stx-pair? _%hd4635447389%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4635247382%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4635247382%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4634747365%_
                                   _%hd4634847369%_
                                   _%tl4634947372%_
                                   _%e4635047375%_
                                   _%hd4635147379%_
                                   _%tl4635247382%_
                                   _%e4635347385%_
                                   _%hd4635447389%_
                                   _%tl4635547392%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4635747399%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g82624_|
                                                       _%hd4635747399%_)
                                                      (if (gx#stx-null?
                                                           _%tl4640047256%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4635247382%_)
                                                              (let ((_%__splice7724777248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4635247382%_ '0)))
                        (let ((_%tl4649646825%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724777248%_ '1)))
                              (_%target4649446822%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7724777248%_ '0))))
                          (if (gx#stx-null? _%tl4649646825%_)
                              (_%__match7750577506%_
                               _%e4634747365%_
                               _%hd4634847369%_
                               _%tl4634947372%_
                               _%e4635047375%_
                               _%hd4635147379%_
                               _%tl4635247382%_
                               _%e4635347385%_
                               _%hd4635447389%_
                               _%tl4635547392%_
                               _%e4635647395%_
                               _%hd4635747399%_
                               _%tl4635847402%_
                               _%e4635947405%_
                               _%hd4636047409%_
                               _%tl4636147412%_
                               _%e4636247415%_
                               _%hd4636347419%_
                               _%tl4636447422%_
                               _%e4639847249%_
                               _%hd4639947253%_
                               _%tl4640047256%_
                               _%__splice7724777248%_
                               _%target4649446822%_
                               _%tl4649646825%_)
                              (if (gx#stx-pair? _%hd4635447389%_)
                                  (let ((_%e4651646670%_
                                         (gx#syntax-e _%hd4635447389%_)))
                                    (let ((_%tl4651846677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651646670%_)))
                                          (_%hd4651746674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651646670%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))))
                      (if (gx#stx-pair? _%hd4635447389%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4635447389%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                  (if (gx#stx-pair? _%hd4635447389%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (if (gx#stx-pair/null? _%tl4635247382%_)
                              (let ((_%__splice7725177252%_
                                     (gx#syntax-split-splice
                                      _%tl4635247382%_
                                      '0)))
                                (let ((_%tl4652146683%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '1)))
                                      (_%target4651946680%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7725177252%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4652146683%_)
                                      (_%__match7753777538%_
                                       _%e4634747365%_
                                       _%hd4634847369%_
                                       _%tl4634947372%_
                                       _%e4635047375%_
                                       _%hd4635147379%_
                                       _%tl4635247382%_
                                       _%e4635347385%_
                                       _%hd4635447389%_
                                       _%tl4635547392%_
                                       _%e4651646670%_
                                       _%hd4651746674%_
                                       _%tl4651846677%_
                                       _%__splice7725177252%_
                                       _%target4651946680%_
                                       _%tl4652146683%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
              (if (gx#stx-pair? _%hd4635447389%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4635247382%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4635247382%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4634747365%_
                                   _%hd4634847369%_
                                   _%tl4634947372%_
                                   _%e4635047375%_
                                   _%hd4635147379%_
                                   _%tl4635247382%_
                                   _%e4635347385%_
                                   _%hd4635447389%_
                                   _%tl4635547392%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635447389%_)
                                                      (let ((_%e4651646670%_
                                                             (gx#syntax-e
                                                              _%hd4635447389%_)))
                                                        (let ((_%tl4651846677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651646670%_)))
                      (_%hd4651746674%_
                       (let () (declare (not safe)) (##car _%e4651646670%_))))
                  (if (gx#stx-pair/null? _%tl4635247382%_)
                      (let ((_%__splice7725177252%_
                             (gx#syntax-split-splice _%tl4635247382%_ '0)))
                        (let ((_%tl4652146683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '1)))
                              (_%target4651946680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '0))))
                          (if (gx#stx-null? _%tl4652146683%_)
                              (_%__match7753777538%_
                               _%e4634747365%_
                               _%hd4634847369%_
                               _%tl4634947372%_
                               _%e4635047375%_
                               _%hd4635147379%_
                               _%tl4635247382%_
                               _%e4635347385%_
                               _%hd4635447389%_
                               _%tl4635547392%_
                               _%e4651646670%_
                               _%hd4651746674%_
                               _%tl4651846677%_
                               _%__splice7725177252%_
                               _%target4651946680%_
                               _%tl4652146683%_)
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4635447389%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4635447389%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635247382%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635247382%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4634747365%_
                                                           _%hd4634847369%_
                                                           _%tl4634947372%_
                                                           _%e4635047375%_
                                                           _%hd4635147379%_
                                                           _%tl4635247382%_
                                                           _%e4635347385%_
                                                           _%hd4635447389%_
                                                           _%tl4635547392%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                  (if (gx#identifier? _%hd4635747399%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82624_|
                                           _%hd4635747399%_)
                                          (if (gx#stx-pair? _%tl4636447422%_)
                                              (let ((_%e4649146812%_
                                                     (gx#syntax-e
                                                      _%tl4636447422%_)))
                                                (let ((_%tl4649346819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4649146812%_)))
                                                      (_%hd4649246816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4649146812%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4649346819%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635247382%_)
                                                          (let ((_%__splice7724777248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635247382%_ '0)))
                    (let ((_%tl4649646825%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724777248%_ '1)))
                          (_%target4649446822%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7724777248%_ '0))))
                      (if (gx#stx-null? _%tl4649646825%_)
                          (_%__match7750577506%_
                           _%e4634747365%_
                           _%hd4634847369%_
                           _%tl4634947372%_
                           _%e4635047375%_
                           _%hd4635147379%_
                           _%tl4635247382%_
                           _%e4635347385%_
                           _%hd4635447389%_
                           _%tl4635547392%_
                           _%e4635647395%_
                           _%hd4635747399%_
                           _%tl4635847402%_
                           _%e4635947405%_
                           _%hd4636047409%_
                           _%tl4636147412%_
                           _%e4636247415%_
                           _%hd4636347419%_
                           _%tl4636447422%_
                           _%e4649146812%_
                           _%hd4649246816%_
                           _%tl4649346819%_
                           _%__splice7724777248%_
                           _%target4649446822%_
                           _%tl4649646825%_)
                          (if (gx#stx-pair? _%hd4635447389%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4635447389%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_))))))
                  (if (gx#stx-pair? _%hd4635447389%_)
                      (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                        (let ((_%tl4651846677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4651646670%_)))
                              (_%hd4651746674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4651646670%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
              (if (gx#stx-pair? _%hd4635447389%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (if (gx#stx-pair/null? _%tl4635247382%_)
                          (let ((_%__splice7725177252%_
                                 (gx#syntax-split-splice _%tl4635247382%_ '0)))
                            (let ((_%tl4652146683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7725177252%_ '1)))
                                  (_%target4651946680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7725177252%_
                                      '0))))
                              (if (gx#stx-null? _%tl4652146683%_)
                                  (_%__match7753777538%_
                                   _%e4634747365%_
                                   _%hd4634847369%_
                                   _%tl4634947372%_
                                   _%e4635047375%_
                                   _%hd4635147379%_
                                   _%tl4635247382%_
                                   _%e4635347385%_
                                   _%hd4635447389%_
                                   _%tl4635547392%_
                                   _%e4651646670%_
                                   _%hd4651746674%_
                                   _%tl4651846677%_
                                   _%__splice7725177252%_
                                   _%target4651946680%_
                                   _%tl4652146683%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4635447389%_)
                                                  (let ((_%e4651646670%_
                                                         (gx#syntax-e
                                                          _%hd4635447389%_)))
                                                    (let ((_%tl4651846677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4651646670%_)))
                                                          (_%hd4651746674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4651646670%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4635247382%_)
                                                          (let ((_%__splice7725177252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4635247382%_ '0)))
                    (let ((_%tl4652146683%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '1)))
                          (_%target4651946680%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7725177252%_ '0))))
                      (if (gx#stx-null? _%tl4652146683%_)
                          (_%__match7753777538%_
                           _%e4634747365%_
                           _%hd4634847369%_
                           _%tl4634947372%_
                           _%e4635047375%_
                           _%hd4635147379%_
                           _%tl4635247382%_
                           _%e4635347385%_
                           _%hd4635447389%_
                           _%tl4635547392%_
                           _%e4651646670%_
                           _%hd4651746674%_
                           _%tl4651846677%_
                           _%__splice7725177252%_
                           _%target4651946680%_
                           _%tl4652146683%_)
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_))))
                                          (if (gx#stx-pair? _%hd4635447389%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4635447389%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635247382%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635247382%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4634747365%_
                       _%hd4634847369%_
                       _%tl4634947372%_
                       _%e4635047375%_
                       _%hd4635147379%_
                       _%tl4635247382%_
                       _%e4635347385%_
                       _%hd4635447389%_
                       _%tl4635547392%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                      (if (gx#stx-pair? _%hd4635447389%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4635447389%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635247382%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635247382%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4634747365%_
                                                           _%hd4634847369%_
                                                           _%tl4634947372%_
                                                           _%e4635047375%_
                                                           _%hd4635147379%_
                                                           _%tl4635247382%_
                                                           _%e4635347385%_
                                                           _%hd4635447389%_
                                                           _%tl4635547392%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                              (if (gx#identifier? _%hd4635747399%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82624_|
                                       _%hd4635747399%_)
                                      (if (gx#stx-pair? _%tl4636447422%_)
                                          (let ((_%e4649146812%_
                                                 (gx#syntax-e
                                                  _%tl4636447422%_)))
                                            (let ((_%tl4649346819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4649146812%_)))
                                                  (_%hd4649246816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4649146812%_))))
                                              (if (gx#stx-null?
                                                   _%tl4649346819%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635247382%_)
                                                      (let ((_%__splice7724777248%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635247382%_
                                                              '0)))
                                                        (let ((_%tl4649646825%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7724777248%_ '1)))
                      (_%target4649446822%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7724777248%_ '0))))
                  (if (gx#stx-null? _%tl4649646825%_)
                      (_%__match7750577506%_
                       _%e4634747365%_
                       _%hd4634847369%_
                       _%tl4634947372%_
                       _%e4635047375%_
                       _%hd4635147379%_
                       _%tl4635247382%_
                       _%e4635347385%_
                       _%hd4635447389%_
                       _%tl4635547392%_
                       _%e4635647395%_
                       _%hd4635747399%_
                       _%tl4635847402%_
                       _%e4635947405%_
                       _%hd4636047409%_
                       _%tl4636147412%_
                       _%e4636247415%_
                       _%hd4636347419%_
                       _%tl4636447422%_
                       _%e4649146812%_
                       _%hd4649246816%_
                       _%tl4649346819%_
                       _%__splice7724777248%_
                       _%target4649446822%_
                       _%tl4649646825%_)
                      (if (gx#stx-pair? _%hd4635447389%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4635447389%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                          (let () (declare (not safe)) (_%g4634046549%_))))))
              (if (gx#stx-pair? _%hd4635447389%_)
                  (let ((_%e4651646670%_ (gx#syntax-e _%hd4635447389%_)))
                    (let ((_%tl4651846677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4651646670%_)))
                          (_%hd4651746674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4651646670%_))))
                      (let () (declare (not safe)) (_%g4634046549%_))))
                  (let () (declare (not safe)) (_%g4634046549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635447389%_)
                                                      (let ((_%e4651646670%_
                                                             (gx#syntax-e
                                                              _%hd4635447389%_)))
                                                        (let ((_%tl4651846677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651646670%_)))
                      (_%hd4651746674%_
                       (let () (declare (not safe)) (##car _%e4651646670%_))))
                  (if (gx#stx-pair/null? _%tl4635247382%_)
                      (let ((_%__splice7725177252%_
                             (gx#syntax-split-splice _%tl4635247382%_ '0)))
                        (let ((_%tl4652146683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '1)))
                              (_%target4651946680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '0))))
                          (if (gx#stx-null? _%tl4652146683%_)
                              (_%__match7753777538%_
                               _%e4634747365%_
                               _%hd4634847369%_
                               _%tl4634947372%_
                               _%e4635047375%_
                               _%hd4635147379%_
                               _%tl4635247382%_
                               _%e4635347385%_
                               _%hd4635447389%_
                               _%tl4635547392%_
                               _%e4651646670%_
                               _%hd4651746674%_
                               _%tl4651846677%_
                               _%__splice7725177252%_
                               _%target4651946680%_
                               _%tl4652146683%_)
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4635447389%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4635447389%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635247382%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635247382%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4634747365%_
                       _%hd4634847369%_
                       _%tl4634947372%_
                       _%e4635047375%_
                       _%hd4635147379%_
                       _%tl4635247382%_
                       _%e4635347385%_
                       _%hd4635447389%_
                       _%tl4635547392%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))
                                      (if (gx#stx-pair? _%hd4635447389%_)
                                          (let ((_%e4651646670%_
                                                 (gx#syntax-e
                                                  _%hd4635447389%_)))
                                            (let ((_%tl4651846677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4651646670%_)))
                                                  (_%hd4651746674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4651646670%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4635247382%_)
                                                  (let ((_%__splice7725177252%_
                                                         (gx#syntax-split-splice
                                                          _%tl4635247382%_
                                                          '0)))
                                                    (let ((_%tl4652146683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '1)))
                                                          (_%target4651946680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7725177252%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4652146683%_)
                                                          (_%__match7753777538%_
                                                           _%e4634747365%_
                                                           _%hd4634847369%_
                                                           _%tl4634947372%_
                                                           _%e4635047375%_
                                                           _%hd4635147379%_
                                                           _%tl4635247382%_
                                                           _%e4635347385%_
                                                           _%hd4635447389%_
                                                           _%tl4635547392%_
                                                           _%e4651646670%_
                                                           _%hd4651746674%_
                                                           _%tl4651846677%_
                                                           _%__splice7725177252%_
                                                           _%target4651946680%_
                                                           _%tl4652146683%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4634046549%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                  (if (gx#stx-pair? _%hd4635447389%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4635447389%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4635247382%_)
                                              (let ((_%__splice7725177252%_
                                                     (gx#syntax-split-splice
                                                      _%tl4635247382%_
                                                      '0)))
                                                (let ((_%tl4652146683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '1)))
                                                      (_%target4651946680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7725177252%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652146683%_)
                                                      (_%__match7753777538%_
                                                       _%e4634747365%_
                                                       _%hd4634847369%_
                                                       _%tl4634947372%_
                                                       _%e4635047375%_
                                                       _%hd4635147379%_
                                                       _%tl4635247382%_
                                                       _%e4635347385%_
                                                       _%hd4635447389%_
                                                       _%tl4635547392%_
                                                       _%e4651646670%_
                                                       _%hd4651746674%_
                                                       _%tl4651846677%_
                                                       _%__splice7725177252%_
                                                       _%target4651946680%_
                                                       _%tl4652146683%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4634046549%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))))
                  (if (gx#stx-null? _%tl4636147412%_)
                      (if (gx#stx-pair/null? _%tl4635247382%_)
                          (let ((_%__splice7723977240%_
                                 (gx#syntax-split-splice _%tl4635247382%_ '0)))
                            (let ((_%tl4643447089%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7723977240%_ '1)))
                                  (_%target4643247086%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7723977240%_
                                      '0))))
                              (if (gx#stx-null? _%tl4643447089%_)
                                  (_%__match7740577406%_
                                   _%e4634747365%_
                                   _%hd4634847369%_
                                   _%tl4634947372%_
                                   _%e4635047375%_
                                   _%hd4635147379%_
                                   _%tl4635247382%_
                                   _%e4635347385%_
                                   _%hd4635447389%_
                                   _%tl4635547392%_
                                   _%e4635647395%_
                                   _%hd4635747399%_
                                   _%tl4635847402%_
                                   _%e4635947405%_
                                   _%hd4636047409%_
                                   _%tl4636147412%_
                                   _%__splice7723977240%_
                                   _%target4643247086%_
                                   _%tl4643447089%_)
                                  (if (gx#stx-pair? _%hd4635447389%_)
                                      (let ((_%e4651646670%_
                                             (gx#syntax-e _%hd4635447389%_)))
                                        (let ((_%tl4651846677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651646670%_)))
                                              (_%hd4651746674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651646670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))
                          (if (gx#stx-pair? _%hd4635447389%_)
                              (let ((_%e4651646670%_
                                     (gx#syntax-e _%hd4635447389%_)))
                                (let ((_%tl4651846677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4651646670%_)))
                                      (_%hd4651746674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4651646670%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_))))
                              (let () (declare (not safe)) (_%g4634046549%_))))
                      (if (gx#stx-pair? _%hd4635447389%_)
                          (let ((_%e4651646670%_
                                 (gx#syntax-e _%hd4635447389%_)))
                            (let ((_%tl4651846677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4651646670%_)))
                                  (_%hd4651746674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4651646670%_))))
                              (if (gx#stx-pair/null? _%tl4635247382%_)
                                  (let ((_%__splice7725177252%_
                                         (gx#syntax-split-splice
                                          _%tl4635247382%_
                                          '0)))
                                    (let ((_%tl4652146683%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '1)))
                                          (_%target4651946680%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7725177252%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4652146683%_)
                                          (_%__match7753777538%_
                                           _%e4634747365%_
                                           _%hd4634847369%_
                                           _%tl4634947372%_
                                           _%e4635047375%_
                                           _%hd4635147379%_
                                           _%tl4635247382%_
                                           _%e4635347385%_
                                           _%hd4635447389%_
                                           _%tl4635547392%_
                                           _%e4651646670%_
                                           _%hd4651746674%_
                                           _%tl4651846677%_
                                           _%__splice7725177252%_
                                           _%target4651946680%_
                                           _%tl4652146683%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4634046549%_)))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4635447389%_)
                                                      (let ((_%e4651646670%_
                                                             (gx#syntax-e
                                                              _%hd4635447389%_)))
                                                        (let ((_%tl4651846677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4651646670%_)))
                      (_%hd4651746674%_
                       (let () (declare (not safe)) (##car _%e4651646670%_))))
                  (if (gx#stx-pair/null? _%tl4635247382%_)
                      (let ((_%__splice7725177252%_
                             (gx#syntax-split-splice _%tl4635247382%_ '0)))
                        (let ((_%tl4652146683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '1)))
                              (_%target4651946680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7725177252%_ '0))))
                          (if (gx#stx-null? _%tl4652146683%_)
                              (_%__match7753777538%_
                               _%e4634747365%_
                               _%hd4634847369%_
                               _%tl4634947372%_
                               _%e4635047375%_
                               _%hd4635147379%_
                               _%tl4635247382%_
                               _%e4635347385%_
                               _%hd4635447389%_
                               _%tl4635547392%_
                               _%e4651646670%_
                               _%hd4651746674%_
                               _%tl4651846677%_
                               _%__splice7725177252%_
                               _%target4651946680%_
                               _%tl4652146683%_)
                              (let ()
                                (declare (not safe))
                                (_%g4634046549%_)))))
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4635447389%_)
                                              (let ((_%e4651646670%_
                                                     (gx#syntax-e
                                                      _%hd4635447389%_)))
                                                (let ((_%tl4651846677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4651646670%_)))
                                                      (_%hd4651746674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4651646670%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4635247382%_)
                                                      (let ((_%__splice7725177252%_
                                                             (gx#syntax-split-splice
                                                              _%tl4635247382%_
                                                              '0)))
                                                        (let ((_%tl4652146683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '1)))
                      (_%target4651946680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7725177252%_ '0))))
                  (if (gx#stx-null? _%tl4652146683%_)
                      (_%__match7753777538%_
                       _%e4634747365%_
                       _%hd4634847369%_
                       _%tl4634947372%_
                       _%e4635047375%_
                       _%hd4635147379%_
                       _%tl4635247382%_
                       _%e4635347385%_
                       _%hd4635447389%_
                       _%tl4635547392%_
                       _%e4651646670%_
                       _%hd4651746674%_
                       _%tl4651846677%_
                       _%__splice7725177252%_
                       _%target4651946680%_
                       _%tl4652146683%_)
                      (let () (declare (not safe)) (_%g4634046549%_)))))
              (let () (declare (not safe)) (_%g4634046549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4634046549%_))))))
                                  (if (gx#stx-null? _%hd4635147379%_)
                                      (if (gx#stx-pair/null? _%tl4635247382%_)
                                          (let ((_%__splice7725577256%_
                                                 (gx#syntax-split-splice
                                                  _%tl4635247382%_
                                                  '0)))
                                            (let ((_%tl4653746579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725577256%_
                                                      '1)))
                                                  (_%target4653546576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7725577256%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4653746579%_)
                                                  (_%__match7755977560%_
                                                   _%e4634747365%_
                                                   _%hd4634847369%_
                                                   _%tl4634947372%_
                                                   _%e4635047375%_
                                                   _%hd4635147379%_
                                                   _%tl4635247382%_
                                                   _%__splice7725577256%_
                                                   _%target4653546576%_
                                                   _%tl4653746579%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4634046549%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4634046549%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4634046549%_))))))
                          (let () (declare (not safe)) (_%g4634046549%_)))))
                  (let () (declare (not safe)) (_%g4634046549%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47523%_)
        (let* ((_%g4752747561%_
                (lambda (_%g4752847557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4752847557%_)))
               (_%g4752647684%_
                (lambda (_%g4752847565%_)
                  (if (gx#stx-pair? _%g4752847565%_)
                      (let ((_%e4753247568%_ (gx#syntax-e _%g4752847565%_)))
                        (let ((_%hd4753347572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4753247568%_)))
                              (_%tl4753447575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4753247568%_))))
                          (if (gx#stx-pair? _%tl4753447575%_)
                              (let ((_%e4753547578%_
                                     (gx#syntax-e _%tl4753447575%_)))
                                (let ((_%hd4753647582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4753547578%_)))
                                      (_%tl4753747585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4753547578%_))))
                                  (if (gx#stx-pair? _%hd4753647582%_)
                                      (let ((_%e4753847588%_
                                             (gx#syntax-e _%hd4753647582%_)))
                                        (let ((_%hd4753947592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4753847588%_)))
                                              (_%tl4754047595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4753847588%_))))
                                          (if (gx#stx-pair? _%tl4754047595%_)
                                              (let ((_%e4754147598%_
                                                     (gx#syntax-e
                                                      _%tl4754047595%_)))
                                                (let ((_%hd4754247602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4754147598%_)))
                                                      (_%tl4754347605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4754147598%_))))
                                                  (if (gx#identifier?
                                                       _%hd4754247602%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82626_|
                                                           _%hd4754247602%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4754347605%_)
                                                              (let ((_%e4754447608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4754347605%_)))
                        (let ((_%hd4754547612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4754447608%_)))
                              (_%tl4754647615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4754447608%_))))
                          (if (gx#stx-null? _%tl4754647615%_)
                              (if (gx#stx-pair/null? _%tl4753747585%_)
                                  (let ((_g82627_
                                         (gx#syntax-split-splice
                                          _%tl4753747585%_
                                          '0)))
                                    (begin
                                      (let ((_g82628_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82627_)
                                                   (##vector-length _g82627_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82628_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82628_)))
                                      (let ((_%target4754747618%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82627_ 0)))
                                            (_%tl4754947621%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82627_ 1))))
                                        (if (gx#stx-null? _%tl4754947621%_)
                                            (letrec ((_%loop4755047624%_
                                                      (lambda (_%hd4754847628%_
                                                               _%body4755447631%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4754847628%_)
                                                            (let ((_%e4755147634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4754847628%_)))
                      (let ((_%lp-hd4755247638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4755147634%_)))
                            (_%lp-tl4755347641%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4755147634%_))))
                        (_%loop4755047624%_
                         _%lp-tl4755347641%_
                         (cons _%lp-hd4755247638%_ _%body4755447631%_))))
                    (let ((_%body4755547644%_ (reverse _%body4755447631%_)))
                      ((lambda (_%L47648%_ _%L47650%_ _%L47651%_)
                         (if (gx#identifier? _%L47651%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47650%_
                                               (cons _%L47651%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4767547678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4767647681%_)
                            (cons _%g4767547678%_ _%g4767647681%_))
                          '()
                          _%L47648%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47650%_ (cons _%L47651%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4752747561%_ _%g4752847565%_)))
                       _%body4755547644%_
                       _%hd4754547612%_
                       _%hd4753947592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4755047624%_
                                               _%target4754747618%_
                                               '()))
                                            (_%g4752747561%_
                                             _%g4752847565%_)))))
                                  (_%g4752747561%_ _%g4752847565%_))
                              (_%g4752747561%_ _%g4752847565%_))))
                      (_%g4752747561%_ _%g4752847565%_))
                  (_%g4752747561%_ _%g4752847565%_))
              (_%g4752747561%_ _%g4752847565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4752747561%_
                                               _%g4752847565%_))))
                                      (_%g4752747561%_ _%g4752847565%_))))
                              (_%g4752747561%_ _%g4752847565%_))))
                      (_%g4752747561%_ _%g4752847565%_)))))
          (_%g4752647684%_ _%$stx47523%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48251%_ _%slot48253%_)
        (let ((_%$e48255%_
               (let ((__obj82464 _%klass48251%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82464
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82464 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82464
                      'slot-types)))))
          (if _%$e48255%_
              ((lambda (_%slot-types48259%_)
                 (agetq _%slot48253%_ _%slot-types48259%_))
               _%$e48255%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48232%_ _%slot48234%_)
        (let ((_%$e48236%_
               (let ((__obj82465 _%klass48232%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82465
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82465 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82465
                      'slot-defaults)))))
          (if _%$e48236%_
              ((lambda (_%slot-defaults48240%_)
                 (let ((_%$e48243%_
                        (agetq _%slot48234%_ _%slot-defaults48240%_)))
                   (if _%$e48243%_
                       (gx#syntax-local-introduce _%$e48243%_)
                       '#f)))
               _%$e48236%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48213%_ _%slot48215%_)
        (let ((_%$e48217%_
               (let ((__obj82466 _%klass48213%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82466
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82466 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82466
                      'slot-defaults)))))
          (if _%$e48217%_
              ((lambda (_%slot-defaults48221%_)
                 (let ((_%$e48224%_
                        (agetq _%slot48215%_ _%slot-defaults48221%_)))
                   (if _%$e48224%_
                       (gx#syntax-local-introduce _%$e48224%_)
                       '#f)))
               _%$e48217%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass47981%_ _%slot47983%_)
        (let ((_%contract4798447986%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47981%_
                _%slot47983%_)))
          (if _%contract4798447986%_
              (let* ((_%contract47990%_ _%contract4798447986%_)
                     (_%__stx7756277563%_ _%contract47990%_)
                     (_%g4799548032%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7756277563%_))))
                (let ((_%__kont7756577566%_
                       (lambda (_%L48182%_ _%L48184%_)
                         (not (gx#free-identifier=?
                               _%L48184%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7756777568%_
                       (lambda (_%L48122%_ _%L48124%_ _%L48125%_)
                         (not (gx#free-identifier=?
                               _%L48124%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7756977570%_ (lambda (_%L48059%_) '#f)))
                  (let* ((_%__match7761577616%_
                          (lambda (_%e4800848082%_
                                   _%hd4800948086%_
                                   _%tl4801048089%_
                                   _%e4801148092%_
                                   _%hd4801248096%_
                                   _%tl4801348099%_
                                   _%e4801448102%_
                                   _%hd4801548106%_
                                   _%tl4801648109%_
                                   _%e4801748112%_
                                   _%hd4801848116%_
                                   _%tl4801948119%_)
                            (let ((_%L48122%_ _%hd4801848116%_)
                                  (_%L48124%_ _%hd4801548106%_)
                                  (_%L48125%_ _%hd4801248096%_))
                              (if (and (gx#identifier? _%L48124%_)
                                       (or (gx#free-identifier=?
                                            _%L48124%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48124%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48124%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48124%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7756777568%_
                                   _%L48122%_
                                   _%L48124%_
                                   _%L48125%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4799548032%_))))))
                         (_%__match7758577586%_
                          (lambda (_%e4799948162%_
                                   _%hd4800048166%_
                                   _%tl4800148169%_
                                   _%e4800248172%_
                                   _%hd4800348176%_
                                   _%tl4800448179%_)
                            (let ((_%L48182%_ _%hd4800348176%_)
                                  (_%L48184%_ _%hd4800048166%_))
                              (if (and (gx#identifier? _%L48184%_)
                                       (or (gx#free-identifier=?
                                            _%L48184%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48184%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48184%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48184%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7756577566%_ _%L48182%_ _%L48184%_)
                                  (if (gx#identifier? _%hd4800048166%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82629_|
                                           _%hd4800048166%_)
                                          (_%__kont7756977570%_
                                           _%hd4800348176%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4799548032%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4799548032%_))))))))
                    (if (gx#stx-pair? _%__stx7756277563%_)
                        (let ((_%e4799948162%_
                               (gx#syntax-e _%__stx7756277563%_)))
                          (let ((_%tl4800148169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4799948162%_)))
                                (_%hd4800048166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4799948162%_))))
                            (if (gx#stx-pair? _%tl4800148169%_)
                                (let ((_%e4800248172%_
                                       (gx#syntax-e _%tl4800148169%_)))
                                  (let ((_%tl4800448179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4800248172%_)))
                                        (_%hd4800348176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4800248172%_))))
                                    (if (gx#stx-null? _%tl4800448179%_)
                                        (_%__match7758577586%_
                                         _%e4799948162%_
                                         _%hd4800048166%_
                                         _%tl4800148169%_
                                         _%e4800248172%_
                                         _%hd4800348176%_
                                         _%tl4800448179%_)
                                        (if (gx#identifier? _%hd4800048166%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82629_|
                                                 _%hd4800048166%_)
                                                (if (gx#stx-pair?
                                                     _%tl4800448179%_)
                                                    (let ((_%e4801448102%_
                                                           (gx#syntax-e
                                                            _%tl4800448179%_)))
                                                      (let ((_%tl4801648109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4801448102%_)))
                    (_%hd4801548106%_
                     (let () (declare (not safe)) (##car _%e4801448102%_))))
                (if (gx#stx-pair? _%tl4801648109%_)
                    (let ((_%e4801748112%_ (gx#syntax-e _%tl4801648109%_)))
                      (let ((_%tl4801948119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4801748112%_)))
                            (_%hd4801848116%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4801748112%_))))
                        (if (gx#stx-null? _%tl4801948119%_)
                            (_%__match7761577616%_
                             _%e4799948162%_
                             _%hd4800048166%_
                             _%tl4800148169%_
                             _%e4800248172%_
                             _%hd4800348176%_
                             _%tl4800448179%_
                             _%e4801448102%_
                             _%hd4801548106%_
                             _%tl4801648109%_
                             _%e4801748112%_
                             _%hd4801848116%_
                             _%tl4801948119%_)
                            (let () (declare (not safe)) (_%g4799548032%_)))))
                    (let () (declare (not safe)) (_%g4799548032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4799548032%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799548032%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4799548032%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4799548032%_)))))
                        (let () (declare (not safe)) (_%g4799548032%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47749%_ _%slot47751%_)
        (let ((_%contract4775247754%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47749%_
                _%slot47751%_)))
          (if _%contract4775247754%_
              (let* ((_%contract47758%_ _%contract4775247754%_)
                     (_%__stx7763677637%_ _%contract47758%_)
                     (_%g4776347800%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7763677637%_))))
                (let ((_%__kont7763977640%_
                       (lambda (_%L47950%_ _%L47952%_)
                         (not (gx#free-identifier=?
                               _%L47952%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7764177642%_
                       (lambda (_%L47890%_ _%L47892%_ _%L47893%_) '#t))
                      (_%__kont7764377644%_ (lambda (_%L47827%_) '#t)))
                  (let* ((_%__match7768977690%_
                          (lambda (_%e4777647850%_
                                   _%hd4777747854%_
                                   _%tl4777847857%_
                                   _%e4777947860%_
                                   _%hd4778047864%_
                                   _%tl4778147867%_
                                   _%e4778247870%_
                                   _%hd4778347874%_
                                   _%tl4778447877%_
                                   _%e4778547880%_
                                   _%hd4778647884%_
                                   _%tl4778747887%_)
                            (let ((_%L47890%_ _%hd4778647884%_)
                                  (_%L47892%_ _%hd4778347874%_)
                                  (_%L47893%_ _%hd4778047864%_))
                              (if (and (gx#identifier? _%L47892%_)
                                       (or (gx#free-identifier=?
                                            _%L47892%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47892%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47892%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47892%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7764177642%_
                                   _%L47890%_
                                   _%L47892%_
                                   _%L47893%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4776347800%_))))))
                         (_%__match7765977660%_
                          (lambda (_%e4776747930%_
                                   _%hd4776847934%_
                                   _%tl4776947937%_
                                   _%e4777047940%_
                                   _%hd4777147944%_
                                   _%tl4777247947%_)
                            (let ((_%L47950%_ _%hd4777147944%_)
                                  (_%L47952%_ _%hd4776847934%_))
                              (if (and (gx#identifier? _%L47952%_)
                                       (or (gx#free-identifier=?
                                            _%L47952%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47952%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47952%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47952%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7763977640%_ _%L47950%_ _%L47952%_)
                                  (if (gx#identifier? _%hd4776847934%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82630_|
                                           _%hd4776847934%_)
                                          (_%__kont7764377644%_
                                           _%hd4777147944%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4776347800%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4776347800%_))))))))
                    (if (gx#stx-pair? _%__stx7763677637%_)
                        (let ((_%e4776747930%_
                               (gx#syntax-e _%__stx7763677637%_)))
                          (let ((_%tl4776947937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4776747930%_)))
                                (_%hd4776847934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4776747930%_))))
                            (if (gx#stx-pair? _%tl4776947937%_)
                                (let ((_%e4777047940%_
                                       (gx#syntax-e _%tl4776947937%_)))
                                  (let ((_%tl4777247947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4777047940%_)))
                                        (_%hd4777147944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4777047940%_))))
                                    (if (gx#stx-null? _%tl4777247947%_)
                                        (_%__match7765977660%_
                                         _%e4776747930%_
                                         _%hd4776847934%_
                                         _%tl4776947937%_
                                         _%e4777047940%_
                                         _%hd4777147944%_
                                         _%tl4777247947%_)
                                        (if (gx#identifier? _%hd4776847934%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82630_|
                                                 _%hd4776847934%_)
                                                (if (gx#stx-pair?
                                                     _%tl4777247947%_)
                                                    (let ((_%e4778247870%_
                                                           (gx#syntax-e
                                                            _%tl4777247947%_)))
                                                      (let ((_%tl4778447877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4778247870%_)))
                    (_%hd4778347874%_
                     (let () (declare (not safe)) (##car _%e4778247870%_))))
                (if (gx#stx-pair? _%tl4778447877%_)
                    (let ((_%e4778547880%_ (gx#syntax-e _%tl4778447877%_)))
                      (let ((_%tl4778747887%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4778547880%_)))
                            (_%hd4778647884%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4778547880%_))))
                        (if (gx#stx-null? _%tl4778747887%_)
                            (_%__match7768977690%_
                             _%e4776747930%_
                             _%hd4776847934%_
                             _%tl4776947937%_
                             _%e4777047940%_
                             _%hd4777147944%_
                             _%tl4777247947%_
                             _%e4778247870%_
                             _%hd4778347874%_
                             _%tl4778447877%_
                             _%e4778547880%_
                             _%hd4778647884%_
                             _%tl4778747887%_)
                            (let () (declare (not safe)) (_%g4776347800%_)))))
                    (let () (declare (not safe)) (_%g4776347800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4776347800%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4776347800%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4776347800%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4776347800%_)))))
                        (let () (declare (not safe)) (_%g4776347800%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47735%_)
        (if (gx#identifier? _%id47735%_)
            (let* ((_%str47738%_ (symbol->string (gx#stx-e _%id47735%_)))
                   (_%index4774047742%_ (string-index _%str47738%_ '#\.)))
              (if _%index4774047742%_
                  (let ((_%index47746%_ _%index4774047742%_))
                    (if (let () (declare (not safe)) (##fx> _%index47746%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47738%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47728%_ _%id47730%_)
        (let ((_%parts47732%_
               (string-split (symbol->string (gx#stx-e _%id47730%_)) '#\.)))
          (if (find string-empty? _%parts47732%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47728%_
               _%id47730%_)
              (cons (gx#stx-identifier _%id47730%_ (car _%parts47732%_))
                    (map string->symbol (cdr _%parts47732%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47709%_ _%klass-or-id47711%_ _%slot47712%_)
        (let* ((_%klass47714%_
                (if (gx#identifier? _%klass-or-id47711%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47709%_
                       _%klass-or-id47711%_))
                    _%klass-or-id47711%_))
               (_%accessors47717%_
                (let ((__obj82467 _%klass47714%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82467
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82467 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj82467
                       'unchecked-accessors))))
               (_%$e47722%_ (agetq _%slot47712%_ _%accessors47717%_)))
          (if _%$e47722%_
              _%$e47722%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47709%_
               _%klass47714%_
               _%slot47712%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47689%_
               _%klass-or-id47691%_
               _%slot47692%_
               _%checked?47693%_)
        (let* ((_%klass47695%_
                (if (gx#identifier? _%klass-or-id47691%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47689%_
                       _%klass-or-id47691%_))
                    _%klass-or-id47691%_))
               (_%mutators47698%_
                (if _%checked?47693%_
                    (let ((__obj82468 _%klass47695%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82468
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82468 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82468
                           'mutators)))
                    (let ((__obj82469 _%klass47695%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82469
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82469 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82469
                           'unchecked-mutators)))))
               (_%$e47703%_ (agetq _%slot47692%_ _%mutators47698%_)))
          (if _%$e47703%_
              _%$e47703%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47689%_
               _%klass47695%_
               _%slot47692%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48264%_)
        (letrec ((_%expand-body48267%_
                  (lambda (_%klass49175%_
                           _%var49177%_
                           _%Type49178%_
                           _%body49179%_
                           _%checked?49180%_)
                    (let* ((_%g4918249226%_
                            (lambda (_%g4918349222%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4918349222%_)))
                           (_%g4918149383%_
                            (lambda (_%g4918349230%_)
                              (if (gx#stx-pair? _%g4918349230%_)
                                  (let ((_%e4919149233%_
                                         (gx#syntax-e _%g4918349230%_)))
                                    (let ((_%hd4919249237%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4919149233%_)))
                                          (_%tl4919349240%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4919149233%_))))
                                      (if (gx#stx-pair? _%tl4919349240%_)
                                          (let ((_%e4919449243%_
                                                 (gx#syntax-e
                                                  _%tl4919349240%_)))
                                            (let ((_%hd4919549247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4919449243%_)))
                                                  (_%tl4919649250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4919449243%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4919649250%_)
                                                  (let ((_%e4919749253%_
                                                         (gx#syntax-e
                                                          _%tl4919649250%_)))
                                                    (let ((_%hd4919849257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4919749253%_)))
                                                          (_%tl4919949260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4919749253%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4919949260%_)
                                                          (let ((_%e4920049263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4919949260%_)))
                    (let ((_%hd4920149267%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4920049263%_)))
                          (_%tl4920249270%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4920049263%_))))
                      (if (gx#stx-pair? _%tl4920249270%_)
                          (let ((_%e4920349273%_
                                 (gx#syntax-e _%tl4920249270%_)))
                            (let ((_%hd4920449277%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4920349273%_)))
                                  (_%tl4920549280%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4920349273%_))))
                              (if (gx#stx-pair? _%tl4920549280%_)
                                  (let ((_%e4920649283%_
                                         (gx#syntax-e _%tl4920549280%_)))
                                    (let ((_%hd4920749287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4920649283%_)))
                                          (_%tl4920849290%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4920649283%_))))
                                      (if (gx#stx-pair? _%tl4920849290%_)
                                          (let ((_%e4920949293%_
                                                 (gx#syntax-e
                                                  _%tl4920849290%_)))
                                            (let ((_%hd4921049297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4920949293%_)))
                                                  (_%tl4921149300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4920949293%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4921049297%_)
                                                  (let ((_g82631_
                                                         (gx#syntax-split-splice
                                                          _%hd4921049297%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82631_)
                           (##vector-length _g82631_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82632_ 2)))
                    (error "Context expects 2 values" _g82632_)))
              (let ((_%target4921249303%_
                     (let () (declare (not safe)) (##vector-ref _g82631_ 0)))
                    (_%tl4921449306%_
                     (let () (declare (not safe)) (##vector-ref _g82631_ 1))))
                (if (gx#stx-null? _%tl4921449306%_)
                    (letrec ((_%loop4921549309%_
                              (lambda (_%hd4921349313%_ _%body4921949316%_)
                                (if (gx#stx-pair? _%hd4921349313%_)
                                    (let ((_%e4921649319%_
                                           (gx#syntax-e _%hd4921349313%_)))
                                      (let ((_%lp-hd4921749323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4921649319%_)))
                                            (_%lp-tl4921849326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4921649319%_))))
                                        (_%loop4921549309%_
                                         _%lp-tl4921849326%_
                                         (cons _%lp-hd4921749323%_
                                               _%body4921949316%_))))
                                    (let ((_%body4922049329%_
                                           (reverse _%body4921949316%_)))
                                      (if (gx#stx-null? _%tl4921149300%_)
                                          ((lambda (_%L49333%_
                                                    _%L49335%_
                                                    _%L49336%_
                                                    _%L49337%_
                                                    _%L49338%_
                                                    _%L49339%_
                                                    _%L49340%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49338%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49339%_ '()))
                                         (cons _%L49338%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49340%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49338%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49337%_ '()))
                               (cons _%L49336%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49335%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4937449377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4937549380%_)
                      (cons _%g4937449377%_ _%g4937549380%_))
                    '()
                    _%L49333%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4922049329%_
                                           _%hd4920749287%_
                                           _%hd4920449277%_
                                           _%hd4920149267%_
                                           _%hd4919849257%_
                                           _%hd4919549247%_
                                           _%hd4919249237%_)
                                          (_%g4918249226%_
                                           _%g4918349230%_)))))))
                      (_%loop4921549309%_ _%target4921249303%_ '()))
                    (_%g4918249226%_ _%g4918349230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4918249226%_
                                                   _%g4918349230%_))))
                                          (_%g4918249226%_ _%g4918349230%_))))
                                  (_%g4918249226%_ _%g4918349230%_))))
                          (_%g4918249226%_ _%g4918349230%_))))
                  (_%g4918249226%_ _%g4918349230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4918249226%_
                                                   _%g4918349230%_))))
                                          (_%g4918249226%_ _%g4918349230%_))))
                                  (_%g4918249226%_ _%g4918349230%_)))))
                      (_%g4918149383%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj82470 _%klass49175%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82470
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82470
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj82470
                                    'type-descriptor)))
                             _%var49177%_
                             _%klass49175%_
                             _%checked?49180%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49179%_)))))
                 (_%expand48269%_
                  (lambda (_%var49067%_
                           _%Type49069%_
                           _%body49070%_
                           _%checked?49071%_
                           _%checked-mutators?49072%_
                           _%maybe?49073%_)
                    (let* ((_%klass49075%_
                            (gx#syntax-local-value _%Type49069%_ false))
                           (_%expr-body49082%_
                            (_%expand-body48267%_
                             _%klass49075%_
                             _%var49067%_
                             _%Type49069%_
                             _%body49070%_
                             (let ((_%$e49078%_ _%checked?49071%_))
                               (if _%$e49078%_
                                   _%$e49078%_
                                   _%checked-mutators?49072%_)))))
                      (if _%checked?49071%_
                          (let* ((_%g4908749106%_
                                  (lambda (_%g4908849102%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4908849102%_)))
                                 (_%g4908649168%_
                                  (lambda (_%g4908849110%_)
                                    (if (gx#stx-pair? _%g4908849110%_)
                                        (let ((_%e4909249113%_
                                               (gx#syntax-e _%g4908849110%_)))
                                          (let ((_%hd4909349117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4909249113%_)))
                                                (_%tl4909449120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4909249113%_))))
                                            (if (gx#stx-pair? _%tl4909449120%_)
                                                (let ((_%e4909549123%_
                                                       (gx#syntax-e
                                                        _%tl4909449120%_)))
                                                  (let ((_%hd4909649127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4909549123%_)))
                                                        (_%tl4909749130%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4909549123%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4909749130%_)
                                                        (let ((_%e4909849133%_
                                                               (gx#syntax-e
                                                                _%tl4909749130%_)))
                                                          (let ((_%hd4909949137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4909849133%_)))
                        (_%tl4910049140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4909849133%_))))
                    (if (gx#stx-null? _%tl4910049140%_)
                        ((lambda (_%L49143%_ _%L49145%_ _%L49146%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49145%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49146%_ '())))
                                       (cons _%L49143%_ '()))))
                         _%hd4909949137%_
                         _%hd4909649127%_
                         _%hd4909349117%_)
                        (_%g4908749106%_ _%g4908849110%_))))
                (_%g4908749106%_ _%g4908849110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4908749106%_
                                                 _%g4908849110%_))))
                                        (_%g4908749106%_ _%g4908849110%_)))))
                            (_%g4908649168%_
                             (list (let ((_%instance?49172%_
                                          (let ((__obj82471 _%klass49075%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj82471
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj82471
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj82471
                                                 'predicate)))))
                                     (if _%maybe?49073%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49172%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49172%_))
                                   _%var49067%_
                                   _%expr-body49082%_)))
                          _%expr-body49082%_)))))
          (let* ((_%__stx7771077711%_ _%stx48264%_)
                 (_%g4827548418%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7771077711%_))))
            (let ((_%__kont7771377714%_
                   (lambda (_%L48995%_ _%L48997%_ _%L48998%_ _%L48999%_)
                     (let* ((_%g4902449032%_
                             (lambda (_%g4902549028%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4902549028%_)))
                            (_%g4902349059%_
                             (lambda (_%g4902549036%_)
                               ((lambda (_%L49039%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L48999%_
                                                    (cons _%L48998%_
                                                          (cons _%L49039%_
                                                                '())))
                                              (foldr (lambda (_%g4905049053%_
                                                              _%g4905149056%_)
                                                       (cons _%g4905049053%_
                                                             _%g4905149056%_))
                                                     '()
                                                     _%L48995%_))))
                                _%g4902549036%_))))
                       (_%g4902349059%_
                        (let ((__obj82472 (gx#syntax-local-value _%L48997%_)))
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
                  (_%__kont7771777718%_
                   (lambda (_%L48873%_ _%L48875%_ _%L48876%_)
                     (_%expand48269%_
                      _%L48876%_
                      _%L48875%_
                      (foldr (lambda (_%g4889948902%_ _%g4890048905%_)
                               (cons _%g4889948902%_ _%g4890048905%_))
                             '()
                             _%L48873%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7772177722%_
                   (lambda (_%L48751%_ _%L48753%_ _%L48754%_)
                     (_%expand48269%_
                      _%L48754%_
                      _%L48753%_
                      (foldr (lambda (_%g4877748780%_ _%g4877848783%_)
                               (cons _%g4877748780%_ _%g4877848783%_))
                             '()
                             _%L48751%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7772577726%_
                   (lambda (_%L48629%_ _%L48631%_ _%L48632%_)
                     (_%expand48269%_
                      _%L48632%_
                      _%L48631%_
                      (foldr (lambda (_%g4865548658%_ _%g4865648661%_)
                               (cons _%g4865548658%_ _%g4865648661%_))
                             '()
                             _%L48629%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7772977730%_
                   (lambda (_%L48505%_ _%L48507%_ _%L48508%_)
                     (_%expand48269%_
                      _%L48508%_
                      _%L48507%_
                      (foldr (lambda (_%g4853348536%_ _%g4853448539%_)
                               (cons _%g4853348536%_ _%g4853448539%_))
                             '()
                             _%L48505%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7794977950%_
                      (lambda (_%e4838948425%_
                               _%hd4839048429%_
                               _%tl4839148432%_
                               _%e4839248435%_
                               _%hd4839348439%_
                               _%tl4839448442%_
                               _%e4839548445%_
                               _%hd4839648449%_
                               _%tl4839748452%_
                               _%e4839848455%_
                               _%hd4839948459%_
                               _%tl4840048462%_
                               _%e4840148465%_
                               _%hd4840248469%_
                               _%tl4840348472%_
                               _%__splice7773177732%_
                               _%target4840448475%_
                               _%tl4840648478%_)
                        (letrec ((_%loop4840748481%_
                                  (lambda (_%hd4840548485%_ _%body4841148488%_)
                                    (if (gx#stx-pair? _%hd4840548485%_)
                                        (let ((_%e4840848491%_
                                               (gx#syntax-e _%hd4840548485%_)))
                                          (let ((_%lp-tl4841048498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840848491%_)))
                                                (_%lp-hd4840948495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840848491%_))))
                                            (_%loop4840748481%_
                                             _%lp-tl4841048498%_
                                             (cons _%lp-hd4840948495%_
                                                   _%body4841148488%_))))
                                        (let ((_%body4841248501%_
                                               (reverse _%body4841148488%_)))
                                          (let ((_%L48505%_ _%body4841248501%_)
                                                (_%L48507%_ _%hd4840248469%_)
                                                (_%L48508%_ _%hd4839648449%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48507%_))
                                                (_%__kont7772977730%_
                                                 _%L48505%_
                                                 _%L48507%_
                                                 _%L48508%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))))))))
                          (_%loop4840748481%_ _%target4840448475%_ '()))))
                     (_%__match7790577906%_
                      (lambda (_%e4836248549%_
                               _%hd4836348553%_
                               _%tl4836448556%_
                               _%e4836548559%_
                               _%hd4836648563%_
                               _%tl4836748566%_
                               _%e4836848569%_
                               _%hd4836948573%_
                               _%tl4837048576%_
                               _%e4837148579%_
                               _%hd4837248583%_
                               _%tl4837348586%_
                               _%e4837448589%_
                               _%hd4837548593%_
                               _%tl4837648596%_
                               _%__splice7772777728%_
                               _%target4837748599%_
                               _%tl4837948602%_)
                        (letrec ((_%loop4838048605%_
                                  (lambda (_%hd4837848609%_ _%body4838448612%_)
                                    (if (gx#stx-pair? _%hd4837848609%_)
                                        (let ((_%e4838148615%_
                                               (gx#syntax-e _%hd4837848609%_)))
                                          (let ((_%lp-tl4838348622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838148615%_)))
                                                (_%lp-hd4838248619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838148615%_))))
                                            (_%loop4838048605%_
                                             _%lp-tl4838348622%_
                                             (cons _%lp-hd4838248619%_
                                                   _%body4838448612%_))))
                                        (let ((_%body4838548625%_
                                               (reverse _%body4838448612%_)))
                                          (let ((_%L48629%_ _%body4838548625%_)
                                                (_%L48631%_ _%hd4837548593%_)
                                                (_%L48632%_ _%hd4836948573%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48631%_))
                                                (_%__kont7772577726%_
                                                 _%L48629%_
                                                 _%L48631%_
                                                 _%L48632%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))))))))
                          (_%loop4838048605%_ _%target4837748599%_ '()))))
                     (_%__match7786177862%_
                      (lambda (_%e4833548671%_
                               _%hd4833648675%_
                               _%tl4833748678%_
                               _%e4833848681%_
                               _%hd4833948685%_
                               _%tl4834048688%_
                               _%e4834148691%_
                               _%hd4834248695%_
                               _%tl4834348698%_
                               _%e4834448701%_
                               _%hd4834548705%_
                               _%tl4834648708%_
                               _%e4834748711%_
                               _%hd4834848715%_
                               _%tl4834948718%_
                               _%__splice7772377724%_
                               _%target4835048721%_
                               _%tl4835248724%_)
                        (letrec ((_%loop4835348727%_
                                  (lambda (_%hd4835148731%_ _%body4835748734%_)
                                    (if (gx#stx-pair? _%hd4835148731%_)
                                        (let ((_%e4835448737%_
                                               (gx#syntax-e _%hd4835148731%_)))
                                          (let ((_%lp-tl4835648744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4835448737%_)))
                                                (_%lp-hd4835548741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4835448737%_))))
                                            (_%loop4835348727%_
                                             _%lp-tl4835648744%_
                                             (cons _%lp-hd4835548741%_
                                                   _%body4835748734%_))))
                                        (let ((_%body4835848747%_
                                               (reverse _%body4835748734%_)))
                                          (let ((_%L48751%_ _%body4835848747%_)
                                                (_%L48753%_ _%hd4834848715%_)
                                                (_%L48754%_ _%hd4834248695%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48753%_))
                                                (_%__kont7772177722%_
                                                 _%L48751%_
                                                 _%L48753%_
                                                 _%L48754%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))))))))
                          (_%loop4835348727%_ _%target4835048721%_ '()))))
                     (_%__match7781777818%_
                      (lambda (_%e4830848793%_
                               _%hd4830948797%_
                               _%tl4831048800%_
                               _%e4831148803%_
                               _%hd4831248807%_
                               _%tl4831348810%_
                               _%e4831448813%_
                               _%hd4831548817%_
                               _%tl4831648820%_
                               _%e4831748823%_
                               _%hd4831848827%_
                               _%tl4831948830%_
                               _%e4832048833%_
                               _%hd4832148837%_
                               _%tl4832248840%_
                               _%__splice7771977720%_
                               _%target4832348843%_
                               _%tl4832548846%_)
                        (letrec ((_%loop4832648849%_
                                  (lambda (_%hd4832448853%_ _%body4833048856%_)
                                    (if (gx#stx-pair? _%hd4832448853%_)
                                        (let ((_%e4832748859%_
                                               (gx#syntax-e _%hd4832448853%_)))
                                          (let ((_%lp-tl4832948866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4832748859%_)))
                                                (_%lp-hd4832848863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4832748859%_))))
                                            (_%loop4832648849%_
                                             _%lp-tl4832948866%_
                                             (cons _%lp-hd4832848863%_
                                                   _%body4833048856%_))))
                                        (let ((_%body4833148869%_
                                               (reverse _%body4833048856%_)))
                                          (let ((_%L48873%_ _%body4833148869%_)
                                                (_%L48875%_ _%hd4832148837%_)
                                                (_%L48876%_ _%hd4831548817%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48875%_))
                                                (_%__kont7771777718%_
                                                 _%L48873%_
                                                 _%L48875%_
                                                 _%L48876%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))))))))
                          (_%loop4832648849%_ _%target4832348843%_ '()))))
                     (_%__match7779777798%_
                      (lambda (_%e4830848793%_
                               _%hd4830948797%_
                               _%tl4831048800%_
                               _%e4831148803%_
                               _%hd4831248807%_
                               _%tl4831348810%_
                               _%e4831448813%_
                               _%hd4831548817%_
                               _%tl4831648820%_
                               _%e4831748823%_
                               _%hd4831848827%_
                               _%tl4831948830%_)
                        (if (gx#identifier? _%hd4831848827%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82633_|
                                 _%hd4831848827%_)
                                (if (gx#stx-pair? _%tl4831948830%_)
                                    (let ((_%e4832048833%_
                                           (gx#syntax-e _%tl4831948830%_)))
                                      (let ((_%tl4832248840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4832048833%_)))
                                            (_%hd4832148837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4832048833%_))))
                                        (if (gx#stx-null? _%tl4832248840%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4831348810%_)
                                                (let ((_%__splice7771977720%_
                                                       (gx#syntax-split-splice
                                                        _%tl4831348810%_
                                                        '0)))
                                                  (let ((_%tl4832548846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7771977720%_
                                                            '1)))
                                                        (_%target4832348843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7771977720%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4832548846%_)
                                                        (_%__match7781777818%_
                                                         _%e4830848793%_
                                                         _%hd4830948797%_
                                                         _%tl4831048800%_
                                                         _%e4831148803%_
                                                         _%hd4831248807%_
                                                         _%tl4831348810%_
                                                         _%e4831448813%_
                                                         _%hd4831548817%_
                                                         _%tl4831648820%_
                                                         _%e4831748823%_
                                                         _%hd4831848827%_
                                                         _%tl4831948830%_
                                                         _%e4832048833%_
                                                         _%hd4832148837%_
                                                         _%tl4832248840%_
                                                         _%__splice7771977720%_
                                                         _%target4832348843%_
                                                         _%tl4832548846%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4827548418%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827548418%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4827548418%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82634_|
                                     _%hd4831848827%_)
                                    (if (gx#stx-pair? _%tl4831948830%_)
                                        (let ((_%e4834748711%_
                                               (gx#syntax-e _%tl4831948830%_)))
                                          (let ((_%tl4834948718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4834748711%_)))
                                                (_%hd4834848715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4834748711%_))))
                                            (if (gx#stx-null? _%tl4834948718%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4831348810%_)
                                                    (let ((_%__splice7772377724%_
                                                           (gx#syntax-split-splice
                                                            _%tl4831348810%_
                                                            '0)))
                                                      (let ((_%tl4835248724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7772377724%_ '1)))
                    (_%target4835048721%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7772377724%_ '0))))
                (if (gx#stx-null? _%tl4835248724%_)
                    (_%__match7786177862%_
                     _%e4830848793%_
                     _%hd4830948797%_
                     _%tl4831048800%_
                     _%e4831148803%_
                     _%hd4831248807%_
                     _%tl4831348810%_
                     _%e4831448813%_
                     _%hd4831548817%_
                     _%tl4831648820%_
                     _%e4831748823%_
                     _%hd4831848827%_
                     _%tl4831948830%_
                     _%e4834748711%_
                     _%hd4834848715%_
                     _%tl4834948718%_
                     _%__splice7772377724%_
                     _%target4835048721%_
                     _%tl4835248724%_)
                    (let () (declare (not safe)) (_%g4827548418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827548418%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4827548418%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82635_|
                                         _%hd4831848827%_)
                                        (if (gx#stx-pair? _%tl4831948830%_)
                                            (let ((_%e4837448589%_
                                                   (gx#syntax-e
                                                    _%tl4831948830%_)))
                                              (let ((_%tl4837648596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4837448589%_)))
                                                    (_%hd4837548593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4837448589%_))))
                                                (if (gx#stx-null?
                                                     _%tl4837648596%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4831348810%_)
                                                        (let ((_%__splice7772777728%_
                                                               (gx#syntax-split-splice
                                                                _%tl4831348810%_
                                                                '0)))
                                                          (let ((_%tl4837948602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7772777728%_ '1)))
                        (_%target4837748599%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7772777728%_ '0))))
                    (if (gx#stx-null? _%tl4837948602%_)
                        (_%__match7790577906%_
                         _%e4830848793%_
                         _%hd4830948797%_
                         _%tl4831048800%_
                         _%e4831148803%_
                         _%hd4831248807%_
                         _%tl4831348810%_
                         _%e4831448813%_
                         _%hd4831548817%_
                         _%tl4831648820%_
                         _%e4831748823%_
                         _%hd4831848827%_
                         _%tl4831948830%_
                         _%e4837448589%_
                         _%hd4837548593%_
                         _%tl4837648596%_
                         _%__splice7772777728%_
                         _%target4837748599%_
                         _%tl4837948602%_)
                        (let () (declare (not safe)) (_%g4827548418%_)))))
                (let () (declare (not safe)) (_%g4827548418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827548418%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827548418%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82636_|
                                             _%hd4831848827%_)
                                            (if (gx#stx-pair? _%tl4831948830%_)
                                                (let ((_%e4840148465%_
                                                       (gx#syntax-e
                                                        _%tl4831948830%_)))
                                                  (let ((_%tl4840348472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4840148465%_)))
                                                        (_%hd4840248469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4840148465%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4840348472%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4831348810%_)
                                                            (let ((_%__splice7773177732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4831348810%_ '0)))
                      (let ((_%tl4840648478%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7773177732%_ '1)))
                            (_%target4840448475%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7773177732%_ '0))))
                        (if (gx#stx-null? _%tl4840648478%_)
                            (_%__match7794977950%_
                             _%e4830848793%_
                             _%hd4830948797%_
                             _%tl4831048800%_
                             _%e4831148803%_
                             _%hd4831248807%_
                             _%tl4831348810%_
                             _%e4831448813%_
                             _%hd4831548817%_
                             _%tl4831648820%_
                             _%e4831748823%_
                             _%hd4831848827%_
                             _%tl4831948830%_
                             _%e4840148465%_
                             _%hd4840248469%_
                             _%tl4840348472%_
                             _%__splice7773177732%_
                             _%target4840448475%_
                             _%tl4840648478%_)
                            (let () (declare (not safe)) (_%g4827548418%_)))))
                    (let () (declare (not safe)) (_%g4827548418%_)))
                (let () (declare (not safe)) (_%g4827548418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4827548418%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827548418%_))))))
                            (let () (declare (not safe)) (_%g4827548418%_)))))
                     (_%__match7777377774%_
                      (lambda (_%e4828148915%_
                               _%hd4828248919%_
                               _%tl4828348922%_
                               _%e4828448925%_
                               _%hd4828548929%_
                               _%tl4828648932%_
                               _%e4828748935%_
                               _%hd4828848939%_
                               _%tl4828948942%_
                               _%e4829048945%_
                               _%hd4829148949%_
                               _%tl4829248952%_
                               _%e4829348955%_
                               _%hd4829448959%_
                               _%tl4829548962%_
                               _%__splice7771577716%_
                               _%target4829648965%_
                               _%tl4829848968%_)
                        (letrec ((_%loop4829948971%_
                                  (lambda (_%hd4829748975%_ _%body4830348978%_)
                                    (if (gx#stx-pair? _%hd4829748975%_)
                                        (let ((_%e4830048981%_
                                               (gx#syntax-e _%hd4829748975%_)))
                                          (let ((_%lp-tl4830248988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4830048981%_)))
                                                (_%lp-hd4830148985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4830048981%_))))
                                            (_%loop4829948971%_
                                             _%lp-tl4830248988%_
                                             (cons _%lp-hd4830148985%_
                                                   _%body4830348978%_))))
                                        (let ((_%body4830448991%_
                                               (reverse _%body4830348978%_)))
                                          (let ((_%L48995%_ _%body4830448991%_)
                                                (_%L48997%_ _%hd4829448959%_)
                                                (_%L48998%_ _%hd4829148949%_)
                                                (_%L48999%_ _%hd4828848939%_))
                                            (if (let ((__tmp82637
                                                       (gx#syntax-local-value
                                                        _%L48997%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82637))
                                                (_%__kont7771377714%_
                                                 _%L48995%_
                                                 _%L48997%_
                                                 _%L48998%_
                                                 _%L48999%_)
                                                (_%__match7779777798%_
                                                 _%e4828148915%_
                                                 _%hd4828248919%_
                                                 _%tl4828348922%_
                                                 _%e4828448925%_
                                                 _%hd4828548929%_
                                                 _%tl4828648932%_
                                                 _%e4828748935%_
                                                 _%hd4828848939%_
                                                 _%tl4828948942%_
                                                 _%e4829048945%_
                                                 _%hd4829148949%_
                                                 _%tl4829248952%_))))))))
                          (_%loop4829948971%_ _%target4829648965%_ '())))))
                (if (gx#stx-pair? _%__stx7771077711%_)
                    (let ((_%e4828148915%_ (gx#syntax-e _%__stx7771077711%_)))
                      (let ((_%tl4828348922%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4828148915%_)))
                            (_%hd4828248919%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4828148915%_))))
                        (if (gx#stx-pair? _%tl4828348922%_)
                            (let ((_%e4828448925%_
                                   (gx#syntax-e _%tl4828348922%_)))
                              (let ((_%tl4828648932%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4828448925%_)))
                                    (_%hd4828548929%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4828448925%_))))
                                (if (gx#stx-pair? _%hd4828548929%_)
                                    (let ((_%e4828748935%_
                                           (gx#syntax-e _%hd4828548929%_)))
                                      (let ((_%tl4828948942%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4828748935%_)))
                                            (_%hd4828848939%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4828748935%_))))
                                        (if (gx#stx-pair? _%tl4828948942%_)
                                            (let ((_%e4829048945%_
                                                   (gx#syntax-e
                                                    _%tl4828948942%_)))
                                              (let ((_%tl4829248952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4829048945%_)))
                                                    (_%hd4829148949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4829048945%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4829248952%_)
                                                    (let ((_%e4829348955%_
                                                           (gx#syntax-e
                                                            _%tl4829248952%_)))
                                                      (let ((_%tl4829548962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4829348955%_)))
                    (_%hd4829448959%_
                     (let () (declare (not safe)) (##car _%e4829348955%_))))
                (if (gx#stx-null? _%tl4829548962%_)
                    (if (gx#stx-pair/null? _%tl4828648932%_)
                        (let ((_%__splice7771577716%_
                               (gx#syntax-split-splice _%tl4828648932%_ '0)))
                          (let ((_%tl4829848968%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7771577716%_ '1)))
                                (_%target4829648965%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7771577716%_ '0))))
                            (if (gx#stx-null? _%tl4829848968%_)
                                (_%__match7777377774%_
                                 _%e4828148915%_
                                 _%hd4828248919%_
                                 _%tl4828348922%_
                                 _%e4828448925%_
                                 _%hd4828548929%_
                                 _%tl4828648932%_
                                 _%e4828748935%_
                                 _%hd4828848939%_
                                 _%tl4828948942%_
                                 _%e4829048945%_
                                 _%hd4829148949%_
                                 _%tl4829248952%_
                                 _%e4829348955%_
                                 _%hd4829448959%_
                                 _%tl4829548962%_
                                 _%__splice7771577716%_
                                 _%target4829648965%_
                                 _%tl4829848968%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4827548418%_)))))
                        (let () (declare (not safe)) (_%g4827548418%_)))
                    (let () (declare (not safe)) (_%g4827548418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4827548418%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4827548418%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4827548418%_)))))
                            (let () (declare (not safe)) (_%g4827548418%_)))))
                    (let () (declare (not safe)) (_%g4827548418%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49393%_)
        (letrec ((_%expand-body49396%_
                  (lambda (_%var50397%_
                           _%Interface50399%_
                           _%body50400%_
                           _%checked?50401%_)
                    (let* ((_%type50403%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49393%_
                               _%Interface50399%_)))
                           (_%g5040650450%_
                            (lambda (_%g5040750446%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5040750446%_)))
                           (_%g5040550608%_
                            (lambda (_%g5040750454%_)
                              (if (gx#stx-pair? _%g5040750454%_)
                                  (let ((_%e5041550457%_
                                         (gx#syntax-e _%g5040750454%_)))
                                    (let ((_%hd5041650461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5041550457%_)))
                                          (_%tl5041750464%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5041550457%_))))
                                      (if (gx#stx-pair? _%tl5041750464%_)
                                          (let ((_%e5041850467%_
                                                 (gx#syntax-e
                                                  _%tl5041750464%_)))
                                            (let ((_%hd5041950471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5041850467%_)))
                                                  (_%tl5042050474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5041850467%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5042050474%_)
                                                  (let ((_%e5042150477%_
                                                         (gx#syntax-e
                                                          _%tl5042050474%_)))
                                                    (let ((_%hd5042250481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5042150477%_)))
                                                          (_%tl5042350484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5042150477%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5042350484%_)
                                                          (let ((_%e5042450487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5042350484%_)))
                    (let ((_%hd5042550491%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5042450487%_)))
                          (_%tl5042650494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5042450487%_))))
                      (if (gx#stx-pair? _%tl5042650494%_)
                          (let ((_%e5042750497%_
                                 (gx#syntax-e _%tl5042650494%_)))
                            (let ((_%hd5042850501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5042750497%_)))
                                  (_%tl5042950504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5042750497%_))))
                              (if (gx#stx-pair? _%tl5042950504%_)
                                  (let ((_%e5043050507%_
                                         (gx#syntax-e _%tl5042950504%_)))
                                    (let ((_%hd5043150511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5043050507%_)))
                                          (_%tl5043250514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5043050507%_))))
                                      (if (gx#stx-pair? _%tl5043250514%_)
                                          (let ((_%e5043350517%_
                                                 (gx#syntax-e
                                                  _%tl5043250514%_)))
                                            (let ((_%hd5043450521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5043350517%_)))
                                                  (_%tl5043550524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5043350517%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5043450521%_)
                                                  (let ((_g82638_
                                                         (gx#syntax-split-splice
                                                          _%hd5043450521%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82638_)
                           (##vector-length _g82638_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82639_ 2)))
                    (error "Context expects 2 values" _g82639_)))
              (let ((_%target5043650527%_
                     (let () (declare (not safe)) (##vector-ref _g82638_ 0)))
                    (_%tl5043850530%_
                     (let () (declare (not safe)) (##vector-ref _g82638_ 1))))
                (if (gx#stx-null? _%tl5043850530%_)
                    (letrec ((_%loop5043950533%_
                              (lambda (_%hd5043750537%_ _%body5044350540%_)
                                (if (gx#stx-pair? _%hd5043750537%_)
                                    (let ((_%e5044050543%_
                                           (gx#syntax-e _%hd5043750537%_)))
                                      (let ((_%lp-hd5044150547%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5044050543%_)))
                                            (_%lp-tl5044250550%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5044050543%_))))
                                        (_%loop5043950533%_
                                         _%lp-tl5044250550%_
                                         (cons _%lp-hd5044150547%_
                                               _%body5044350540%_))))
                                    (let ((_%body5044450553%_
                                           (reverse _%body5044350540%_)))
                                      (if (gx#stx-null? _%tl5043550524%_)
                                          ((lambda (_%L50557%_
                                                    _%L50559%_
                                                    _%L50560%_
                                                    _%L50561%_
                                                    _%L50562%_
                                                    _%L50563%_
                                                    _%L50564%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50561%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50562%_ '()))
                                         (cons _%L50561%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50564%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50561%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50563%_ '()))
                               (cons _%L50560%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50559%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5059950602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5060050605%_)
                      (cons _%g5059950602%_ _%g5060050605%_))
                    '()
                    _%L50557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5044450553%_
                                           _%hd5043150511%_
                                           _%hd5042850501%_
                                           _%hd5042550491%_
                                           _%hd5042250481%_
                                           _%hd5041950471%_
                                           _%hd5041650461%_)
                                          (_%g5040650450%_
                                           _%g5040750454%_)))))))
                      (_%loop5043950533%_ _%target5043650527%_ '()))
                    (_%g5040650450%_ _%g5040750454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5040650450%_
                                                   _%g5040750454%_))))
                                          (_%g5040650450%_ _%g5040750454%_))))
                                  (_%g5040650450%_ _%g5040750454%_))))
                          (_%g5040650450%_ _%g5040750454%_))))
                  (_%g5040650450%_ _%g5040750454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5040650450%_
                                                   _%g5040750454%_))))
                                          (_%g5040650450%_ _%g5040750454%_))))
                                  (_%g5040650450%_ _%g5040750454%_)))))
                      (_%g5040550608%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50403%_
                             (let ((__obj82473 _%type50403%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82473
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82473
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj82473
                                    'instance-type)))
                             _%var50397%_
                             _%checked?50401%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50400%_)))))
                 (_%expand49398%_
                  (lambda (_%var50196%_
                           _%Interface50198%_
                           _%body50199%_
                           _%checked?50200%_
                           _%checked-methods?50201%_
                           _%maybe?50202%_)
                    (let* ((_%g5020450212%_
                            (lambda (_%g5020550208%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5020550208%_)))
                           (_%g5020350389%_
                            (lambda (_%g5020550216%_)
                              ((lambda (_%L50219%_)
                                 (if _%checked?50200%_
                                     (if _%maybe?50202%_
                                         (let* ((_%g5023150246%_
                                                 (lambda (_%g5023250242%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5023250242%_)))
                                                (_%g5023050292%_
                                                 (lambda (_%g5023250250%_)
                                                   (if (gx#stx-pair?
                                                        _%g5023250250%_)
                                                       (let ((_%e5023550253%_
                                                              (gx#syntax-e
                                                               _%g5023250250%_)))
                                                         (let ((_%hd5023650257%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5023550253%_)))
                       (_%tl5023750260%_
                        (let () (declare (not safe)) (##cdr _%e5023550253%_))))
                   (if (gx#stx-pair? _%tl5023750260%_)
                       (let ((_%e5023850263%_ (gx#syntax-e _%tl5023750260%_)))
                         (let ((_%hd5023950267%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5023850263%_)))
                               (_%tl5024050270%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5023850263%_))))
                           (if (gx#stx-null? _%tl5024050270%_)
                               ((lambda (_%L50273%_ _%L50275%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50275%_
                                                    (cons (cons _%L50273%_
                                                                (cons _%L50275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50275%_
                                                                (cons _%L50219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50275%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5023950267%_
                                _%hd5023650257%_)
                               (_%g5023150246%_ _%g5023250250%_))))
                       (_%g5023150246%_ _%g5023250250%_))))
               (_%g5023150246%_ _%g5023250250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5023050292%_
                                            (list _%var50196%_
                                                  _%Interface50198%_)))
                                         (let* ((_%g5029650311%_
                                                 (lambda (_%g5029750307%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5029750307%_)))
                                                (_%g5029550355%_
                                                 (lambda (_%g5029750315%_)
                                                   (if (gx#stx-pair?
                                                        _%g5029750315%_)
                                                       (let ((_%e5030050318%_
                                                              (gx#syntax-e
                                                               _%g5029750315%_)))
                                                         (let ((_%hd5030150322%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5030050318%_)))
                       (_%tl5030250325%_
                        (let () (declare (not safe)) (##cdr _%e5030050318%_))))
                   (if (gx#stx-pair? _%tl5030250325%_)
                       (let ((_%e5030350328%_ (gx#syntax-e _%tl5030250325%_)))
                         (let ((_%hd5030450332%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5030350328%_)))
                               (_%tl5030550335%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5030350328%_))))
                           (if (gx#stx-null? _%tl5030550335%_)
                               ((lambda (_%L50338%_ _%L50340%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50340%_
                                                    (cons (cons _%L50338%_
                                                                (cons _%L50340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50219%_ '()))))
                                _%hd5030450332%_
                                _%hd5030150322%_)
                               (_%g5029650311%_ _%g5029750315%_))))
                       (_%g5029650311%_ _%g5029750315%_))))
               (_%g5029650311%_ _%g5029750315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5029550355%_
                                            (list _%var50196%_
                                                  _%Interface50198%_))))
                                     (if _%maybe?50202%_
                                         (let* ((_%g5035950367%_
                                                 (lambda (_%g5036050363%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5036050363%_)))
                                                (_%g5035850385%_
                                                 (lambda (_%g5036050371%_)
                                                   ((lambda (_%L50374%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50219%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50374%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5036050371%_))))
                                           (_%g5035850385%_ _%var50196%_))
                                         _%L50219%_)))
                               _%g5020550216%_))))
                      (_%g5020350389%_
                       (_%expand-body49396%_
                        _%var50196%_
                        _%Interface50198%_
                        _%body50199%_
                        (let ((_%$e50393%_ _%checked?50200%_))
                          (if _%$e50393%_
                              _%$e50393%_
                              _%checked-methods?50201%_))))))))
          (let* ((_%__stx7795277953%_ _%stx49393%_)
                 (_%g4940449547%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7795277953%_))))
            (let ((_%__kont7795577956%_
                   (lambda (_%L50124%_ _%L50126%_ _%L50127%_ _%L50128%_)
                     (let* ((_%g5015350161%_
                             (lambda (_%g5015450157%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5015450157%_)))
                            (_%g5015250188%_
                             (lambda (_%g5015450165%_)
                               ((lambda (_%L50168%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50128%_
                                                    (cons _%L50127%_
                                                          (cons _%L50168%_
                                                                '())))
                                              (foldr (lambda (_%g5017950182%_
                                                              _%g5018050185%_)
                                                       (cons _%g5017950182%_
                                                             _%g5018050185%_))
                                                     '()
                                                     _%L50124%_))))
                                _%g5015450165%_))))
                       (_%g5015250188%_
                        (let ((__obj82474 (gx#syntax-local-value _%L50126%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj82474
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj82474
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj82474
                               'identifier)))))))
                  (_%__kont7795977960%_
                   (lambda (_%L50002%_ _%L50004%_ _%L50005%_)
                     (_%expand49398%_
                      _%L50005%_
                      _%L50004%_
                      (foldr (lambda (_%g5002850031%_ _%g5002950034%_)
                               (cons _%g5002850031%_ _%g5002950034%_))
                             '()
                             _%L50002%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7796377964%_
                   (lambda (_%L49880%_ _%L49882%_ _%L49883%_)
                     (_%expand49398%_
                      _%L49883%_
                      _%L49882%_
                      (foldr (lambda (_%g4990649909%_ _%g4990749912%_)
                               (cons _%g4990649909%_ _%g4990749912%_))
                             '()
                             _%L49880%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7796777968%_
                   (lambda (_%L49758%_ _%L49760%_ _%L49761%_)
                     (_%expand49398%_
                      _%L49761%_
                      _%L49760%_
                      (foldr (lambda (_%g4978449787%_ _%g4978549790%_)
                               (cons _%g4978449787%_ _%g4978549790%_))
                             '()
                             _%L49758%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7797177972%_
                   (lambda (_%L49634%_ _%L49636%_ _%L49637%_)
                     (_%expand49398%_
                      _%L49637%_
                      _%L49636%_
                      (foldr (lambda (_%g4966249665%_ _%g4966349668%_)
                               (cons _%g4966249665%_ _%g4966349668%_))
                             '()
                             _%L49634%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7819178192%_
                      (lambda (_%e4951849554%_
                               _%hd4951949558%_
                               _%tl4952049561%_
                               _%e4952149564%_
                               _%hd4952249568%_
                               _%tl4952349571%_
                               _%e4952449574%_
                               _%hd4952549578%_
                               _%tl4952649581%_
                               _%e4952749584%_
                               _%hd4952849588%_
                               _%tl4952949591%_
                               _%e4953049594%_
                               _%hd4953149598%_
                               _%tl4953249601%_
                               _%__splice7797377974%_
                               _%target4953349604%_
                               _%tl4953549607%_)
                        (letrec ((_%loop4953649610%_
                                  (lambda (_%hd4953449614%_ _%body4954049617%_)
                                    (if (gx#stx-pair? _%hd4953449614%_)
                                        (let ((_%e4953749620%_
                                               (gx#syntax-e _%hd4953449614%_)))
                                          (let ((_%lp-tl4953949627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953749620%_)))
                                                (_%lp-hd4953849624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953749620%_))))
                                            (_%loop4953649610%_
                                             _%lp-tl4953949627%_
                                             (cons _%lp-hd4953849624%_
                                                   _%body4954049617%_))))
                                        (let ((_%body4954149630%_
                                               (reverse _%body4954049617%_)))
                                          (let ((_%L49634%_ _%body4954149630%_)
                                                (_%L49636%_ _%hd4953149598%_)
                                                (_%L49637%_ _%hd4952549578%_))
                                            (if (and (gx#identifier?
                                                      _%L49637%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49636%_)))
                                                (_%__kont7797177972%_
                                                 _%L49634%_
                                                 _%L49636%_
                                                 _%L49637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))))))))
                          (_%loop4953649610%_ _%target4953349604%_ '()))))
                     (_%__match7814778148%_
                      (lambda (_%e4949149678%_
                               _%hd4949249682%_
                               _%tl4949349685%_
                               _%e4949449688%_
                               _%hd4949549692%_
                               _%tl4949649695%_
                               _%e4949749698%_
                               _%hd4949849702%_
                               _%tl4949949705%_
                               _%e4950049708%_
                               _%hd4950149712%_
                               _%tl4950249715%_
                               _%e4950349718%_
                               _%hd4950449722%_
                               _%tl4950549725%_
                               _%__splice7796977970%_
                               _%target4950649728%_
                               _%tl4950849731%_)
                        (letrec ((_%loop4950949734%_
                                  (lambda (_%hd4950749738%_ _%body4951349741%_)
                                    (if (gx#stx-pair? _%hd4950749738%_)
                                        (let ((_%e4951049744%_
                                               (gx#syntax-e _%hd4950749738%_)))
                                          (let ((_%lp-tl4951249751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951049744%_)))
                                                (_%lp-hd4951149748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951049744%_))))
                                            (_%loop4950949734%_
                                             _%lp-tl4951249751%_
                                             (cons _%lp-hd4951149748%_
                                                   _%body4951349741%_))))
                                        (let ((_%body4951449754%_
                                               (reverse _%body4951349741%_)))
                                          (let ((_%L49758%_ _%body4951449754%_)
                                                (_%L49760%_ _%hd4950449722%_)
                                                (_%L49761%_ _%hd4949849702%_))
                                            (if (and (gx#identifier?
                                                      _%L49761%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49760%_)))
                                                (_%__kont7796777968%_
                                                 _%L49758%_
                                                 _%L49760%_
                                                 _%L49761%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))))))))
                          (_%loop4950949734%_ _%target4950649728%_ '()))))
                     (_%__match7810378104%_
                      (lambda (_%e4946449800%_
                               _%hd4946549804%_
                               _%tl4946649807%_
                               _%e4946749810%_
                               _%hd4946849814%_
                               _%tl4946949817%_
                               _%e4947049820%_
                               _%hd4947149824%_
                               _%tl4947249827%_
                               _%e4947349830%_
                               _%hd4947449834%_
                               _%tl4947549837%_
                               _%e4947649840%_
                               _%hd4947749844%_
                               _%tl4947849847%_
                               _%__splice7796577966%_
                               _%target4947949850%_
                               _%tl4948149853%_)
                        (letrec ((_%loop4948249856%_
                                  (lambda (_%hd4948049860%_ _%body4948649863%_)
                                    (if (gx#stx-pair? _%hd4948049860%_)
                                        (let ((_%e4948349866%_
                                               (gx#syntax-e _%hd4948049860%_)))
                                          (let ((_%lp-tl4948549873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4948349866%_)))
                                                (_%lp-hd4948449870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4948349866%_))))
                                            (_%loop4948249856%_
                                             _%lp-tl4948549873%_
                                             (cons _%lp-hd4948449870%_
                                                   _%body4948649863%_))))
                                        (let ((_%body4948749876%_
                                               (reverse _%body4948649863%_)))
                                          (let ((_%L49880%_ _%body4948749876%_)
                                                (_%L49882%_ _%hd4947749844%_)
                                                (_%L49883%_ _%hd4947149824%_))
                                            (if (and (gx#identifier?
                                                      _%L49883%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49882%_)))
                                                (_%__kont7796377964%_
                                                 _%L49880%_
                                                 _%L49882%_
                                                 _%L49883%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))))))))
                          (_%loop4948249856%_ _%target4947949850%_ '()))))
                     (_%__match7805978060%_
                      (lambda (_%e4943749922%_
                               _%hd4943849926%_
                               _%tl4943949929%_
                               _%e4944049932%_
                               _%hd4944149936%_
                               _%tl4944249939%_
                               _%e4944349942%_
                               _%hd4944449946%_
                               _%tl4944549949%_
                               _%e4944649952%_
                               _%hd4944749956%_
                               _%tl4944849959%_
                               _%e4944949962%_
                               _%hd4945049966%_
                               _%tl4945149969%_
                               _%__splice7796177962%_
                               _%target4945249972%_
                               _%tl4945449975%_)
                        (letrec ((_%loop4945549978%_
                                  (lambda (_%hd4945349982%_ _%body4945949985%_)
                                    (if (gx#stx-pair? _%hd4945349982%_)
                                        (let ((_%e4945649988%_
                                               (gx#syntax-e _%hd4945349982%_)))
                                          (let ((_%lp-tl4945849995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4945649988%_)))
                                                (_%lp-hd4945749992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4945649988%_))))
                                            (_%loop4945549978%_
                                             _%lp-tl4945849995%_
                                             (cons _%lp-hd4945749992%_
                                                   _%body4945949985%_))))
                                        (let ((_%body4946049998%_
                                               (reverse _%body4945949985%_)))
                                          (let ((_%L50002%_ _%body4946049998%_)
                                                (_%L50004%_ _%hd4945049966%_)
                                                (_%L50005%_ _%hd4944449946%_))
                                            (if (and (gx#identifier?
                                                      _%L50005%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50004%_)))
                                                (_%__kont7795977960%_
                                                 _%L50002%_
                                                 _%L50004%_
                                                 _%L50005%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))))))))
                          (_%loop4945549978%_ _%target4945249972%_ '()))))
                     (_%__match7803978040%_
                      (lambda (_%e4943749922%_
                               _%hd4943849926%_
                               _%tl4943949929%_
                               _%e4944049932%_
                               _%hd4944149936%_
                               _%tl4944249939%_
                               _%e4944349942%_
                               _%hd4944449946%_
                               _%tl4944549949%_
                               _%e4944649952%_
                               _%hd4944749956%_
                               _%tl4944849959%_)
                        (if (gx#identifier? _%hd4944749956%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82640_|
                                 _%hd4944749956%_)
                                (if (gx#stx-pair? _%tl4944849959%_)
                                    (let ((_%e4944949962%_
                                           (gx#syntax-e _%tl4944849959%_)))
                                      (let ((_%tl4945149969%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4944949962%_)))
                                            (_%hd4945049966%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4944949962%_))))
                                        (if (gx#stx-null? _%tl4945149969%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4944249939%_)
                                                (let ((_%__splice7796177962%_
                                                       (gx#syntax-split-splice
                                                        _%tl4944249939%_
                                                        '0)))
                                                  (let ((_%tl4945449975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7796177962%_
                                                            '1)))
                                                        (_%target4945249972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7796177962%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4945449975%_)
                                                        (_%__match7805978060%_
                                                         _%e4943749922%_
                                                         _%hd4943849926%_
                                                         _%tl4943949929%_
                                                         _%e4944049932%_
                                                         _%hd4944149936%_
                                                         _%tl4944249939%_
                                                         _%e4944349942%_
                                                         _%hd4944449946%_
                                                         _%tl4944549949%_
                                                         _%e4944649952%_
                                                         _%hd4944749956%_
                                                         _%tl4944849959%_
                                                         _%e4944949962%_
                                                         _%hd4945049966%_
                                                         _%tl4945149969%_
                                                         _%__splice7796177962%_
                                                         _%target4945249972%_
                                                         _%tl4945449975%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4940449547%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940449547%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4940449547%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82641_|
                                     _%hd4944749956%_)
                                    (if (gx#stx-pair? _%tl4944849959%_)
                                        (let ((_%e4947649840%_
                                               (gx#syntax-e _%tl4944849959%_)))
                                          (let ((_%tl4947849847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4947649840%_)))
                                                (_%hd4947749844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4947649840%_))))
                                            (if (gx#stx-null? _%tl4947849847%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4944249939%_)
                                                    (let ((_%__splice7796577966%_
                                                           (gx#syntax-split-splice
                                                            _%tl4944249939%_
                                                            '0)))
                                                      (let ((_%tl4948149853%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7796577966%_ '1)))
                    (_%target4947949850%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7796577966%_ '0))))
                (if (gx#stx-null? _%tl4948149853%_)
                    (_%__match7810378104%_
                     _%e4943749922%_
                     _%hd4943849926%_
                     _%tl4943949929%_
                     _%e4944049932%_
                     _%hd4944149936%_
                     _%tl4944249939%_
                     _%e4944349942%_
                     _%hd4944449946%_
                     _%tl4944549949%_
                     _%e4944649952%_
                     _%hd4944749956%_
                     _%tl4944849959%_
                     _%e4947649840%_
                     _%hd4947749844%_
                     _%tl4947849847%_
                     _%__splice7796577966%_
                     _%target4947949850%_
                     _%tl4948149853%_)
                    (let () (declare (not safe)) (_%g4940449547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940449547%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4940449547%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82642_|
                                         _%hd4944749956%_)
                                        (if (gx#stx-pair? _%tl4944849959%_)
                                            (let ((_%e4950349718%_
                                                   (gx#syntax-e
                                                    _%tl4944849959%_)))
                                              (let ((_%tl4950549725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4950349718%_)))
                                                    (_%hd4950449722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4950349718%_))))
                                                (if (gx#stx-null?
                                                     _%tl4950549725%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4944249939%_)
                                                        (let ((_%__splice7796977970%_
                                                               (gx#syntax-split-splice
                                                                _%tl4944249939%_
                                                                '0)))
                                                          (let ((_%tl4950849731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7796977970%_ '1)))
                        (_%target4950649728%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7796977970%_ '0))))
                    (if (gx#stx-null? _%tl4950849731%_)
                        (_%__match7814778148%_
                         _%e4943749922%_
                         _%hd4943849926%_
                         _%tl4943949929%_
                         _%e4944049932%_
                         _%hd4944149936%_
                         _%tl4944249939%_
                         _%e4944349942%_
                         _%hd4944449946%_
                         _%tl4944549949%_
                         _%e4944649952%_
                         _%hd4944749956%_
                         _%tl4944849959%_
                         _%e4950349718%_
                         _%hd4950449722%_
                         _%tl4950549725%_
                         _%__splice7796977970%_
                         _%target4950649728%_
                         _%tl4950849731%_)
                        (let () (declare (not safe)) (_%g4940449547%_)))))
                (let () (declare (not safe)) (_%g4940449547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940449547%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940449547%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82643_|
                                             _%hd4944749956%_)
                                            (if (gx#stx-pair? _%tl4944849959%_)
                                                (let ((_%e4953049594%_
                                                       (gx#syntax-e
                                                        _%tl4944849959%_)))
                                                  (let ((_%tl4953249601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4953049594%_)))
                                                        (_%hd4953149598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4953049594%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4953249601%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4944249939%_)
                                                            (let ((_%__splice7797377974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4944249939%_ '0)))
                      (let ((_%tl4953549607%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7797377974%_ '1)))
                            (_%target4953349604%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7797377974%_ '0))))
                        (if (gx#stx-null? _%tl4953549607%_)
                            (_%__match7819178192%_
                             _%e4943749922%_
                             _%hd4943849926%_
                             _%tl4943949929%_
                             _%e4944049932%_
                             _%hd4944149936%_
                             _%tl4944249939%_
                             _%e4944349942%_
                             _%hd4944449946%_
                             _%tl4944549949%_
                             _%e4944649952%_
                             _%hd4944749956%_
                             _%tl4944849959%_
                             _%e4953049594%_
                             _%hd4953149598%_
                             _%tl4953249601%_
                             _%__splice7797377974%_
                             _%target4953349604%_
                             _%tl4953549607%_)
                            (let () (declare (not safe)) (_%g4940449547%_)))))
                    (let () (declare (not safe)) (_%g4940449547%_)))
                (let () (declare (not safe)) (_%g4940449547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4940449547%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940449547%_))))))
                            (let () (declare (not safe)) (_%g4940449547%_)))))
                     (_%__match7801578016%_
                      (lambda (_%e4941050044%_
                               _%hd4941150048%_
                               _%tl4941250051%_
                               _%e4941350054%_
                               _%hd4941450058%_
                               _%tl4941550061%_
                               _%e4941650064%_
                               _%hd4941750068%_
                               _%tl4941850071%_
                               _%e4941950074%_
                               _%hd4942050078%_
                               _%tl4942150081%_
                               _%e4942250084%_
                               _%hd4942350088%_
                               _%tl4942450091%_
                               _%__splice7795777958%_
                               _%target4942550094%_
                               _%tl4942750097%_)
                        (letrec ((_%loop4942850100%_
                                  (lambda (_%hd4942650104%_ _%body4943250107%_)
                                    (if (gx#stx-pair? _%hd4942650104%_)
                                        (let ((_%e4942950110%_
                                               (gx#syntax-e _%hd4942650104%_)))
                                          (let ((_%lp-tl4943150117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4942950110%_)))
                                                (_%lp-hd4943050114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4942950110%_))))
                                            (_%loop4942850100%_
                                             _%lp-tl4943150117%_
                                             (cons _%lp-hd4943050114%_
                                                   _%body4943250107%_))))
                                        (let ((_%body4943350120%_
                                               (reverse _%body4943250107%_)))
                                          (let ((_%L50124%_ _%body4943350120%_)
                                                (_%L50126%_ _%hd4942350088%_)
                                                (_%L50127%_ _%hd4942050078%_)
                                                (_%L50128%_ _%hd4941750068%_))
                                            (if (let ((__tmp82644
                                                       (gx#syntax-local-value
                                                        _%L50126%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82644))
                                                (_%__kont7795577956%_
                                                 _%L50124%_
                                                 _%L50126%_
                                                 _%L50127%_
                                                 _%L50128%_)
                                                (_%__match7803978040%_
                                                 _%e4941050044%_
                                                 _%hd4941150048%_
                                                 _%tl4941250051%_
                                                 _%e4941350054%_
                                                 _%hd4941450058%_
                                                 _%tl4941550061%_
                                                 _%e4941650064%_
                                                 _%hd4941750068%_
                                                 _%tl4941850071%_
                                                 _%e4941950074%_
                                                 _%hd4942050078%_
                                                 _%tl4942150081%_))))))))
                          (_%loop4942850100%_ _%target4942550094%_ '())))))
                (if (gx#stx-pair? _%__stx7795277953%_)
                    (let ((_%e4941050044%_ (gx#syntax-e _%__stx7795277953%_)))
                      (let ((_%tl4941250051%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4941050044%_)))
                            (_%hd4941150048%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4941050044%_))))
                        (if (gx#stx-pair? _%tl4941250051%_)
                            (let ((_%e4941350054%_
                                   (gx#syntax-e _%tl4941250051%_)))
                              (let ((_%tl4941550061%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4941350054%_)))
                                    (_%hd4941450058%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4941350054%_))))
                                (if (gx#stx-pair? _%hd4941450058%_)
                                    (let ((_%e4941650064%_
                                           (gx#syntax-e _%hd4941450058%_)))
                                      (let ((_%tl4941850071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4941650064%_)))
                                            (_%hd4941750068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4941650064%_))))
                                        (if (gx#stx-pair? _%tl4941850071%_)
                                            (let ((_%e4941950074%_
                                                   (gx#syntax-e
                                                    _%tl4941850071%_)))
                                              (let ((_%tl4942150081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4941950074%_)))
                                                    (_%hd4942050078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4941950074%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4942150081%_)
                                                    (let ((_%e4942250084%_
                                                           (gx#syntax-e
                                                            _%tl4942150081%_)))
                                                      (let ((_%tl4942450091%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4942250084%_)))
                    (_%hd4942350088%_
                     (let () (declare (not safe)) (##car _%e4942250084%_))))
                (if (gx#stx-null? _%tl4942450091%_)
                    (if (gx#stx-pair/null? _%tl4941550061%_)
                        (let ((_%__splice7795777958%_
                               (gx#syntax-split-splice _%tl4941550061%_ '0)))
                          (let ((_%tl4942750097%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7795777958%_ '1)))
                                (_%target4942550094%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7795777958%_ '0))))
                            (if (gx#stx-null? _%tl4942750097%_)
                                (_%__match7801578016%_
                                 _%e4941050044%_
                                 _%hd4941150048%_
                                 _%tl4941250051%_
                                 _%e4941350054%_
                                 _%hd4941450058%_
                                 _%tl4941550061%_
                                 _%e4941650064%_
                                 _%hd4941750068%_
                                 _%tl4941850071%_
                                 _%e4941950074%_
                                 _%hd4942050078%_
                                 _%tl4942150081%_
                                 _%e4942250084%_
                                 _%hd4942350088%_
                                 _%tl4942450091%_
                                 _%__splice7795777958%_
                                 _%target4942550094%_
                                 _%tl4942750097%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4940449547%_)))))
                        (let () (declare (not safe)) (_%g4940449547%_)))
                    (let () (declare (not safe)) (_%g4940449547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4940449547%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4940449547%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4940449547%_)))))
                            (let () (declare (not safe)) (_%g4940449547%_)))))
                    (let () (declare (not safe)) (_%g4940449547%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50618%_)
        (let* ((_%__stx7819478195%_ _%stx50618%_)
               (_%g5062350683%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7819478195%_))))
          (let ((_%__kont7819778198%_
                 (lambda (_%L51245%_ _%L51247%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51247%_ '()))
                               (foldr (lambda (_%g5126351266%_ _%g5126451269%_)
                                        (cons _%g5126351266%_ _%g5126451269%_))
                                      '()
                                      _%L51245%_)))))
                (_%__kont7820178202%_
                 (lambda (_%L50831%_ _%L50833%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50833%_)
                       (let* ((_%g5085350860%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50618%_
                                _%L50833%_))
                              (_%E5085550866%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5085350860%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5085651164%_
                               (lambda (_%parts50870%_ _%var50872%_)
                                 (let ((_%$e50874%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50872%_))))
                                   (if _%$e50874%_
                                       ((lambda (_%te50878%_)
                                          (let _%loop50881%_ ((_%parts50884%_
                                                               _%parts50870%_)
                                                              (_%type50886%_
                                                               (##direct-structure-ref
                                                                _%te50878%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50887%_
                                                               _%var50872%_)
                                                              (_%checked-method?50888%_
                                                               (##direct-structure-ref
                                                                _%te50878%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50889%_
                                                               '#f))
                                            (let* ((_%parts5089050898%_
                                                    _%parts50884%_)
                                                   (_%else5089250959%_
                                                    (lambda ()
                                                      (let* ((_%g5091050918%_
                                                              (lambda (_%g5091150914%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5091150914%_)))
                     (_%g5090950955%_
                      (lambda (_%g5091150922%_)
                        ((lambda (_%L50925%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50925%_
                                       (foldr (lambda (_%g5094650949%_
                                                       _%g5094750952%_)
                                                (cons _%g5094650949%_
                                                      _%g5094750952%_))
                                              '()
                                              _%L50831%_))))
                         _%g5091150922%_))))
                (_%g5090950955%_ _%object50887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5089451138%_
                                                    (lambda (_%rest50963%_
                                                             _%part50965%_)
                                                      (if (and (not _%nil-check?50889%_)
                                                               (let ((__tmp82645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part50965%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp82645)))
                  (let ((_%str50969%_ (symbol->string _%part50965%_)))
                    (_%loop50881%_
                     (cons (let ((__tmp82646
                                  (substring
                                   _%str50969%_
                                   '1
                                   (string-length _%str50969%_))))
                             (declare (not safe))
                             (##string->symbol __tmp82646))
                           _%rest50963%_)
                     _%type50886%_
                     _%object50887%_
                     _%checked-method?50888%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50886%_))
                      (let* ((_%g5097450989%_
                              (lambda (_%g5097550985%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5097550985%_)))
                             (_%g5097351058%_
                              (lambda (_%g5097550993%_)
                                (if (gx#stx-pair? _%g5097550993%_)
                                    (let ((_%e5097850996%_
                                           (gx#syntax-e _%g5097550993%_)))
                                      (let ((_%hd5097951000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5097850996%_)))
                                            (_%tl5098051003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5097850996%_))))
                                        (if (gx#stx-pair? _%tl5098051003%_)
                                            (let ((_%e5098151006%_
                                                   (gx#syntax-e
                                                    _%tl5098051003%_)))
                                              (let ((_%hd5098251010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5098151006%_)))
                                                    (_%tl5098351013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5098151006%_))))
                                                (if (gx#stx-null?
                                                     _%tl5098351013%_)
                                                    ((lambda (_%L51016%_
                                                              _%L51018%_)
                                                       (if (null? _%rest50963%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51016%_ (cons _%L51018%_ '()))
                               (foldr (lambda (_%g5103751040%_ _%g5103851043%_)
                                        (cons _%g5103751040%_ _%g5103851043%_))
                                      '()
                                      _%L50831%_)))
                   (let ((_%$e51046%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50886%_
                           _%part50965%_)))
                     (if _%$e51046%_
                         ((lambda (_%slot-type51050%_)
                            (let ((_%slot-type51053%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50618%_
                                      _%slot-type51050%_))))
                              (_%loop50881%_
                               _%rest50963%_
                               _%slot-type51053%_
                               (cons _%L51016%_ (cons _%L51018%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50886%_
                                _%part50965%_)
                               '#f)))
                          _%$e51046%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50618%_
                          _%L50833%_
                          _%part50965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5098251010%_
                                                     _%hd5097951000%_)
                                                    (_%g5097450989%_
                                                     _%g5097550993%_))))
                                            (_%g5097450989%_
                                             _%g5097550993%_))))
                                    (_%g5097450989%_ _%g5097550993%_)))))
                        (_%g5097351058%_
                         (list (if _%nil-check?50889%_
                                   (cons 'check-nil!
                                         (cons _%object50887%_ '()))
                                   _%object50887%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50618%_
                                _%type50886%_
                                _%part50965%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50886%_))
                          (if (null? _%rest50963%_)
                              (let* ((_%g5106451079%_
                                      (lambda (_%g5106551075%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5106551075%_)))
                                     (_%g5106351132%_
                                      (lambda (_%g5106551083%_)
                                        (if (gx#stx-pair? _%g5106551083%_)
                                            (let ((_%e5106851086%_
                                                   (gx#syntax-e
                                                    _%g5106551083%_)))
                                              (let ((_%hd5106951090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5106851086%_)))
                                                    (_%tl5107051093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5106851086%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5107051093%_)
                                                    (let ((_%e5107151096%_
                                                           (gx#syntax-e
                                                            _%tl5107051093%_)))
                                                      (let ((_%hd5107251100%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5107151096%_)))
                    (_%tl5107351103%_
                     (let () (declare (not safe)) (##cdr _%e5107151096%_))))
                (if (gx#stx-null? _%tl5107351103%_)
                    ((lambda (_%L51106%_ _%L51108%_)
                       (cons _%L51106%_
                             (cons _%L51108%_
                                   (foldr (lambda (_%g5112351126%_
                                                   _%g5112451129%_)
                                            (cons _%g5112351126%_
                                                  _%g5112451129%_))
                                          '()
                                          _%L50831%_))))
                     _%hd5107251100%_
                     _%hd5106951090%_)
                    (_%g5106451079%_ _%g5106551083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5106451079%_
                                                     _%g5106551083%_))))
                                            (_%g5106451079%_
                                             _%g5106551083%_)))))
                                (_%g5106351132%_
                                 (list (if _%nil-check?50889%_
                                           (cons 'check-nil!
                                                 (cons _%object50887%_ '()))
                                           _%object50887%_)
                                       (gx#stx-identifier
                                        _%L50833%_
                                        (if _%checked-method?50888%_ '"" '"&")
                                        (let ((__obj82475 _%type50886%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj82475
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj82475
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj82475
                                               'name)))
                                        '"-"
                                        _%part50965%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50618%_
                               _%L50833%_
                               _%part50965%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50618%_
                           _%type50886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5089050898%_))
                                                  (let ((_%hd5089551142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5089050898%_)))
                                                        (_%tl5089651145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5089050898%_))))
                                                    (let* ((_%part51148%_
                                                            _%hd5089551142%_)
                                                           (_%rest51151%_
                                                            _%tl5089651145%_))
                                                      (_%K5089451138%_
                                                       _%rest51151%_
                                                       _%part51148%_)))
                                                  (_%else5089250959%_)))))
                                        _%$e50874%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50833%_
                                                   (foldr (lambda (_%g5115551158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5115651161%_)
                    (cons _%g5115551158%_ _%g5115651161%_))
                  '()
                  _%L50831%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5085350860%_))
                             (let ((_%hd5085751168%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5085350860%_)))
                                   (_%tl5085851171%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5085350860%_))))
                               (let* ((_%var51174%_ _%hd5085751168%_)
                                      (_%parts51177%_ _%tl5085851171%_))
                                 (_%K5085651164%_
                                  _%parts51177%_
                                  _%var51174%_)))
                             (_%E5085550866%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50833%_
                                   (foldr (lambda (_%g5117951182%_
                                                   _%g5118051185%_)
                                            (cons _%g5117951182%_
                                                  _%g5118051185%_))
                                          '()
                                          _%L50831%_))))))
                (_%__kont7820578206%_
                 (lambda (_%L50730%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5074550748%_ _%g5074650751%_)
                                  (cons _%g5074550748%_ _%g5074650751%_))
                                '()
                                _%L50730%_)))))
            (let* ((_%__match7828178282%_
                    (lambda (_%e5066650690%_
                             _%hd5066750694%_
                             _%tl5066850697%_
                             _%__splice7820778208%_
                             _%target5066950700%_
                             _%tl5067150703%_)
                      (letrec ((_%loop5067250706%_
                                (lambda (_%hd5067050710%_ _%arg5067650713%_)
                                  (if (gx#stx-pair? _%hd5067050710%_)
                                      (let ((_%e5067350716%_
                                             (gx#syntax-e _%hd5067050710%_)))
                                        (let ((_%lp-tl5067550723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5067350716%_)))
                                              (_%lp-hd5067450720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5067350716%_))))
                                          (_%loop5067250706%_
                                           _%lp-tl5067550723%_
                                           (cons _%lp-hd5067450720%_
                                                 _%arg5067650713%_))))
                                      (let ((_%arg5067750726%_
                                             (reverse _%arg5067650713%_)))
                                        (_%__kont7820578206%_
                                         _%arg5067750726%_))))))
                        (_%loop5067250706%_ _%target5066950700%_ '()))))
                   (_%__match7826778268%_
                    (lambda (_%e5064450761%_
                             _%hd5064550765%_
                             _%tl5064650768%_
                             _%e5064750771%_
                             _%hd5064850775%_
                             _%tl5064950778%_
                             _%e5065050781%_
                             _%hd5065150785%_
                             _%tl5065250788%_
                             _%e5065350791%_
                             _%hd5065450795%_
                             _%tl5065550798%_
                             _%__splice7820378204%_
                             _%target5065650801%_
                             _%tl5065850804%_)
                      (letrec ((_%loop5065950807%_
                                (lambda (_%hd5065750811%_ _%rand5066350814%_)
                                  (if (gx#stx-pair? _%hd5065750811%_)
                                      (let ((_%e5066050817%_
                                             (gx#syntax-e _%hd5065750811%_)))
                                        (let ((_%lp-tl5066250824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5066050817%_)))
                                              (_%lp-hd5066150821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5066050817%_))))
                                          (_%loop5065950807%_
                                           _%lp-tl5066250824%_
                                           (cons _%lp-hd5066150821%_
                                                 _%rand5066350814%_))))
                                      (let ((_%rand5066450827%_
                                             (reverse _%rand5066350814%_)))
                                        (_%__kont7820178202%_
                                         _%rand5066450827%_
                                         _%hd5065450795%_))))))
                        (_%loop5065950807%_ _%target5065650801%_ '()))))
                   (_%__match7824178242%_
                    (lambda (_%e5064450761%_
                             _%hd5064550765%_
                             _%tl5064650768%_
                             _%e5064750771%_
                             _%hd5064850775%_
                             _%tl5064950778%_)
                      (if (gx#stx-pair? _%hd5064850775%_)
                          (let ((_%e5065050781%_
                                 (gx#syntax-e _%hd5064850775%_)))
                            (let ((_%tl5065250788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5065050781%_)))
                                  (_%hd5065150785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5065050781%_))))
                              (if (gx#identifier? _%hd5065150785%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82647_|
                                       _%hd5065150785%_)
                                      (if (gx#stx-pair? _%tl5065250788%_)
                                          (let ((_%e5065350791%_
                                                 (gx#syntax-e
                                                  _%tl5065250788%_)))
                                            (let ((_%tl5065550798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5065350791%_)))
                                                  (_%hd5065450795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5065350791%_))))
                                              (if (gx#stx-null?
                                                   _%tl5065550798%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5064950778%_)
                                                      (let ((_%__splice7820378204%_
                                                             (gx#syntax-split-splice
                                                              _%tl5064950778%_
                                                              '0)))
                                                        (let ((_%tl5065850804%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820378204%_ '1)))
                      (_%target5065650801%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820378204%_ '0))))
                  (if (gx#stx-null? _%tl5065850804%_)
                      (_%__match7826778268%_
                       _%e5064450761%_
                       _%hd5064550765%_
                       _%tl5064650768%_
                       _%e5064750771%_
                       _%hd5064850775%_
                       _%tl5064950778%_
                       _%e5065050781%_
                       _%hd5065150785%_
                       _%tl5065250788%_
                       _%e5065350791%_
                       _%hd5065450795%_
                       _%tl5065550798%_
                       _%__splice7820378204%_
                       _%target5065650801%_
                       _%tl5065850804%_)
                      (if (gx#stx-pair/null? _%tl5064650768%_)
                          (let ((_%__splice7820778208%_
                                 (gx#syntax-split-splice _%tl5064650768%_ '0)))
                            (let ((_%tl5067150703%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7820778208%_ '1)))
                                  (_%target5066950700%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7820778208%_
                                      '0))))
                              (if (gx#stx-null? _%tl5067150703%_)
                                  (_%__match7828178282%_
                                   _%e5064450761%_
                                   _%hd5064550765%_
                                   _%tl5064650768%_
                                   _%__splice7820778208%_
                                   _%target5066950700%_
                                   _%tl5067150703%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5062350683%_)))))
                          (let () (declare (not safe)) (_%g5062350683%_))))))
              (if (gx#stx-pair/null? _%tl5064650768%_)
                  (let ((_%__splice7820778208%_
                         (gx#syntax-split-splice _%tl5064650768%_ '0)))
                    (let ((_%tl5067150703%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '1)))
                          (_%target5066950700%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '0))))
                      (if (gx#stx-null? _%tl5067150703%_)
                          (_%__match7828178282%_
                           _%e5064450761%_
                           _%hd5064550765%_
                           _%tl5064650768%_
                           _%__splice7820778208%_
                           _%target5066950700%_
                           _%tl5067150703%_)
                          (let () (declare (not safe)) (_%g5062350683%_)))))
                  (let () (declare (not safe)) (_%g5062350683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5064650768%_)
                                                      (let ((_%__splice7820778208%_
                                                             (gx#syntax-split-splice
                                                              _%tl5064650768%_
                                                              '0)))
                                                        (let ((_%tl5067150703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820778208%_ '1)))
                      (_%target5066950700%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820778208%_ '0))))
                  (if (gx#stx-null? _%tl5067150703%_)
                      (_%__match7828178282%_
                       _%e5064450761%_
                       _%hd5064550765%_
                       _%tl5064650768%_
                       _%__splice7820778208%_
                       _%target5066950700%_
                       _%tl5067150703%_)
                      (let () (declare (not safe)) (_%g5062350683%_)))))
              (let () (declare (not safe)) (_%g5062350683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5064650768%_)
                                              (let ((_%__splice7820778208%_
                                                     (gx#syntax-split-splice
                                                      _%tl5064650768%_
                                                      '0)))
                                                (let ((_%tl5067150703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7820778208%_
                                                          '1)))
                                                      (_%target5066950700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7820778208%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5067150703%_)
                                                      (_%__match7828178282%_
                                                       _%e5064450761%_
                                                       _%hd5064550765%_
                                                       _%tl5064650768%_
                                                       _%__splice7820778208%_
                                                       _%target5066950700%_
                                                       _%tl5067150703%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5062350683%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5062350683%_))))
                                      (if (gx#stx-pair/null? _%tl5064650768%_)
                                          (let ((_%__splice7820778208%_
                                                 (gx#syntax-split-splice
                                                  _%tl5064650768%_
                                                  '0)))
                                            (let ((_%tl5067150703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820778208%_
                                                      '1)))
                                                  (_%target5066950700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820778208%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5067150703%_)
                                                  (_%__match7828178282%_
                                                   _%e5064450761%_
                                                   _%hd5064550765%_
                                                   _%tl5064650768%_
                                                   _%__splice7820778208%_
                                                   _%target5066950700%_
                                                   _%tl5067150703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062350683%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5062350683%_))))
                                  (if (gx#stx-pair/null? _%tl5064650768%_)
                                      (let ((_%__splice7820778208%_
                                             (gx#syntax-split-splice
                                              _%tl5064650768%_
                                              '0)))
                                        (let ((_%tl5067150703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7820778208%_
                                                  '1)))
                                              (_%target5066950700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7820778208%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5067150703%_)
                                              (_%__match7828178282%_
                                               _%e5064450761%_
                                               _%hd5064550765%_
                                               _%tl5064650768%_
                                               _%__splice7820778208%_
                                               _%target5066950700%_
                                               _%tl5067150703%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5062350683%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062350683%_))))))
                          (if (gx#stx-pair/null? _%tl5064650768%_)
                              (let ((_%__splice7820778208%_
                                     (gx#syntax-split-splice
                                      _%tl5064650768%_
                                      '0)))
                                (let ((_%tl5067150703%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '1)))
                                      (_%target5066950700%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5067150703%_)
                                      (_%__match7828178282%_
                                       _%e5064450761%_
                                       _%hd5064550765%_
                                       _%tl5064650768%_
                                       _%__splice7820778208%_
                                       _%target5066950700%_
                                       _%tl5067150703%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062350683%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062350683%_))))))
                   (_%__match7822978230%_
                    (lambda (_%e5062751195%_
                             _%hd5062851199%_
                             _%tl5062951202%_
                             _%e5063051205%_
                             _%hd5063151209%_
                             _%tl5063251212%_
                             _%__splice7819978200%_
                             _%target5063351215%_
                             _%tl5063551218%_)
                      (letrec ((_%loop5063651221%_
                                (lambda (_%hd5063451225%_ _%rand5064051228%_)
                                  (if (gx#stx-pair? _%hd5063451225%_)
                                      (let ((_%e5063751231%_
                                             (gx#syntax-e _%hd5063451225%_)))
                                        (let ((_%lp-tl5063951238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5063751231%_)))
                                              (_%lp-hd5063851235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5063751231%_))))
                                          (_%loop5063651221%_
                                           _%lp-tl5063951238%_
                                           (cons _%lp-hd5063851235%_
                                                 _%rand5064051228%_))))
                                      (let ((_%rand5064151241%_
                                             (reverse _%rand5064051228%_)))
                                        (let ((_%L51245%_ _%rand5064151241%_)
                                              (_%L51247%_ _%hd5063151209%_))
                                          (if (gx#identifier? _%L51247%_)
                                              (_%__kont7819778198%_
                                               _%L51245%_
                                               _%L51247%_)
                                              (_%__match7824178242%_
                                               _%e5062751195%_
                                               _%hd5062851199%_
                                               _%tl5062951202%_
                                               _%e5063051205%_
                                               _%hd5063151209%_
                                               _%tl5063251212%_))))))))
                        (_%loop5063651221%_ _%target5063351215%_ '())))))
              (if (gx#stx-pair? _%__stx7819478195%_)
                  (let ((_%e5062751195%_ (gx#syntax-e _%__stx7819478195%_)))
                    (let ((_%tl5062951202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5062751195%_)))
                          (_%hd5062851199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5062751195%_))))
                      (if (gx#stx-pair? _%tl5062951202%_)
                          (let ((_%e5063051205%_
                                 (gx#syntax-e _%tl5062951202%_)))
                            (let ((_%tl5063251212%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5063051205%_)))
                                  (_%hd5063151209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5063051205%_))))
                              (if (gx#stx-pair/null? _%tl5063251212%_)
                                  (let ((_%__splice7819978200%_
                                         (gx#syntax-split-splice
                                          _%tl5063251212%_
                                          '0)))
                                    (let ((_%tl5063551218%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7819978200%_
                                              '1)))
                                          (_%target5063351215%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7819978200%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5063551218%_)
                                          (_%__match7822978230%_
                                           _%e5062751195%_
                                           _%hd5062851199%_
                                           _%tl5062951202%_
                                           _%e5063051205%_
                                           _%hd5063151209%_
                                           _%tl5063251212%_
                                           _%__splice7819978200%_
                                           _%target5063351215%_
                                           _%tl5063551218%_)
                                          (if (gx#stx-pair? _%hd5063151209%_)
                                              (let ((_%e5065050781%_
                                                     (gx#syntax-e
                                                      _%hd5063151209%_)))
                                                (let ((_%tl5065250788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5065050781%_)))
                                                      (_%hd5065150785%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5065050781%_))))
                                                  (if (gx#identifier?
                                                       _%hd5065150785%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82647_|
                                                           _%hd5065150785%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5065250788%_)
                                                              (let ((_%e5065350791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5065250788%_)))
                        (let ((_%tl5065550798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5065350791%_)))
                              (_%hd5065450795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5065350791%_))))
                          (if (gx#stx-pair/null? _%tl5062951202%_)
                              (let ((_%__splice7820778208%_
                                     (gx#syntax-split-splice
                                      _%tl5062951202%_
                                      '0)))
                                (let ((_%tl5067150703%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '1)))
                                      (_%target5066950700%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5067150703%_)
                                      (_%__match7828178282%_
                                       _%e5062751195%_
                                       _%hd5062851199%_
                                       _%tl5062951202%_
                                       _%__splice7820778208%_
                                       _%target5066950700%_
                                       _%tl5067150703%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062350683%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062350683%_)))))
                      (if (gx#stx-pair/null? _%tl5062951202%_)
                          (let ((_%__splice7820778208%_
                                 (gx#syntax-split-splice _%tl5062951202%_ '0)))
                            (let ((_%tl5067150703%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7820778208%_ '1)))
                                  (_%target5066950700%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7820778208%_
                                      '0))))
                              (if (gx#stx-null? _%tl5067150703%_)
                                  (_%__match7828178282%_
                                   _%e5062751195%_
                                   _%hd5062851199%_
                                   _%tl5062951202%_
                                   _%__splice7820778208%_
                                   _%target5066950700%_
                                   _%tl5067150703%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5062350683%_)))))
                          (let () (declare (not safe)) (_%g5062350683%_))))
                  (if (gx#stx-pair/null? _%tl5062951202%_)
                      (let ((_%__splice7820778208%_
                             (gx#syntax-split-splice _%tl5062951202%_ '0)))
                        (let ((_%tl5067150703%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820778208%_ '1)))
                              (_%target5066950700%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820778208%_ '0))))
                          (if (gx#stx-null? _%tl5067150703%_)
                              (_%__match7828178282%_
                               _%e5062751195%_
                               _%hd5062851199%_
                               _%tl5062951202%_
                               _%__splice7820778208%_
                               _%target5066950700%_
                               _%tl5067150703%_)
                              (let ()
                                (declare (not safe))
                                (_%g5062350683%_)))))
                      (let () (declare (not safe)) (_%g5062350683%_))))
              (if (gx#stx-pair/null? _%tl5062951202%_)
                  (let ((_%__splice7820778208%_
                         (gx#syntax-split-splice _%tl5062951202%_ '0)))
                    (let ((_%tl5067150703%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '1)))
                          (_%target5066950700%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '0))))
                      (if (gx#stx-null? _%tl5067150703%_)
                          (_%__match7828178282%_
                           _%e5062751195%_
                           _%hd5062851199%_
                           _%tl5062951202%_
                           _%__splice7820778208%_
                           _%target5066950700%_
                           _%tl5067150703%_)
                          (let () (declare (not safe)) (_%g5062350683%_)))))
                  (let () (declare (not safe)) (_%g5062350683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5062951202%_)
                                                  (let ((_%__splice7820778208%_
                                                         (gx#syntax-split-splice
                                                          _%tl5062951202%_
                                                          '0)))
                                                    (let ((_%tl5067150703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820778208%_
                                                              '1)))
                                                          (_%target5066950700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820778208%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5067150703%_)
                                                          (_%__match7828178282%_
                                                           _%e5062751195%_
                                                           _%hd5062851199%_
                                                           _%tl5062951202%_
                                                           _%__splice7820778208%_
                                                           _%target5066950700%_
                                                           _%tl5067150703%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5062350683%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062350683%_)))))))
                                  (if (gx#stx-pair? _%hd5063151209%_)
                                      (let ((_%e5065050781%_
                                             (gx#syntax-e _%hd5063151209%_)))
                                        (let ((_%tl5065250788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5065050781%_)))
                                              (_%hd5065150785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5065050781%_))))
                                          (if (gx#identifier? _%hd5065150785%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g82647_|
                                                   _%hd5065150785%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5065250788%_)
                                                      (let ((_%e5065350791%_
                                                             (gx#syntax-e
                                                              _%tl5065250788%_)))
                                                        (let ((_%tl5065550798%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5065350791%_)))
                      (_%hd5065450795%_
                       (let () (declare (not safe)) (##car _%e5065350791%_))))
                  (if (gx#stx-pair/null? _%tl5062951202%_)
                      (let ((_%__splice7820778208%_
                             (gx#syntax-split-splice _%tl5062951202%_ '0)))
                        (let ((_%tl5067150703%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820778208%_ '1)))
                              (_%target5066950700%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7820778208%_ '0))))
                          (if (gx#stx-null? _%tl5067150703%_)
                              (_%__match7828178282%_
                               _%e5062751195%_
                               _%hd5062851199%_
                               _%tl5062951202%_
                               _%__splice7820778208%_
                               _%target5066950700%_
                               _%tl5067150703%_)
                              (let ()
                                (declare (not safe))
                                (_%g5062350683%_)))))
                      (let () (declare (not safe)) (_%g5062350683%_)))))
              (if (gx#stx-pair/null? _%tl5062951202%_)
                  (let ((_%__splice7820778208%_
                         (gx#syntax-split-splice _%tl5062951202%_ '0)))
                    (let ((_%tl5067150703%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '1)))
                          (_%target5066950700%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7820778208%_ '0))))
                      (if (gx#stx-null? _%tl5067150703%_)
                          (_%__match7828178282%_
                           _%e5062751195%_
                           _%hd5062851199%_
                           _%tl5062951202%_
                           _%__splice7820778208%_
                           _%target5066950700%_
                           _%tl5067150703%_)
                          (let () (declare (not safe)) (_%g5062350683%_)))))
                  (let () (declare (not safe)) (_%g5062350683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5062951202%_)
                                                      (let ((_%__splice7820778208%_
                                                             (gx#syntax-split-splice
                                                              _%tl5062951202%_
                                                              '0)))
                                                        (let ((_%tl5067150703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7820778208%_ '1)))
                      (_%target5066950700%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7820778208%_ '0))))
                  (if (gx#stx-null? _%tl5067150703%_)
                      (_%__match7828178282%_
                       _%e5062751195%_
                       _%hd5062851199%_
                       _%tl5062951202%_
                       _%__splice7820778208%_
                       _%target5066950700%_
                       _%tl5067150703%_)
                      (let () (declare (not safe)) (_%g5062350683%_)))))
              (let () (declare (not safe)) (_%g5062350683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5062951202%_)
                                                  (let ((_%__splice7820778208%_
                                                         (gx#syntax-split-splice
                                                          _%tl5062951202%_
                                                          '0)))
                                                    (let ((_%tl5067150703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820778208%_
                                                              '1)))
                                                          (_%target5066950700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7820778208%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5067150703%_)
                                                          (_%__match7828178282%_
                                                           _%e5062751195%_
                                                           _%hd5062851199%_
                                                           _%tl5062951202%_
                                                           _%__splice7820778208%_
                                                           _%target5066950700%_
                                                           _%tl5067150703%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5062350683%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062350683%_))))))
                                      (if (gx#stx-pair/null? _%tl5062951202%_)
                                          (let ((_%__splice7820778208%_
                                                 (gx#syntax-split-splice
                                                  _%tl5062951202%_
                                                  '0)))
                                            (let ((_%tl5067150703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820778208%_
                                                      '1)))
                                                  (_%target5066950700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7820778208%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5067150703%_)
                                                  (_%__match7828178282%_
                                                   _%e5062751195%_
                                                   _%hd5062851199%_
                                                   _%tl5062951202%_
                                                   _%__splice7820778208%_
                                                   _%target5066950700%_
                                                   _%tl5067150703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5062350683%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5062350683%_)))))))
                          (if (gx#stx-pair/null? _%tl5062951202%_)
                              (let ((_%__splice7820778208%_
                                     (gx#syntax-split-splice
                                      _%tl5062951202%_
                                      '0)))
                                (let ((_%tl5067150703%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '1)))
                                      (_%target5066950700%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7820778208%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5067150703%_)
                                      (_%__match7828178282%_
                                       _%e5062751195%_
                                       _%hd5062851199%_
                                       _%tl5062951202%_
                                       _%__splice7820778208%_
                                       _%target5066950700%_
                                       _%tl5067150703%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5062350683%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5062350683%_))))))
                  (let () (declare (not safe)) (_%g5062350683%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51279%_)
        (let* ((_%__stx7828478285%_ _%stx51279%_)
               (_%g5128351304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7828478285%_))))
          (let ((_%__kont7828778288%_
                 (lambda (_%L51372%_)
                   (let* ((_%g5138451391%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51279%_
                            _%L51372%_))
                          (_%E5138651397%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5138451391%_
                                    '([var . parts]))
                             (void)))
                          (_%K5138751613%_
                           (lambda (_%parts51401%_ _%var51403%_)
                             (let ((_%$e51405%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51403%_))))
                               (if _%$e51405%_
                                   ((lambda (_%te51409%_)
                                      (let _%loop51412%_ ((_%parts51415%_
                                                           _%parts51401%_)
                                                          (_%type51417%_
                                                           (##direct-structure-ref
                                                            _%te51409%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51418%_
                                                           _%var51403%_)
                                                          (_%nil-check?51419%_
                                                           '#f))
                                        (let* ((_%parts5142051428%_
                                                _%parts51415%_)
                                               (_%else5142251440%_
                                                (lambda () _%object51418%_))
                                               (_%K5142451595%_
                                                (lambda (_%rest51444%_
                                                         _%part51446%_)
                                                  (if (and (not _%nil-check?51419%_)
                                                           (let ((__tmp82648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51446%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82648)))
              (let ((_%str51450%_ (symbol->string _%part51446%_)))
                (_%loop51412%_
                 (cons (let ((__tmp82649
                              (substring
                               _%str51450%_
                               '1
                               (string-length _%str51450%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82649))
                       _%rest51444%_)
                 _%type51417%_
                 _%object51418%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51417%_))
                  (let* ((_%g5145551470%_
                          (lambda (_%g5145651466%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5145651466%_)))
                         (_%g5145451587%_
                          (lambda (_%g5145651474%_)
                            (if (gx#stx-pair? _%g5145651474%_)
                                (let ((_%e5145951477%_
                                       (gx#syntax-e _%g5145651474%_)))
                                  (let ((_%hd5146051481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5145951477%_)))
                                        (_%tl5146151484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5145951477%_))))
                                    (if (gx#stx-pair? _%tl5146151484%_)
                                        (let ((_%e5146251487%_
                                               (gx#syntax-e _%tl5146151484%_)))
                                          (let ((_%hd5146351491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5146251487%_)))
                                                (_%tl5146451494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5146251487%_))))
                                            (if (gx#stx-null? _%tl5146451494%_)
                                                ((lambda (_%L51497%_
                                                          _%L51499%_)
                                                   (if (null? _%rest51444%_)
                                                       (let ((_%$e51529%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51417%_
                                                               _%part51446%_)))
                                                         (if _%$e51529%_
                                                             ((lambda (_%slot-type51533%_)
                                                                (let* ((_%g5153651544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5153751540%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5153751540%_)))
                               (_%g5153551567%_
                                (lambda (_%g5153751548%_)
                                  ((lambda (_%L51551%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51551%_ '()))
                                                 (cons (cons _%L51497%_
                                                             (cons _%L51499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5153751548%_))))
                          (_%g5153551567%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51279%_
                              _%slot-type51533%_)))))
                      _%$e51529%_)
                     (if _%nil-check?51419%_
                         (cons _%L51497%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51499%_ '()))
                                     '()))
                         (cons _%L51497%_ (cons _%L51499%_ '())))))
               (let ((_%$e51575%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51417%_
                       _%part51446%_)))
                 (if _%$e51575%_
                     ((lambda (_%type51579%_)
                        (let ((_%type51582%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51279%_
                                  _%type51579%_))))
                          (if _%nil-check?51419%_
                              (_%loop51412%_
                               _%rest51444%_
                               _%type51582%_
                               (cons _%L51497%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51499%_ '()))
                                           '()))
                               '#f)
                              (_%loop51412%_
                               _%rest51444%_
                               _%type51582%_
                               (cons _%L51497%_ (cons _%L51499%_ '()))
                               '#f))))
                      _%$e51575%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51279%_
                      _%L51372%_
                      _%part51446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5146351491%_
                                                 _%hd5146051481%_)
                                                (_%g5145551470%_
                                                 _%g5145651474%_))))
                                        (_%g5145551470%_ _%g5145651474%_))))
                                (_%g5145551470%_ _%g5145651474%_)))))
                    (_%g5145451587%_
                     (list (if _%nil-check?51419%_
                               (cons 'check-nil! (cons _%object51418%_ '()))
                               _%object51418%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51279%_
                            _%type51417%_
                            _%part51446%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51417%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51279%_
                       _%type51417%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5142051428%_))
                                              (let ((_%hd5142551599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5142051428%_)))
                                                    (_%tl5142651602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5142051428%_))))
                                                (let* ((_%part51605%_
                                                        _%hd5142551599%_)
                                                       (_%rest51608%_
                                                        _%tl5142651602%_))
                                                  (_%K5142451595%_
                                                   _%rest51608%_
                                                   _%part51605%_)))
                                              (_%else5142251440%_)))))
                                    _%$e51405%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51372%_ '())))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5138451391%_))
                         (let ((_%hd5138851617%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5138451391%_)))
                               (_%tl5138951620%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5138451391%_))))
                           (let* ((_%var51623%_ _%hd5138851617%_)
                                  (_%parts51626%_ _%tl5138951620%_))
                             (_%K5138751613%_ _%parts51626%_ _%var51623%_)))
                         (_%E5138651397%_)))))
                (_%__kont7828978290%_
                 (lambda (_%L51331%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51331%_ '())))))
            (let ((_%__match7830578306%_
                   (lambda (_%e5128651352%_
                            _%hd5128751356%_
                            _%tl5128851359%_
                            _%e5128951362%_
                            _%hd5129051366%_
                            _%tl5129151369%_)
                     (let ((_%L51372%_ _%hd5129051366%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51372%_)
                           (_%__kont7828778288%_ _%L51372%_)
                           (_%__kont7828978290%_ _%hd5129051366%_))))))
              (if (gx#stx-pair? _%__stx7828478285%_)
                  (let ((_%e5128651352%_ (gx#syntax-e _%__stx7828478285%_)))
                    (let ((_%tl5128851359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5128651352%_)))
                          (_%hd5128751356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5128651352%_))))
                      (if (gx#stx-pair? _%tl5128851359%_)
                          (let ((_%e5128951362%_
                                 (gx#syntax-e _%tl5128851359%_)))
                            (let ((_%tl5129151369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5128951362%_)))
                                  (_%hd5129051366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5128951362%_))))
                              (if (gx#stx-null? _%tl5129151369%_)
                                  (_%__match7830578306%_
                                   _%e5128651352%_
                                   _%hd5128751356%_
                                   _%tl5128851359%_
                                   _%e5128951362%_
                                   _%hd5129051366%_
                                   _%tl5129151369%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5128351304%_)))))
                          (let () (declare (not safe)) (_%g5128351304%_)))))
                  (let () (declare (not safe)) (_%g5128351304%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51633%_)
        (let* ((_%__stx7832278323%_ _%stx51633%_)
               (_%g5163751666%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7832278323%_))))
          (let ((_%__kont7832578326%_
                 (lambda (_%L51758%_ _%L51760%_)
                   (let* ((_%g5177451781%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51633%_
                            _%L51760%_))
                          (_%E5177651787%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5177451781%_
                                    '([var . parts]))
                             (void)))
                          (_%K5177752017%_
                           (lambda (_%parts51791%_ _%var51793%_)
                             (let ((_%$e51795%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51793%_))))
                               (if _%$e51795%_
                                   ((lambda (_%te51799%_)
                                      (let _%loop51802%_ ((_%parts51805%_
                                                           _%parts51791%_)
                                                          (_%type51807%_
                                                           (##direct-structure-ref
                                                            _%te51799%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51808%_
                                                           _%var51793%_)
                                                          (_%checked-mutator?51809%_
                                                           (##direct-structure-ref
                                                            _%te51799%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51810%_
                                                           '#f))
                                        (let* ((_%parts5181151818%_
                                                _%parts51805%_)
                                               (_%E5181351824%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5181151818%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5181451999%_
                                                (lambda (_%rest51828%_
                                                         _%part51830%_)
                                                  (if (and (not _%nil-check?51810%_)
                                                           (let ((__tmp82650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51830%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82650)))
              (let ((_%str51834%_ (symbol->string _%part51830%_)))
                (_%loop51802%_
                 (cons (let ((__tmp82651
                              (substring
                               _%str51834%_
                               '1
                               (string-length _%str51834%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82651))
                       _%rest51828%_)
                 _%type51807%_
                 _%object51808%_
                 _%checked-mutator?51809%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51807%_))
                  (if (null? _%rest51828%_)
                      (let* ((_%g5184151856%_
                              (lambda (_%g5184251852%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5184251852%_)))
                             (_%g5184051913%_
                              (lambda (_%g5184251860%_)
                                (if (gx#stx-pair? _%g5184251860%_)
                                    (let ((_%e5184551863%_
                                           (gx#syntax-e _%g5184251860%_)))
                                      (let ((_%hd5184651867%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5184551863%_)))
                                            (_%tl5184751870%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5184551863%_))))
                                        (if (gx#stx-pair? _%tl5184751870%_)
                                            (let ((_%e5184851873%_
                                                   (gx#syntax-e
                                                    _%tl5184751870%_)))
                                              (let ((_%hd5184951877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5184851873%_)))
                                                    (_%tl5185051880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5184851873%_))))
                                                (if (gx#stx-null?
                                                     _%tl5185051880%_)
                                                    ((lambda (_%L51883%_
                                                              _%L51885%_)
                                                       (if _%nil-check?51810%_
                                                           (cons _%L51883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51885%_ '()))
                               (cons _%L51758%_ '())))
                   (cons _%L51883%_ (cons _%L51885%_ (cons _%L51758%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5184951877%_
                                                     _%hd5184651867%_)
                                                    (_%g5184151856%_
                                                     _%g5184251860%_))))
                                            (_%g5184151856%_
                                             _%g5184251860%_))))
                                    (_%g5184151856%_ _%g5184251860%_)))))
                        (_%g5184051913%_
                         (list _%object51808%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51633%_
                                _%type51807%_
                                _%part51830%_
                                (if _%checked-mutator?51809%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51807%_
                                     _%part51830%_)
                                    '#f)))))
                      (let ((_%$e51917%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51807%_
                              _%part51830%_)))
                        (if _%$e51917%_
                            ((lambda (_%type51921%_)
                               (let* ((_%type51924%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51633%_
                                          _%type51921%_)))
                                      (_%g5192751942%_
                                       (lambda (_%g5192851938%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5192851938%_)))
                                      (_%g5192651989%_
                                       (lambda (_%g5192851946%_)
                                         (if (gx#stx-pair? _%g5192851946%_)
                                             (let ((_%e5193151949%_
                                                    (gx#syntax-e
                                                     _%g5192851946%_)))
                                               (let ((_%hd5193251953%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5193151949%_)))
                                                     (_%tl5193351956%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5193151949%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5193351956%_)
                                                     (let ((_%e5193451959%_
                                                            (gx#syntax-e
                                                             _%tl5193351956%_)))
                                                       (let ((_%hd5193551963%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5193451959%_)))
                     (_%tl5193651966%_
                      (let () (declare (not safe)) (##cdr _%e5193451959%_))))
                 (if (gx#stx-null? _%tl5193651966%_)
                     ((lambda (_%L51969%_ _%L51971%_)
                        (_%loop51802%_
                         _%rest51828%_
                         _%type51924%_
                         (cons _%L51969%_ (cons _%L51971%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51924%_
                          _%part51830%_)
                         '#f))
                      _%hd5193551963%_
                      _%hd5193251953%_)
                     (_%g5192751942%_ _%g5192851946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5192751942%_
                                                      _%g5192851946%_))))
                                             (_%g5192751942%_
                                              _%g5192851946%_)))))
                                 (_%g5192651989%_
                                  (list (if _%nil-check?51810%_
                                            (cons 'check-nil!
                                                  (cons _%object51808%_ '()))
                                            _%object51808%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51633%_
                                         _%type51924%_
                                         _%part51830%_)))))
                             _%$e51917%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51633%_
                             _%L51760%_
                             _%part51830%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51807%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51633%_
                       _%type51807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5181151818%_))
                                              (let ((_%hd5181552003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5181151818%_)))
                                                    (_%tl5181652006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5181151818%_))))
                                                (let* ((_%part52009%_
                                                        _%hd5181552003%_)
                                                       (_%rest52012%_
                                                        _%tl5181652006%_))
                                                  (_%K5181451999%_
                                                   _%rest52012%_
                                                   _%part52009%_)))
                                              (_%E5181351824%_)))))
                                    _%$e51795%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51633%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5177451781%_))
                         (let ((_%hd5177852021%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5177451781%_)))
                               (_%tl5177952024%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5177451781%_))))
                           (let* ((_%var52027%_ _%hd5177852021%_)
                                  (_%parts52030%_ _%tl5177952024%_))
                             (_%K5177752017%_ _%parts52030%_ _%var52027%_)))
                         (_%E5177651787%_)))))
                (_%__kont7832778328%_
                 (lambda (_%L51703%_ _%L51705%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51633%_)))))
            (let ((_%__match7834978350%_
                   (lambda (_%e5164151728%_
                            _%hd5164251732%_
                            _%tl5164351735%_
                            _%e5164451738%_
                            _%hd5164551742%_
                            _%tl5164651745%_
                            _%e5164751748%_
                            _%hd5164851752%_
                            _%tl5164951755%_)
                     (let ((_%L51758%_ _%hd5164851752%_)
                           (_%L51760%_ _%hd5164551742%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51760%_)
                           (_%__kont7832578326%_ _%L51758%_ _%L51760%_)
                           (_%__kont7832778328%_
                            _%hd5164851752%_
                            _%hd5164551742%_))))))
              (if (gx#stx-pair? _%__stx7832278323%_)
                  (let ((_%e5164151728%_ (gx#syntax-e _%__stx7832278323%_)))
                    (let ((_%tl5164351735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5164151728%_)))
                          (_%hd5164251732%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5164151728%_))))
                      (if (gx#stx-pair? _%tl5164351735%_)
                          (let ((_%e5164451738%_
                                 (gx#syntax-e _%tl5164351735%_)))
                            (let ((_%tl5164651745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5164451738%_)))
                                  (_%hd5164551742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5164451738%_))))
                              (if (gx#stx-pair? _%tl5164651745%_)
                                  (let ((_%e5164751748%_
                                         (gx#syntax-e _%tl5164651745%_)))
                                    (let ((_%tl5164951755%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5164751748%_)))
                                          (_%hd5164851752%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5164751748%_))))
                                      (if (gx#stx-null? _%tl5164951755%_)
                                          (_%__match7834978350%_
                                           _%e5164151728%_
                                           _%hd5164251732%_
                                           _%tl5164351735%_
                                           _%e5164451738%_
                                           _%hd5164551742%_
                                           _%tl5164651745%_
                                           _%e5164751748%_
                                           _%hd5164851752%_
                                           _%tl5164951755%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163751666%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163751666%_)))))
                          (let () (declare (not safe)) (_%g5163751666%_)))))
                  (let () (declare (not safe)) (_%g5163751666%_))))))))))

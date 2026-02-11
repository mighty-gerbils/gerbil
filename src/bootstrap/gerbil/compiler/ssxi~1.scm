(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g264591_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264598_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264600_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264602_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264604_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264606_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264618_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264620_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264622_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264624_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264626_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx258049%_)
        (let* ((_%g258053258071%_
                (lambda (_%g258054258067%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258054258067%_))))
               (_%g258052258126%_
                (lambda (_%g258054258075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258054258075%_))
                      (let ((_%e258057258078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258054258075%_))))
                        (let ((_%hd258058258082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258057258078%_)))
                              (_%tl258059258085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258057258078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258059258085%_))
                              (let ((_%e258060258088%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258059258085%_))))
                                (let ((_%hd258061258092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258060258088%_)))
                                      (_%tl258062258095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258060258088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258062258095%_))
                                      (let ((_%e258063258098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258062258095%_))))
                                        (let ((_%hd258064258102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258063258098%_)))
                                              (_%tl258065258105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258063258098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258065258105%_))
                                              ((lambda (_%g258055258108%_
                                                        _%g258056258110%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g258056258110%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g258056258110%_ '()))
                         (cons _%g258055258108%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g258053258071%_
                                                      _%g258054258075%_)))
                                               _%hd258064258102%_
                                               _%hd258061258092%_)
                                              (_%g258053258071%_
                                               _%g258054258075%_))))
                                      (_%g258053258071%_ _%g258054258075%_))))
                              (_%g258053258071%_ _%g258054258075%_))))
                      (_%g258053258071%_ _%g258054258075%_)))))
          (_%g258052258126%_ _%$stx258049%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx258130%_)
        (let* ((_%g258134258152%_
                (lambda (_%g258135258148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258135258148%_))))
               (_%g258133258207%_
                (lambda (_%g258135258156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258135258156%_))
                      (let ((_%e258138258159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258135258156%_))))
                        (let ((_%hd258139258163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258138258159%_)))
                              (_%tl258140258166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258138258159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258140258166%_))
                              (let ((_%e258141258169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258140258166%_))))
                                (let ((_%hd258142258173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258141258169%_)))
                                      (_%tl258143258176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258141258169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258143258176%_))
                                      (let ((_%e258144258179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258143258176%_))))
                                        (let ((_%hd258145258183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258144258179%_)))
                                              (_%tl258146258186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258144258179%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258146258186%_))
                                              ((lambda (_%g258136258189%_
                                                        _%g258137258191%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g258137258191%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g258137258191%_ '()))
                         (cons _%g258136258189%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g258134258152%_
                                                      _%g258135258156%_)))
                                               _%hd258145258183%_
                                               _%hd258142258173%_)
                                              (_%g258134258152%_
                                               _%g258135258156%_))))
                                      (_%g258134258152%_ _%g258135258156%_))))
                              (_%g258134258152%_ _%g258135258156%_))))
                      (_%g258134258152%_ _%g258135258156%_)))))
          (_%g258133258207%_ _%$stx258130%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx258211%_)
        (let* ((_%g258215258244%_
                (lambda (_%g258216258240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258216258240%_))))
               (_%g258214258340%_
                (lambda (_%g258216258248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258216258248%_))
                      (let ((_%e258219258251%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258216258248%_))))
                        (let ((_%hd258220258255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258219258251%_)))
                              (_%tl258221258258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258219258251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258221258258%_))
                              (let ((_g264569_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258221258258%_
                                        '0))))
                                (begin
                                  (let ((_g264570_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264569_)
                                               (##values-length _g264569_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264570_ 2)))
                                        (error "Context expects 2 values"
                                               _g264570_)))
                                  (let ((_%target258222258261%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264569_ 0)))
                                        (_%tl258224258264%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264569_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258224258264%_))
                                        (letrec ((_%loop258225258267%_
                                                  (lambda (_%hd258223258271%_
                                                           _%type258229258274%_
                                                           _%symbol258230258275%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258223258271%_))
                                                        (let ((_%e258226258277%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258223258271%_))))
                  (let ((_%lp-hd258227258281%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258226258277%_)))
                        (_%lp-tl258228258284%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258226258277%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd258227258281%_))
                        (let ((_%e258233258287%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd258227258281%_))))
                          (let ((_%hd258234258291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258233258287%_)))
                                (_%tl258235258294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258233258287%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258235258294%_))
                                (let ((_%e258236258297%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258235258294%_))))
                                  (let ((_%hd258237258301%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258236258297%_)))
                                        (_%tl258238258304%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258236258297%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258238258304%_))
                                        (_%loop258225258267%_
                                         _%lp-tl258228258284%_
                                         (cons _%hd258237258301%_
                                               _%type258229258274%_)
                                         (cons _%hd258234258291%_
                                               _%symbol258230258275%_))
                                        (_%g258215258244%_
                                         _%g258216258248%_))))
                                (_%g258215258244%_ _%g258216258248%_))))
                        (_%g258215258244%_ _%g258216258248%_))))
                (let ((_%type258231258307%_ (reverse _%type258229258274%_))
                      (_%symbol258232258309%_
                       (reverse _%symbol258230258275%_)))
                  ((lambda (_%g258217258311%_ _%g258218258313%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g258217258311%_
                                _%g258218258313%_))
                             (let ((__tmp264571
                                    (lambda (_%g258328258332%_
                                             _%g258329258335%_
                                             _%g258330258337%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g258329258335%_
                                                        (cons _%g258328258332%_
                                                              '())))
                                            _%g258330258337%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp264571
                                '()
                                _%g258217258311%_
                                _%g258218258313%_)))))
                   _%type258231258307%_
                   _%symbol258232258309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258225258267%_
                                           _%target258222258261%_
                                           '()
                                           '()))
                                        (_%g258215258244%_
                                         _%g258216258248%_)))))
                              (_%g258215258244%_ _%g258216258248%_))))
                      (_%g258215258244%_ _%g258216258248%_)))))
          (_%g258214258340%_ _%$stx258211%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx258345%_)
        (let* ((_%__stx263880263881%_ _%$stx258345%_)
               (_%g258350258392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263880263881%_)))))
          (let ((_%__kont263883263884%_
                 (lambda (_%g258352258520%_
                          _%g258353258522%_
                          _%g258354258523%_
                          _%g258355258524%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258355258524%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258354258523%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g258353258522%_ '()))
                                           (cons _%g258352258520%_ '())))))))
                (_%__kont263885263886%_
                 (lambda (_%g258371258439%_
                          _%g258372258441%_
                          _%g258373258442%_
                          _%g258374258443%_)
                   (cons _%g258374258443%_
                         (cons _%g258373258442%_
                               (cons _%g258372258441%_
                                     (cons _%g258371258439%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match263919263920%_
                   (lambda (_%e258356258470%_
                            _%hd258357258474%_
                            _%tl258358258477%_
                            _%e258359258480%_
                            _%hd258360258484%_
                            _%tl258361258487%_
                            _%e258362258490%_
                            _%hd258363258494%_
                            _%tl258364258497%_
                            _%e258365258500%_
                            _%hd258366258504%_
                            _%tl258367258507%_
                            _%e258368258510%_
                            _%hd258369258514%_
                            _%tl258370258517%_)
                     (let ((_%g258352258520%_ _%hd258369258514%_)
                           (_%g258353258522%_ _%hd258366258504%_)
                           (_%g258354258523%_ _%hd258363258494%_)
                           (_%g258355258524%_ _%hd258360258484%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258355258524%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258354258523%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258353258522%_)))
                           (_%__kont263883263884%_
                            _%g258352258520%_
                            _%g258353258522%_
                            _%g258354258523%_
                            _%g258355258524%_)
                           (let ()
                             (declare (not safe))
                             (_%g258350258392%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263880263881%_))
                  (let ((_%e258356258470%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263880263881%_))))
                    (let ((_%tl258358258477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258356258470%_)))
                          (_%hd258357258474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258356258470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258358258477%_))
                          (let ((_%e258359258480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258358258477%_))))
                            (let ((_%tl258361258487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258359258480%_)))
                                  (_%hd258360258484%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258359258480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258361258487%_))
                                  (let ((_%e258362258490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl258361258487%_))))
                                    (let ((_%tl258364258497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258362258490%_)))
                                          (_%hd258363258494%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258362258490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258364258497%_))
                                          (let ((_%e258365258500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl258364258497%_))))
                                            (let ((_%tl258367258507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258365258500%_)))
                                                  (_%hd258366258504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258365258500%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258367258507%_))
                                                  (let ((_%e258368258510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl258367258507%_))))
                                                    (let ((_%tl258370258517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258368258510%_)))
                                                          (_%hd258369258514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258368258510%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258370258517%_))
                                                          (_%__match263919263920%_
                                                           _%e258356258470%_
                                                           _%hd258357258474%_
                                                           _%tl258358258477%_
                                                           _%e258359258480%_
                                                           _%hd258360258484%_
                                                           _%tl258361258487%_
                                                           _%e258362258490%_
                                                           _%hd258363258494%_
                                                           _%tl258364258497%_
                                                           _%e258365258500%_
                                                           _%hd258366258504%_
                                                           _%tl258367258507%_
                                                           _%e258368258510%_
                                                           _%hd258369258514%_
                                                           _%tl258370258517%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g258350258392%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258367258507%_))
                                                      (_%__kont263885263886%_
                                                       _%hd258366258504%_
                                                       _%hd258363258494%_
                                                       _%hd258360258484%_
                                                       _%hd258357258474%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258350258392%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258350258392%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258350258392%_)))))
                          (let () (declare (not safe)) (_%g258350258392%_)))))
                  (let () (declare (not safe)) (_%g258350258392%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx258549%_)
        (let* ((_%g258553258588%_
                (lambda (_%g258554258584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258554258584%_))))
               (_%g258552258701%_
                (lambda (_%g258554258592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258554258592%_))
                      (let ((_%e258558258595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258554258592%_))))
                        (let ((_%hd258559258599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258558258595%_)))
                              (_%tl258560258602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258558258595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258560258602%_))
                              (let ((_g264572_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258560258602%_
                                        '0))))
                                (begin
                                  (let ((_g264573_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264572_)
                                               (##values-length _g264572_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264573_ 2)))
                                        (error "Context expects 2 values"
                                               _g264573_)))
                                  (let ((_%target258561258605%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264572_ 0)))
                                        (_%tl258563258608%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264572_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258563258608%_))
                                        (letrec ((_%loop258564258611%_
                                                  (lambda (_%hd258562258615%_
                                                           _%symbol258568258618%_
                                                           _%method258569258619%_
                                                           _%type-t258570258620%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258562258615%_))
                                                        (let ((_%e258565258622%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258562258615%_))))
                  (let ((_%lp-hd258566258626%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258565258622%_)))
                        (_%lp-tl258567258629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258565258622%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd258566258626%_))
                        (let ((_%e258574258632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd258566258626%_))))
                          (let ((_%hd258575258636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258574258632%_)))
                                (_%tl258576258639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258574258632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258576258639%_))
                                (let ((_%e258577258642%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258576258639%_))))
                                  (let ((_%hd258578258646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258577258642%_)))
                                        (_%tl258579258649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258577258642%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl258579258649%_))
                                        (let ((_%e258580258652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl258579258649%_))))
                                          (let ((_%hd258581258656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e258580258652%_)))
                                                (_%tl258582258659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e258580258652%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258582258659%_))
                                                (_%loop258564258611%_
                                                 _%lp-tl258567258629%_
                                                 (cons _%hd258581258656%_
                                                       _%symbol258568258618%_)
                                                 (cons _%hd258578258646%_
                                                       _%method258569258619%_)
                                                 (cons _%hd258575258636%_
                                                       _%type-t258570258620%_))
                                                (_%g258553258588%_
                                                 _%g258554258592%_))))
                                        (_%g258553258588%_
                                         _%g258554258592%_))))
                                (_%g258553258588%_ _%g258554258592%_))))
                        (_%g258553258588%_ _%g258554258592%_))))
                (let ((_%symbol258571258662%_ (reverse _%symbol258568258618%_))
                      (_%method258572258664%_ (reverse _%method258569258619%_))
                      (_%type-t258573258665%_
                       (reverse _%type-t258570258620%_)))
                  ((lambda (_%g258555258667%_
                            _%g258556258669%_
                            _%g258557258670%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g258555258667%_
                                _%g258556258669%_
                                _%g258557258670%_))
                             (let ((__tmp264574
                                    (lambda (_%g258686258691%_
                                             _%g258687258694%_
                                             _%g258688258696%_
                                             _%g258689258698%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g258688258696%_
                                                        (cons _%g258687258694%_
                                                              (cons _%g258686258691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g258689258698%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp264574
                                '()
                                _%g258555258667%_
                                _%g258556258669%_
                                _%g258557258670%_)))))
                   _%symbol258571258662%_
                   _%method258572258664%_
                   _%type-t258573258665%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258564258611%_
                                           _%target258561258605%_
                                           '()
                                           '()
                                           '()))
                                        (_%g258553258588%_
                                         _%g258554258592%_)))))
                              (_%g258553258588%_ _%g258554258592%_))))
                      (_%g258553258588%_ _%g258554258592%_)))))
          (_%g258552258701%_ _%$stx258549%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx258706%_)
        (let* ((_%g258710258743%_
                (lambda (_%g258711258739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258711258739%_))))
               (_%g258709258853%_
                (lambda (_%g258711258747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258711258747%_))
                      (let ((_%e258715258750%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258711258747%_))))
                        (let ((_%hd258716258754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258715258750%_)))
                              (_%tl258717258757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258715258750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258717258757%_))
                              (let ((_%e258718258760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258717258757%_))))
                                (let ((_%hd258719258764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258718258760%_)))
                                      (_%tl258720258767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258718258760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl258720258767%_))
                                      (let ((_g264575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl258720258767%_
                                                '0))))
                                        (begin
                                          (let ((_g264576_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264575_)
                                                       (##values-length
                                                        _g264575_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264576_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264576_)))
                                          (let ((_%target258721258770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264575_ 0)))
                                                (_%tl258723258773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264575_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258723258773%_))
                                                (letrec ((_%loop258724258776%_
                                                          (lambda (_%hd258722258780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol258728258783%_
                           _%method258729258784%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd258722258780%_))
                        (let ((_%e258725258786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd258722258780%_))))
                          (let ((_%lp-hd258726258790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258725258786%_)))
                                (_%lp-tl258727258793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258725258786%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd258726258790%_))
                                (let ((_%e258732258796%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd258726258790%_))))
                                  (let ((_%hd258733258800%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258732258796%_)))
                                        (_%tl258734258803%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258732258796%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl258734258803%_))
                                        (let ((_%e258735258806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl258734258803%_))))
                                          (let ((_%hd258736258810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e258735258806%_)))
                                                (_%tl258737258813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e258735258806%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258737258813%_))
                                                (_%loop258724258776%_
                                                 _%lp-tl258727258793%_
                                                 (cons _%hd258736258810%_
                                                       _%symbol258728258783%_)
                                                 (cons _%hd258733258800%_
                                                       _%method258729258784%_))
                                                (_%g258710258743%_
                                                 _%g258711258747%_))))
                                        (_%g258710258743%_
                                         _%g258711258747%_))))
                                (_%g258710258743%_ _%g258711258747%_))))
                        (let ((_%symbol258730258816%_
                               (reverse _%symbol258728258783%_))
                              (_%method258731258818%_
                               (reverse _%method258729258784%_)))
                          ((lambda (_%g258712258820%_
                                    _%g258713258822%_
                                    _%g258714258823%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g258712258820%_
                                        _%g258713258822%_))
                                     (let ((__tmp264577
                                            (lambda (_%g258841258845%_
                                                     _%g258842258848%_
                                                     _%g258843258850%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g258714258823%_
                                                                (cons _%g258842258848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g258841258845%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g258843258850%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp264577
                                        '()
                                        _%g258712258820%_
                                        _%g258713258822%_)))))
                           _%symbol258730258816%_
                           _%method258731258818%_
                           _%hd258719258764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop258724258776%_
                                                   _%target258721258770%_
                                                   '()
                                                   '()))
                                                (_%g258710258743%_
                                                 _%g258711258747%_)))))
                                      (_%g258710258743%_ _%g258711258747%_))))
                              (_%g258710258743%_ _%g258711258747%_))))
                      (_%g258710258743%_ _%g258711258747%_)))))
          (_%g258709258853%_ _%$stx258706%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx258858%_)
        (let* ((_%g258862258876%_
                (lambda (_%g258863258872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258863258872%_))))
               (_%g258861258917%_
                (lambda (_%g258863258880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258863258880%_))
                      (let ((_%e258865258883%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258863258880%_))))
                        (let ((_%hd258866258887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258865258883%_)))
                              (_%tl258867258890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258865258883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258867258890%_))
                              (let ((_%e258868258893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258867258890%_))))
                                (let ((_%hd258869258897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258868258893%_)))
                                      (_%tl258870258900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258868258893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258870258900%_))
                                      ((lambda (_%g258864258903%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g258864258903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258869258897%_)
                                      (_%g258862258876%_ _%g258863258880%_))))
                              (_%g258862258876%_ _%g258863258880%_))))
                      (_%g258862258876%_ _%g258863258880%_)))))
          (_%g258861258917%_ _%$stx258858%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx258921%_)
        (let* ((_%g258925258979%_
                (lambda (_%g258926258975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258926258975%_))))
               (_%g258924259160%_
                (lambda (_%g258926258983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258926258983%_))
                      (let ((_%e258938258986%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258926258983%_))))
                        (let ((_%hd258939258990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258938258986%_)))
                              (_%tl258940258993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258938258986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258940258993%_))
                              (let ((_%e258941258996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258940258993%_))))
                                (let ((_%hd258942259000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258941258996%_)))
                                      (_%tl258943259003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258941258996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258943259003%_))
                                      (let ((_%e258944259006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258943259003%_))))
                                        (let ((_%hd258945259010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258944259006%_)))
                                              (_%tl258946259013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258944259006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258946259013%_))
                                              (let ((_%e258947259016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258946259013%_))))
                                                (let ((_%hd258948259020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258947259016%_)))
                                                      (_%tl258949259023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258947259016%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258949259023%_))
                                                      (let ((_%e258950259026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl258949259023%_))))
                (let ((_%hd258951259030%_
                       (let () (declare (not safe)) (##car _%e258950259026%_)))
                      (_%tl258952259033%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e258950259026%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258952259033%_))
                      (let ((_%e258953259036%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258952259033%_))))
                        (let ((_%hd258954259040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258953259036%_)))
                              (_%tl258955259043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258953259036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258955259043%_))
                              (let ((_%e258956259046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258955259043%_))))
                                (let ((_%hd258957259050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258956259046%_)))
                                      (_%tl258958259053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258956259046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258958259053%_))
                                      (let ((_%e258959259056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258958259053%_))))
                                        (let ((_%hd258960259060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258959259056%_)))
                                              (_%tl258961259063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258959259056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258961259063%_))
                                              (let ((_%e258962259066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258961259063%_))))
                                                (let ((_%hd258963259070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258962259066%_)))
                                                      (_%tl258964259073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258962259066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258964259073%_))
                                                      (let ((_%e258965259076%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl258964259073%_))))
                (let ((_%hd258966259080%_
                       (let () (declare (not safe)) (##car _%e258965259076%_)))
                      (_%tl258967259083%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e258965259076%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258967259083%_))
                      (let ((_%e258968259086%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258967259083%_))))
                        (let ((_%hd258969259090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258968259086%_)))
                              (_%tl258970259093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258968259086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258970259093%_))
                              (let ((_%e258971259096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258970259093%_))))
                                (let ((_%hd258972259100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258971259096%_)))
                                      (_%tl258973259103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258971259096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258973259103%_))
                                      ((lambda (_%g258927259106%_
                                                _%g258928259108%_
                                                _%g258929259109%_
                                                _%g258930259110%_
                                                _%g258931259111%_
                                                _%g258932259112%_
                                                _%g258933259113%_
                                                _%g258934259114%_
                                                _%g258935259115%_
                                                _%g258936259116%_
                                                _%g258937259117%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g258937259117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g258936259116%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g258935259115%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258934259114%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258933259113%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g258932259112%_ '()))
                                           (cons _%g258931259111%_
                                                 (cons _%g258930259110%_
                                                       (cons _%g258929259109%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258928259108%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g258927259106%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd258972259100%_
                                       _%hd258969259090%_
                                       _%hd258966259080%_
                                       _%hd258963259070%_
                                       _%hd258960259060%_
                                       _%hd258957259050%_
                                       _%hd258954259040%_
                                       _%hd258951259030%_
                                       _%hd258948259020%_
                                       _%hd258945259010%_
                                       _%hd258942259000%_)
                                      (_%g258925258979%_ _%g258926258983%_))))
                              (_%g258925258979%_ _%g258926258983%_))))
                      (_%g258925258979%_ _%g258926258983%_))))
              (_%g258925258979%_ _%g258926258983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258925258979%_
                                               _%g258926258983%_))))
                                      (_%g258925258979%_ _%g258926258983%_))))
                              (_%g258925258979%_ _%g258926258983%_))))
                      (_%g258925258979%_ _%g258926258983%_))))
              (_%g258925258979%_ _%g258926258983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258925258979%_
                                               _%g258926258983%_))))
                                      (_%g258925258979%_ _%g258926258983%_))))
                              (_%g258925258979%_ _%g258926258983%_))))
                      (_%g258925258979%_ _%g258926258983%_)))))
          (_%g258924259160%_ _%$stx258921%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx259164%_)
        (let* ((_%g259168259182%_
                (lambda (_%g259169259178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259169259178%_))))
               (_%g259167259223%_
                (lambda (_%g259169259186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259169259186%_))
                      (let ((_%e259171259189%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259169259186%_))))
                        (let ((_%hd259172259193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259171259189%_)))
                              (_%tl259173259196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259171259189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259173259196%_))
                              (let ((_%e259174259199%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259173259196%_))))
                                (let ((_%hd259175259203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259174259199%_)))
                                      (_%tl259176259206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259174259199%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259176259206%_))
                                      ((lambda (_%g259170259209%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g259170259209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259175259203%_)
                                      (_%g259168259182%_ _%g259169259186%_))))
                              (_%g259168259182%_ _%g259169259186%_))))
                      (_%g259168259182%_ _%g259169259186%_)))))
          (_%g259167259223%_ _%$stx259164%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx259227%_)
        (let* ((_%g259231259245%_
                (lambda (_%g259232259241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259232259241%_))))
               (_%g259230259286%_
                (lambda (_%g259232259249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259232259249%_))
                      (let ((_%e259234259252%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259232259249%_))))
                        (let ((_%hd259235259256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259234259252%_)))
                              (_%tl259236259259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259234259252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259236259259%_))
                              (let ((_%e259237259262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259236259259%_))))
                                (let ((_%hd259238259266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259237259262%_)))
                                      (_%tl259239259269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259237259262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259239259269%_))
                                      ((lambda (_%g259233259272%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g259233259272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259238259266%_)
                                      (_%g259231259245%_ _%g259232259249%_))))
                              (_%g259231259245%_ _%g259232259249%_))))
                      (_%g259231259245%_ _%g259232259249%_)))))
          (_%g259230259286%_ _%$stx259227%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx259290%_)
        (let* ((_%g259294259316%_
                (lambda (_%g259295259312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259295259312%_))))
               (_%g259293259385%_
                (lambda (_%g259295259320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259295259320%_))
                      (let ((_%e259299259323%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259295259320%_))))
                        (let ((_%hd259300259327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259299259323%_)))
                              (_%tl259301259330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259299259323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259301259330%_))
                              (let ((_%e259302259333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259301259330%_))))
                                (let ((_%hd259303259337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259302259333%_)))
                                      (_%tl259304259340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259302259333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259304259340%_))
                                      (let ((_%e259305259343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259304259340%_))))
                                        (let ((_%hd259306259347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259305259343%_)))
                                              (_%tl259307259350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259305259343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259307259350%_))
                                              (let ((_%e259308259353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259307259350%_))))
                                                (let ((_%hd259309259357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259308259353%_)))
                                                      (_%tl259310259360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259308259353%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259310259360%_))
                                                      ((lambda (_%g259296259363%_
                                                                _%g259297259365%_
                                                                _%g259298259366%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259298259366%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g259297259365%_ '()))
                                   (cons _%g259296259363%_ '())))))
               _%hd259309259357%_
               _%hd259306259347%_
               _%hd259303259337%_)
              (_%g259294259316%_ _%g259295259320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259294259316%_
                                               _%g259295259320%_))))
                                      (_%g259294259316%_ _%g259295259320%_))))
                              (_%g259294259316%_ _%g259295259320%_))))
                      (_%g259294259316%_ _%g259295259320%_)))))
          (_%g259293259385%_ _%$stx259290%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx259389%_)
        (let* ((_%g259393259415%_
                (lambda (_%g259394259411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259394259411%_))))
               (_%g259392259484%_
                (lambda (_%g259394259419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259394259419%_))
                      (let ((_%e259398259422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259394259419%_))))
                        (let ((_%hd259399259426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259398259422%_)))
                              (_%tl259400259429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259398259422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259400259429%_))
                              (let ((_%e259401259432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259400259429%_))))
                                (let ((_%hd259402259436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259401259432%_)))
                                      (_%tl259403259439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259401259432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259403259439%_))
                                      (let ((_%e259404259442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259403259439%_))))
                                        (let ((_%hd259405259446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259404259442%_)))
                                              (_%tl259406259449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259404259442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259406259449%_))
                                              (let ((_%e259407259452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259406259449%_))))
                                                (let ((_%hd259408259456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259407259452%_)))
                                                      (_%tl259409259459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259407259452%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259409259459%_))
                                                      ((lambda (_%g259395259462%_
                                                                _%g259396259464%_
                                                                _%g259397259465%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259397259465%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g259396259464%_ '()))
                                   (cons _%g259395259462%_ '())))))
               _%hd259408259456%_
               _%hd259405259446%_
               _%hd259402259436%_)
              (_%g259393259415%_ _%g259394259419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259393259415%_
                                               _%g259394259419%_))))
                                      (_%g259393259415%_ _%g259394259419%_))))
                              (_%g259393259415%_ _%g259394259419%_))))
                      (_%g259393259415%_ _%g259394259419%_)))))
          (_%g259392259484%_ _%$stx259389%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx259488%_)
        (let* ((_%g259492259506%_
                (lambda (_%g259493259502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259493259502%_))))
               (_%g259491259547%_
                (lambda (_%g259493259510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259493259510%_))
                      (let ((_%e259495259513%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259493259510%_))))
                        (let ((_%hd259496259517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259495259513%_)))
                              (_%tl259497259520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259495259513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259497259520%_))
                              (let ((_%e259498259523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259497259520%_))))
                                (let ((_%hd259499259527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259498259523%_)))
                                      (_%tl259500259530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259498259523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259500259530%_))
                                      ((lambda (_%g259494259533%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g259494259533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259499259527%_)
                                      (_%g259492259506%_ _%g259493259510%_))))
                              (_%g259492259506%_ _%g259493259510%_))))
                      (_%g259492259506%_ _%g259493259510%_)))))
          (_%g259491259547%_ _%$stx259488%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx259551%_)
        (let* ((_%g259555259573%_
                (lambda (_%g259556259569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259556259569%_))))
               (_%g259554259628%_
                (lambda (_%g259556259577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259556259577%_))
                      (let ((_%e259559259580%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259556259577%_))))
                        (let ((_%hd259560259584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259559259580%_)))
                              (_%tl259561259587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259559259580%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259561259587%_))
                              (let ((_%e259562259590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259561259587%_))))
                                (let ((_%hd259563259594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259562259590%_)))
                                      (_%tl259564259597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259562259590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259564259597%_))
                                      (let ((_%e259565259600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259564259597%_))))
                                        (let ((_%hd259566259604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259565259600%_)))
                                              (_%tl259567259607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259565259600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259567259607%_))
                                              ((lambda (_%g259557259610%_
                                                        _%g259558259612%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259558259612%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259557259610%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259566259604%_
                                               _%hd259563259594%_)
                                              (_%g259555259573%_
                                               _%g259556259577%_))))
                                      (_%g259555259573%_ _%g259556259577%_))))
                              (_%g259555259573%_ _%g259556259577%_))))
                      (_%g259555259573%_ _%g259556259577%_)))))
          (_%g259554259628%_ _%$stx259551%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx259632%_)
        (let* ((_%__stx263948263949%_ _%$stx259632%_)
               (_%g259639259700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263948263949%_)))))
          (let ((_%__kont263951263952%_
                 (lambda (_%g259641259938%_ _%g259642259940%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259642259940%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259641259938%_ '()))
                                     '())))))
                (_%__kont263953263954%_
                 (lambda (_%g259652259877%_
                          _%g259653259879%_
                          _%g259654259880%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259654259880%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259653259879%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259652259877%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont263955263956%_
                 (lambda (_%g259671259801%_ _%g259672259803%_)
                   (cons _%g259672259803%_
                         (cons _%g259671259801%_ (cons '#f '())))))
                (_%__kont263957263958%_
                 (lambda (_%g259679259751%_
                          _%g259680259753%_
                          _%g259681259754%_)
                   (cons _%g259681259754%_
                         (cons _%g259680259753%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g259679259751%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx263948263949%_))
                (let ((_%e259643259908%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx263948263949%_))))
                  (let ((_%tl259645259915%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259643259908%_)))
                        (_%hd259644259912%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259643259908%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259645259915%_))
                        (let ((_%e259646259918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl259645259915%_))))
                          (let ((_%tl259648259925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259646259918%_)))
                                (_%hd259647259922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259646259918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259648259925%_))
                                (let ((_%e259649259928%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259648259925%_))))
                                  (let ((_%tl259651259935%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259649259928%_)))
                                        (_%hd259650259932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259649259928%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259651259935%_))
                                        (_%__kont263951263952%_
                                         _%hd259650259932%_
                                         _%hd259647259922%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259651259935%_))
                                            (let ((_%e259664259853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259651259935%_))))
                                              (let ((_%tl259666259860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259664259853%_)))
                                                    (_%hd259665259857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259664259853%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259665259857%_))
                                                    (let ((_%e259667259863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259665259857%_))))
                                                      (if (equal? _%e259667259863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl259666259860%_))
                      (let ((_%e259668259867%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl259666259860%_))))
                        (let ((_%tl259670259874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259668259867%_)))
                              (_%hd259669259871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259668259867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259670259874%_))
                              (_%__kont263953263954%_
                               _%hd259669259871%_
                               _%hd259650259932%_
                               _%hd259647259922%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd259650259932%_))
                                  (let ((_%e259691259737%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd259650259932%_))))
                                    (declare (not safe))
                                    (_%g259639259700%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g259639259700%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd259650259932%_))
                          (let ((_%e259691259737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259650259932%_))))
                            (if (equal? _%e259691259737%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl259666259860%_))
                                    (_%__kont263957263958%_
                                     _%hd259665259857%_
                                     _%hd259647259922%_
                                     _%hd259644259912%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g259639259700%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g259639259700%_))))
                          (let () (declare (not safe)) (_%g259639259700%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd259650259932%_))
                      (let ((_%e259691259737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd259650259932%_))))
                        (if (equal? _%e259691259737%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl259666259860%_))
                                (_%__kont263957263958%_
                                 _%hd259665259857%_
                                 _%hd259647259922%_
                                 _%hd259644259912%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g259639259700%_)))
                            (let () (declare (not safe)) (_%g259639259700%_))))
                      (let () (declare (not safe)) (_%g259639259700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd259650259932%_))
                                                        (let ((_%e259691259737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd259650259932%_))))
                  (if (equal? _%e259691259737%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259666259860%_))
                          (_%__kont263957263958%_
                           _%hd259665259857%_
                           _%hd259647259922%_
                           _%hd259644259912%_)
                          (let () (declare (not safe)) (_%g259639259700%_)))
                      (let () (declare (not safe)) (_%g259639259700%_))))
                (let () (declare (not safe)) (_%g259639259700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd259650259932%_))
                                                (let ((_%e259691259737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd259650259932%_))))
                                                  (declare (not safe))
                                                  (_%g259639259700%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259639259700%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl259648259925%_))
                                    (_%__kont263955263956%_
                                     _%hd259647259922%_
                                     _%hd259644259912%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g259639259700%_))))))
                        (let () (declare (not safe)) (_%g259639259700%_)))))
                (let () (declare (not safe)) (_%g259639259700%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx259959%_)
        (let* ((_%g259963259992%_
                (lambda (_%g259964259988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259964259988%_))))
               (_%g259962260097%_
                (lambda (_%g259964259996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259964259996%_))
                      (let ((_%e259966259999%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259964259996%_))))
                        (let ((_%hd259967260003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259966259999%_)))
                              (_%tl259968260006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259966259999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259968260006%_))
                              (let ((_g264578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259968260006%_
                                        '0))))
                                (begin
                                  (let ((_g264579_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264578_)
                                               (##values-length _g264578_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264579_ 2)))
                                        (error "Context expects 2 values"
                                               _g264579_)))
                                  (let ((_%target259969260009%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264578_ 0)))
                                        (_%tl259971260012%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264578_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259971260012%_))
                                        (letrec ((_%loop259972260015%_
                                                  (lambda (_%hd259970260019%_
                                                           _%clause259976260022%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259970260019%_))
                                                        (let ((_%e259973260024%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259970260019%_))))
                  (let ((_%lp-hd259974260028%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259973260024%_)))
                        (_%lp-tl259975260031%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259973260024%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd259974260028%_))
                        (let ((_g264580_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd259974260028%_
                                  '0))))
                          (begin
                            (let ((_g264581_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g264580_)
                                         (##values-length _g264580_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g264581_ 2)))
                                  (error "Context expects 2 values"
                                         _g264581_)))
                            (let ((_%target259978260034%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g264580_ 0)))
                                  (_%tl259980260037%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g264580_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259980260037%_))
                                  (letrec ((_%loop259981260040%_
                                            (lambda (_%hd259979260044%_
                                                     _%clause259985260047%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd259979260044%_))
                                                  (let ((_%e259982260049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd259979260044%_))))
                                                    (let ((_%lp-hd259983260053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259982260049%_)))
                                                          (_%lp-tl259984260056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259982260049%_))))
                                                      (_%loop259981260040%_
                                                       _%lp-tl259984260056%_
                                                       (cons _%lp-hd259983260053%_
                                                             _%clause259985260047%_))))
                                                  (let ((_%clause259986260059%_
                                                         (reverse _%clause259985260047%_)))
                                                    (_%loop259972260015%_
                                                     _%lp-tl259975260031%_
                                                     (cons _%clause259986260059%_
                                                           _%clause259976260022%_)))))))
                                    (_%loop259981260040%_
                                     _%target259978260034%_
                                     '()))
                                  (_%g259963259992%_ _%g259964259996%_)))))
                        (_%g259963259992%_ _%g259964259996%_))))
                (let ((_%clause259977260062%_
                       (reverse _%clause259976260022%_)))
                  ((lambda (_%g259965260065%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp264582
                                              (lambda (_%g260080260085%_
                                                       _%g260081260088%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp264583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g260082260091%_ _%g260083260094%_)
                             (cons _%g260082260091%_ _%g260083260094%_))))
                      (declare (not safe))
                      (foldr__0 __tmp264583 '() _%g260080260085%_)))
              _%g260081260088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp264582
                                          '()
                                          _%g259965260065%_)))
                                 '())))
                   _%clause259977260062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259972260015%_
                                           _%target259969260009%_
                                           '()))
                                        (_%g259963259992%_
                                         _%g259964259996%_)))))
                              (_%g259963259992%_ _%g259964259996%_))))
                      (_%g259963259992%_ _%g259964259996%_)))))
          (_%g259962260097%_ _%$stx259959%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx260103%_)
        (let* ((_%g260107260125%_
                (lambda (_%g260108260121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260108260121%_))))
               (_%g260106260180%_
                (lambda (_%g260108260129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260108260129%_))
                      (let ((_%e260111260132%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260108260129%_))))
                        (let ((_%hd260112260136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260111260132%_)))
                              (_%tl260113260139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260111260132%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260113260139%_))
                              (let ((_%e260114260142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260113260139%_))))
                                (let ((_%hd260115260146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260114260142%_)))
                                      (_%tl260116260149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260114260142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260116260149%_))
                                      (let ((_%e260117260152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260116260149%_))))
                                        (let ((_%hd260118260156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260117260152%_)))
                                              (_%tl260119260159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260117260152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260119260159%_))
                                              ((lambda (_%g260109260162%_
                                                        _%g260110260164%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260110260164%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260109260162%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260118260156%_
                                               _%hd260115260146%_)
                                              (_%g260107260125%_
                                               _%g260108260129%_))))
                                      (_%g260107260125%_ _%g260108260129%_))))
                              (_%g260107260125%_ _%g260108260129%_))))
                      (_%g260107260125%_ _%g260108260129%_)))))
          (_%g260106260180%_ _%$stx260103%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx260184%_)
        (let* ((_%g260188260206%_
                (lambda (_%g260189260202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260189260202%_))))
               (_%g260187260261%_
                (lambda (_%g260189260210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260189260210%_))
                      (let ((_%e260192260213%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260189260210%_))))
                        (let ((_%hd260193260217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260192260213%_)))
                              (_%tl260194260220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260192260213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260194260220%_))
                              (let ((_%e260195260223%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260194260220%_))))
                                (let ((_%hd260196260227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260195260223%_)))
                                      (_%tl260197260230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260195260223%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260197260230%_))
                                      (let ((_%e260198260233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260197260230%_))))
                                        (let ((_%hd260199260237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260198260233%_)))
                                              (_%tl260200260240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260198260233%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260200260240%_))
                                              ((lambda (_%g260190260243%_
                                                        _%g260191260245%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260191260245%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260190260243%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260199260237%_
                                               _%hd260196260227%_)
                                              (_%g260188260206%_
                                               _%g260189260210%_))))
                                      (_%g260188260206%_ _%g260189260210%_))))
                              (_%g260188260206%_ _%g260189260210%_))))
                      (_%g260188260206%_ _%g260189260210%_)))))
          (_%g260187260261%_ _%$stx260184%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx260265%_)
        (let* ((_%g260269260298%_
                (lambda (_%g260270260294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260270260294%_))))
               (_%g260268260394%_
                (lambda (_%g260270260302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260270260302%_))
                      (let ((_%e260273260305%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260270260302%_))))
                        (let ((_%hd260274260309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260273260305%_)))
                              (_%tl260275260312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260273260305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260275260312%_))
                              (let ((_g264584_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260275260312%_
                                        '0))))
                                (begin
                                  (let ((_g264585_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264584_)
                                               (##values-length _g264584_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264585_ 2)))
                                        (error "Context expects 2 values"
                                               _g264585_)))
                                  (let ((_%target260276260315%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264584_ 0)))
                                        (_%tl260278260318%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264584_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260278260318%_))
                                        (letrec ((_%loop260279260321%_
                                                  (lambda (_%hd260277260325%_
                                                           _%rule260283260328%_
                                                           _%proc260284260329%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260277260325%_))
                                                        (let ((_%e260280260331%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260277260325%_))))
                  (let ((_%lp-hd260281260335%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260280260331%_)))
                        (_%lp-tl260282260338%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260280260331%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260281260335%_))
                        (let ((_%e260287260341%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260281260335%_))))
                          (let ((_%hd260288260345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260287260341%_)))
                                (_%tl260289260348%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260287260341%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260289260348%_))
                                (let ((_%e260290260351%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260289260348%_))))
                                  (let ((_%hd260291260355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260290260351%_)))
                                        (_%tl260292260358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260290260351%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260292260358%_))
                                        (_%loop260279260321%_
                                         _%lp-tl260282260338%_
                                         (cons _%hd260291260355%_
                                               _%rule260283260328%_)
                                         (cons _%hd260288260345%_
                                               _%proc260284260329%_))
                                        (_%g260269260298%_
                                         _%g260270260302%_))))
                                (_%g260269260298%_ _%g260270260302%_))))
                        (_%g260269260298%_ _%g260270260302%_))))
                (let ((_%rule260285260361%_ (reverse _%rule260283260328%_))
                      (_%proc260286260363%_ (reverse _%proc260284260329%_)))
                  ((lambda (_%g260271260365%_ _%g260272260367%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260271260365%_
                                _%g260272260367%_))
                             (let ((__tmp264586
                                    (lambda (_%g260382260386%_
                                             _%g260383260389%_
                                             _%g260384260391%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g260383260389%_
                                                        (cons _%g260382260386%_
                                                              '())))
                                            _%g260384260391%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp264586
                                '()
                                _%g260271260365%_
                                _%g260272260367%_)))))
                   _%rule260285260361%_
                   _%proc260286260363%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260279260321%_
                                           _%target260276260315%_
                                           '()
                                           '()))
                                        (_%g260269260298%_
                                         _%g260270260302%_)))))
                              (_%g260269260298%_ _%g260270260302%_))))
                      (_%g260269260298%_ _%g260270260302%_)))))
          (_%g260268260394%_ _%$stx260265%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx260399%_)
        (let* ((_%g260403260421%_
                (lambda (_%g260404260417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260404260417%_))))
               (_%g260402260476%_
                (lambda (_%g260404260425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260404260425%_))
                      (let ((_%e260407260428%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260404260425%_))))
                        (let ((_%hd260408260432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260407260428%_)))
                              (_%tl260409260435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260407260428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260409260435%_))
                              (let ((_%e260410260438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260409260435%_))))
                                (let ((_%hd260411260442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260410260438%_)))
                                      (_%tl260412260445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260410260438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260412260445%_))
                                      (let ((_%e260413260448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260412260445%_))))
                                        (let ((_%hd260414260452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260413260448%_)))
                                              (_%tl260415260455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260413260448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260415260455%_))
                                              ((lambda (_%g260405260458%_
                                                        _%g260406260460%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g260406260460%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g260405260458%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g260406260460%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260414260452%_
                                               _%hd260411260442%_)
                                              (_%g260403260421%_
                                               _%g260404260425%_))))
                                      (_%g260403260421%_ _%g260404260425%_))))
                              (_%g260403260421%_ _%g260404260425%_))))
                      (_%g260403260421%_ _%g260404260425%_)))))
          (_%g260402260476%_ _%$stx260399%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx260480%_)
        (let* ((_%__stx264066264067%_ _%$stx260480%_)
               (_%g260485260510%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264066264067%_)))))
          (let ((_%__kont264069264070%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont264071264072%_
                 (lambda (_%g260490260557%_
                          _%g260491260559%_
                          _%g260492260560%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g260492260560%_
                                           (cons _%g260491260559%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g260490260557%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264066264067%_))
                (let ((_%e260487260586%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx264066264067%_))))
                  (let ((_%tl260489260593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260487260586%_)))
                        (_%hd260488260590%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260487260586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl260489260593%_))
                        (_%__kont264069264070%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260489260593%_))
                            (let ((_%e260496260527%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl260489260593%_))))
                              (let ((_%tl260498260534%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260496260527%_)))
                                    (_%hd260497260531%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260496260527%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd260497260531%_))
                                    (let ((_%e260499260537%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd260497260531%_))))
                                      (let ((_%tl260501260544%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e260499260537%_)))
                                            (_%hd260500260541%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e260499260537%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl260501260544%_))
                                            (let ((_%e260502260547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl260501260544%_))))
                                              (let ((_%tl260504260554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e260502260547%_)))
                                                    (_%hd260503260551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e260502260547%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl260504260554%_))
                                                    (_%__kont264071264072%_
                                                     _%tl260498260534%_
                                                     _%hd260503260551%_
                                                     _%hd260500260541%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g260485260510%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g260485260510%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g260485260510%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g260485260510%_))))))
                (let () (declare (not safe)) (_%g260485260510%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx260604%_)
        (let* ((_%__stx264110264111%_ _%$stx260604%_)
               (_%g260609260640%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264110264111%_)))))
          (let ((_%__kont264113264114%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont264115264116%_
                 (lambda (_%g260614260705%_
                          _%g260615260707%_
                          _%g260616260708%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g260616260708%_
                                           (let ((__tmp264587
                                                  (lambda (_%g260728260731%_
                                                           _%g260729260734%_)
                                                    (cons _%g260728260731%_
                                                          _%g260729260734%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp264587
                                              '()
                                              _%g260615260707%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g260614260705%_)
                                     '()))))))
            (let ((_%__match264153264154%_
                   (lambda (_%e260617260647%_
                            _%hd260618260651%_
                            _%tl260619260654%_
                            _%e260620260657%_
                            _%hd260621260661%_
                            _%tl260622260664%_
                            _%e260623260667%_
                            _%hd260624260671%_
                            _%tl260625260674%_
                            _%__splice264117264118%_
                            _%target260626260677%_
                            _%tl260628260680%_)
                     (letrec ((_%loop260629260683%_
                               (lambda (_%hd260627260687%_ _%sig260633260690%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd260627260687%_))
                                     (let ((_%e260630260692%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd260627260687%_))))
                                       (let ((_%lp-tl260632260699%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e260630260692%_)))
                                             (_%lp-hd260631260696%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e260630260692%_))))
                                         (_%loop260629260683%_
                                          _%lp-tl260632260699%_
                                          (cons _%lp-hd260631260696%_
                                                _%sig260633260690%_))))
                                     (let ((_%sig260634260702%_
                                            (reverse _%sig260633260690%_)))
                                       (_%__kont264115264116%_
                                        _%tl260622260664%_
                                        _%sig260634260702%_
                                        _%hd260624260671%_))))))
                       (_%loop260629260683%_ _%target260626260677%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264110264111%_))
                  (let ((_%e260611260744%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264110264111%_))))
                    (let ((_%tl260613260751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260611260744%_)))
                          (_%hd260612260748%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260611260744%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260613260751%_))
                          (_%__kont264113264114%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260613260751%_))
                              (let ((_%e260620260657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260613260751%_))))
                                (let ((_%tl260622260664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260620260657%_)))
                                      (_%hd260621260661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260620260657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260621260661%_))
                                      (let ((_%e260623260667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260621260661%_))))
                                        (let ((_%tl260625260674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260623260667%_)))
                                              (_%hd260624260671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260623260667%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl260625260674%_))
                                              (let ((_%__splice264117264118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl260625260674%_
                                                        '0))))
                                                (let ((_%tl260628260680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264117264118%_
                                                          '1)))
                                                      (_%target260626260677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264117264118%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260628260680%_))
                                                      (_%__match264153264154%_
                                                       _%e260611260744%_
                                                       _%hd260612260748%_
                                                       _%tl260613260751%_
                                                       _%e260620260657%_
                                                       _%hd260621260661%_
                                                       _%tl260622260664%_
                                                       _%e260623260667%_
                                                       _%hd260624260671%_
                                                       _%tl260625260674%_
                                                       _%__splice264117264118%_
                                                       _%target260626260677%_
                                                       _%tl260628260680%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260609260640%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g260609260640%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260609260640%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g260609260640%_))))))
                  (let () (declare (not safe)) (_%g260609260640%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx260763%_)
        (let* ((_%__stx264156264157%_ _%$stx260763%_)
               (_%g260768260815%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264156264157%_)))))
          (let ((_%__kont264159264160%_
                 (lambda (_%g260770260973%_ _%g260771260975%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g260771260975%_
                               (let ((__tmp264588
                                      (lambda (_%g260995260998%_
                                               _%g260996261001%_)
                                        (cons _%g260995260998%_
                                              _%g260996261001%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp264588
                                  '()
                                  _%g260770260973%_))))))
                (_%__kont264163264164%_
                 (lambda (_%g260793260870%_ _%g260794260872%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g260794260872%_
                               (let ((__tmp264589
                                      (lambda (_%g260889260892%_
                                               _%g260890260895%_)
                                        (cons _%g260889260892%_
                                              _%g260890260895%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp264589
                                  '()
                                  _%g260793260870%_)))))))
            (let* ((_%__match264223264224%_
                    (lambda (_%e260795260822%_
                             _%hd260796260826%_
                             _%tl260797260829%_
                             _%e260798260832%_
                             _%hd260799260836%_
                             _%tl260800260839%_
                             _%__splice264165264166%_
                             _%target260801260842%_
                             _%tl260803260845%_)
                      (letrec ((_%loop260804260848%_
                                (lambda (_%hd260802260852%_
                                         _%sig260808260855%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260802260852%_))
                                      (let ((_%e260805260857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260802260852%_))))
                                        (let ((_%lp-tl260807260864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260805260857%_)))
                                              (_%lp-hd260806260861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260805260857%_))))
                                          (_%loop260804260848%_
                                           _%lp-tl260807260864%_
                                           (cons _%lp-hd260806260861%_
                                                 _%sig260808260855%_))))
                                      (let ((_%sig260809260867%_
                                             (reverse _%sig260808260855%_)))
                                        (_%__kont264163264164%_
                                         _%sig260809260867%_
                                         _%hd260799260836%_))))))
                        (_%loop260804260848%_ _%target260801260842%_ '()))))
                   (_%__match264215264216%_
                    (lambda (_%e260795260822%_
                             _%hd260796260826%_
                             _%tl260797260829%_
                             _%e260798260832%_
                             _%hd260799260836%_
                             _%tl260800260839%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl260800260839%_))
                          (let ((_%__splice264165264166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl260800260839%_
                                    '0))))
                            (let ((_%tl260803260845%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264165264166%_
                                      '1)))
                                  (_%target260801260842%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264165264166%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260803260845%_))
                                  (_%__match264223264224%_
                                   _%e260795260822%_
                                   _%hd260796260826%_
                                   _%tl260797260829%_
                                   _%e260798260832%_
                                   _%hd260799260836%_
                                   _%tl260800260839%_
                                   _%__splice264165264166%_
                                   _%target260801260842%_
                                   _%tl260803260845%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g260768260815%_)))))
                          (let () (declare (not safe)) (_%g260768260815%_)))))
                   (_%__match264203264204%_
                    (lambda (_%e260772260905%_
                             _%hd260773260909%_
                             _%tl260774260912%_
                             _%e260775260915%_
                             _%hd260776260919%_
                             _%tl260777260922%_
                             _%e260778260925%_
                             _%hd260779260929%_
                             _%tl260780260932%_
                             _%e260781260935%_
                             _%hd260782260939%_
                             _%tl260783260942%_
                             _%__splice264161264162%_
                             _%target260784260945%_
                             _%tl260786260948%_)
                      (letrec ((_%loop260787260951%_
                                (lambda (_%hd260785260955%_
                                         _%sig260791260958%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260785260955%_))
                                      (let ((_%e260788260960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260785260955%_))))
                                        (let ((_%lp-tl260790260967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260788260960%_)))
                                              (_%lp-hd260789260964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260788260960%_))))
                                          (_%loop260787260951%_
                                           _%lp-tl260790260967%_
                                           (cons _%lp-hd260789260964%_
                                                 _%sig260791260958%_))))
                                      (let ((_%sig260792260970%_
                                             (reverse _%sig260791260958%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl260780260932%_))
                                            (_%__kont264159264160%_
                                             _%sig260792260970%_
                                             _%hd260776260919%_)
                                            (_%__match264215264216%_
                                             _%e260772260905%_
                                             _%hd260773260909%_
                                             _%tl260774260912%_
                                             _%e260775260915%_
                                             _%hd260776260919%_
                                             _%tl260777260922%_)))))))
                        (_%loop260787260951%_ _%target260784260945%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264156264157%_))
                  (let ((_%e260772260905%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264156264157%_))))
                    (let ((_%tl260774260912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260772260905%_)))
                          (_%hd260773260909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260772260905%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260774260912%_))
                          (let ((_%e260775260915%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260774260912%_))))
                            (let ((_%tl260777260922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260775260915%_)))
                                  (_%hd260776260919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260775260915%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260777260922%_))
                                  (let ((_%e260778260925%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260777260922%_))))
                                    (let ((_%tl260780260932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260778260925%_)))
                                          (_%hd260779260929%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260778260925%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd260779260929%_))
                                          (let ((_%e260781260935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd260779260929%_))))
                                            (let ((_%tl260783260942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260781260935%_)))
                                                  (_%hd260782260939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260781260935%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd260782260939%_))
                                                  (if (let ((__tmp264590
                                                             |gxc[1]#_g264591_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp264590
                                                         _%hd260782260939%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl260783260942%_))
                                                          (let ((_%__splice264161264162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl260783260942%_
                            '0))))
                    (let ((_%tl260786260948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264161264162%_ '1)))
                          (_%target260784260945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264161264162%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260786260948%_))
                          (_%__match264203264204%_
                           _%e260772260905%_
                           _%hd260773260909%_
                           _%tl260774260912%_
                           _%e260775260915%_
                           _%hd260776260919%_
                           _%tl260777260922%_
                           _%e260778260925%_
                           _%hd260779260929%_
                           _%tl260780260932%_
                           _%e260781260935%_
                           _%hd260782260939%_
                           _%tl260783260942%_
                           _%__splice264161264162%_
                           _%target260784260945%_
                           _%tl260786260948%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260777260922%_))
                              (let ((_%__splice264165264166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl260777260922%_
                                        '0))))
                                (let ((_%tl260803260845%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice264165264166%_
                                          '1)))
                                      (_%target260801260842%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice264165264166%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260803260845%_))
                                      (_%__match264223264224%_
                                       _%e260772260905%_
                                       _%hd260773260909%_
                                       _%tl260774260912%_
                                       _%e260775260915%_
                                       _%hd260776260919%_
                                       _%tl260777260922%_
                                       _%__splice264165264166%_
                                       _%target260801260842%_
                                       _%tl260803260845%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g260768260815%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g260768260815%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl260777260922%_))
                      (let ((_%__splice264165264166%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl260777260922%_
                                '0))))
                        (let ((_%tl260803260845%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264165264166%_ '1)))
                              (_%target260801260842%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264165264166%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl260803260845%_))
                              (_%__match264223264224%_
                               _%e260772260905%_
                               _%hd260773260909%_
                               _%tl260774260912%_
                               _%e260775260915%_
                               _%hd260776260919%_
                               _%tl260777260922%_
                               _%__splice264165264166%_
                               _%target260801260842%_
                               _%tl260803260845%_)
                              (let ()
                                (declare (not safe))
                                (_%g260768260815%_)))))
                      (let () (declare (not safe)) (_%g260768260815%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl260777260922%_))
                  (let ((_%__splice264165264166%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl260777260922%_
                            '0))))
                    (let ((_%tl260803260845%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264165264166%_ '1)))
                          (_%target260801260842%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264165264166%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260803260845%_))
                          (_%__match264223264224%_
                           _%e260772260905%_
                           _%hd260773260909%_
                           _%tl260774260912%_
                           _%e260775260915%_
                           _%hd260776260919%_
                           _%tl260777260922%_
                           _%__splice264165264166%_
                           _%target260801260842%_
                           _%tl260803260845%_)
                          (let () (declare (not safe)) (_%g260768260815%_)))))
                  (let () (declare (not safe)) (_%g260768260815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl260777260922%_))
                                                      (let ((_%__splice264165264166%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl260777260922%_
                        '0))))
                (let ((_%tl260803260845%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264165264166%_ '1)))
                      (_%target260801260842%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264165264166%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl260803260845%_))
                      (_%__match264223264224%_
                       _%e260772260905%_
                       _%hd260773260909%_
                       _%tl260774260912%_
                       _%e260775260915%_
                       _%hd260776260919%_
                       _%tl260777260922%_
                       _%__splice264165264166%_
                       _%target260801260842%_
                       _%tl260803260845%_)
                      (let () (declare (not safe)) (_%g260768260815%_)))))
              (let () (declare (not safe)) (_%g260768260815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl260777260922%_))
                                              (let ((_%__splice264165264166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl260777260922%_
                                                        '0))))
                                                (let ((_%tl260803260845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264165264166%_
                                                          '1)))
                                                      (_%target260801260842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264165264166%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260803260845%_))
                                                      (_%__match264223264224%_
                                                       _%e260772260905%_
                                                       _%hd260773260909%_
                                                       _%tl260774260912%_
                                                       _%e260775260915%_
                                                       _%hd260776260919%_
                                                       _%tl260777260922%_
                                                       _%__splice264165264166%_
                                                       _%target260801260842%_
                                                       _%tl260803260845%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260768260815%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g260768260815%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260777260922%_))
                                      (let ((_%__splice264165264166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl260777260922%_
                                                '0))))
                                        (let ((_%tl260803260845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264165264166%_
                                                  '1)))
                                              (_%target260801260842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264165264166%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260803260845%_))
                                              (_%__match264223264224%_
                                               _%e260772260905%_
                                               _%hd260773260909%_
                                               _%tl260774260912%_
                                               _%e260775260915%_
                                               _%hd260776260919%_
                                               _%tl260777260922%_
                                               _%__splice264165264166%_
                                               _%target260801260842%_
                                               _%tl260803260845%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g260768260815%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260768260815%_))))))
                          (let () (declare (not safe)) (_%g260768260815%_)))))
                  (let () (declare (not safe)) (_%g260768260815%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx262158%_ _%id262160%_)
        (let ((_%proc262164%_
               (let ((__tmp264592
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id262160%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp264592))))
          (if (procedure? _%proc262164%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx262158%_
                 _%id262160%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx262149%_ _%id262151%_)
        (let ((_%klass262155%_
               (let ((__tmp264593
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id262151%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp264593))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass262155%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx262149%_
                 _%id262151%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx261399%_ _%proc261401%_ _%sig261402%_)
        (letrec ((_%signature-arity261404%_
                  (lambda (_%args262081%_)
                    (let _%loop262084%_ ((_%rest262087%_ _%args262081%_)
                                         (_%count262089%_ '0))
                      (let* ((_%rest262090262101%_ _%rest262087%_)
                             (_%E262094262107%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest262090262101%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K262097262138%_
                               (lambda (_%rest262135%_)
                                 (_%loop262084%_
                                  _%rest262135%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count262089%_ '1)))))
                              (_%K262096262127%_ (lambda () _%count262089%_))
                              (_%K262095262115%_
                               (lambda () (cons _%count262089%_ '()))))
                          (let ((_%try-match262092262131%_
                                 (lambda ()
                                   (if (null? _%rest262090262101%_)
                                       (_%K262096262127%_)
                                       (_%K262095262115%_)))))
                            (if (pair? _%rest262090262101%_)
                                (let* ((_%tl262099262142%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest262090262101%_)))
                                       (_%rest262146%_ _%tl262099262142%_))
                                  (_%K262097262138%_ _%rest262146%_))
                                (_%try-match262092262131%_))))))))
                 (_%make-signature261406%_
                  (lambda (_%args261963%_
                           _%return261965%_
                           _%effect261966%_
                           _%unchecked261967%_)
                    (let ((__tmp264594
                           (lambda (_%g261968261970%_)
                             (|gxc[1]#verify-class!|
                              _%ctx261399%_
                              _%g261968261970%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp264594 _%args261963%_))
                    (|gxc[1]#verify-class!| _%ctx261399%_ _%return261965%_)
                    (if _%unchecked261967%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx261399%_
                         _%unchecked261967%_)
                        '#!void)
                    (let ((_%arity261974%_
                           (_%signature-arity261404%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args261963%_)))))
                      (if _%effect261966%_
                          (let ((_%effect261977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect261966%_))))
                            (if (and (list? _%effect261977%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect261977%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx261399%_
                                   _%proc261401%_
                                   _%effect261977%_))))
                          '#!void)
                      (cons _%arity261974%_
                            (cons (let* ((_%g261980262003%_
                                          (lambda (_%g261981261999%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g261981261999%_))))
                                         (_%g261979262077%_
                                          (lambda (_%g261981262007%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g261981262007%_))
                                                (let ((_%e261986262010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g261981262007%_))))
                                                  (let ((_%hd261987262014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261986262010%_)))
                                                        (_%tl261988262017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261986262010%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl261988262017%_))
                                                        (let ((_%e261989262020%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl261988262017%_))))
                  (let ((_%hd261990262024%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261989262020%_)))
                        (_%tl261991262027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261989262020%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261991262027%_))
                        (let ((_%e261992262030%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261991262027%_))))
                          (let ((_%hd261993262034%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261992262030%_)))
                                (_%tl261994262037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261992262030%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261994262037%_))
                                (let ((_%e261995262040%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261994262037%_))))
                                  (let ((_%hd261996262044%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261995262040%_)))
                                        (_%tl261997262047%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261995262040%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261997262047%_))
                                        ((lambda (_%g261982262050%_
                                                  _%g261983262052%_
                                                  _%g261984262053%_
                                                  _%g261985262054%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261985262054%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261984262053%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g261983262052%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g261982262050%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd261996262044%_
                                         _%hd261993262034%_
                                         _%hd261990262024%_
                                         _%hd261987262014%_)
                                        (_%g261980262003%_
                                         _%g261981262007%_))))
                                (_%g261980262003%_ _%g261981262007%_))))
                        (_%g261980262003%_ _%g261981262007%_))))
                (_%g261980262003%_ _%g261981262007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261980262003%_
                                                 _%g261981262007%_)))))
                                    (_%g261979262077%_
                                     (list _%args261963%_
                                           _%return261965%_
                                           _%effect261966%_
                                           _%unchecked261967%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx261399%_ _%proc261401%_)
          (let* ((_%__stx264234264235%_ _%sig261402%_)
                 (_%g261413261516%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx264234264235%_)))))
            (let ((_%__kont264237264238%_
                   (lambda (_%g261415261944%_ _%g261416261946%_)
                     (_%make-signature261406%_
                      _%g261416261946%_
                      _%g261415261944%_
                      '#f
                      '#f)))
                  (_%__kont264239264240%_
                   (lambda (_%g261423261895%_
                            _%g261424261897%_
                            _%g261425261898%_)
                     (_%make-signature261406%_
                      _%g261425261898%_
                      _%g261424261897%_
                      _%g261423261895%_
                      '#f)))
                  (_%__kont264241264242%_
                   (lambda (_%g261439261819%_
                            _%g261440261821%_
                            _%g261441261822%_)
                     (_%make-signature261406%_
                      _%g261441261822%_
                      _%g261440261821%_
                      _%g261439261819%_
                      (let ((__tmp264595
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc261401%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp264595)))))
                  (_%__kont264243264244%_
                   (lambda (_%g261459261725%_
                            _%g261460261727%_
                            _%g261461261728%_
                            _%g261462261729%_)
                     (_%make-signature261406%_
                      _%g261462261729%_
                      _%g261461261728%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g261459261725%_)))))
                  (_%__kont264245264246%_
                   (lambda (_%g261483261632%_ _%g261484261634%_)
                     (_%make-signature261406%_
                      _%g261484261634%_
                      _%g261483261632%_
                      '#f
                      (let ((__tmp264596
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc261401%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp264596)))))
                  (_%__kont264247264248%_
                   (lambda (_%g261495261567%_
                            _%g261496261569%_
                            _%g261497261570%_)
                     (_%make-signature261406%_
                      _%g261497261570%_
                      _%g261496261569%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g261495261567%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264234264235%_))
                  (let ((_%e261417261924%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264234264235%_))))
                    (let ((_%tl261419261931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261417261924%_)))
                          (_%hd261418261928%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261417261924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261419261931%_))
                          (let ((_%e261420261934%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261419261931%_))))
                            (let ((_%tl261422261941%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261420261934%_)))
                                  (_%hd261421261938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261420261934%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261422261941%_))
                                  (_%__kont264237264238%_
                                   _%hd261421261938%_
                                   _%hd261418261928%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261422261941%_))
                                      (let ((_%e261432261871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261422261941%_))))
                                        (let ((_%tl261434261878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261432261871%_)))
                                              (_%hd261433261875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261432261871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd261433261875%_))
                                              (let ((_%e261435261881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd261433261875%_))))
                                                (if (equal? _%e261435261881%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl261434261878%_))
                                                        (let ((_%e261436261885%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl261434261878%_))))
                  (let ((_%tl261438261892%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261436261885%_)))
                        (_%hd261437261889%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261436261885%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl261438261892%_))
                        (_%__kont264239264240%_
                         _%hd261437261889%_
                         _%hd261421261938%_
                         _%hd261418261928%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261438261892%_))
                            (let ((_%e261455261805%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261438261892%_))))
                              (let ((_%tl261457261812%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261455261805%_)))
                                    (_%hd261456261809%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261455261805%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd261456261809%_))
                                    (let ((_%e261458261815%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd261456261809%_))))
                                      (if (equal? _%e261458261815%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261457261812%_))
                                              (_%__kont264241264242%_
                                               _%hd261437261889%_
                                               _%hd261421261938%_
                                               _%hd261418261928%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261457261812%_))
                                                  (let ((_%e261480261715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261457261812%_))))
                                                    (let ((_%tl261482261722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261480261715%_)))
                                                          (_%hd261481261719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261480261715%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl261482261722%_))
                                                          (_%__kont264243264244%_
                                                           _%hd261481261719%_
                                                           _%hd261437261889%_
                                                           _%hd261421261938%_
                                                           _%hd261418261928%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g261413261516%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g261413261516%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g261413261516%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g261413261516%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g261413261516%_))))))
                (let () (declare (not safe)) (_%g261413261516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e261435261881%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl261434261878%_))
                                                            (_%__kont264245264246%_
                                                             _%hd261421261938%_
                                                             _%hd261418261928%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl261434261878%_))
                        (let ((_%e261508261557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261434261878%_))))
                          (let ((_%tl261510261564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261508261557%_)))
                                (_%hd261509261561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261508261557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl261510261564%_))
                                (_%__kont264247264248%_
                                 _%hd261509261561%_
                                 _%hd261421261938%_
                                 _%hd261418261928%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g261413261516%_)))))
                        (let () (declare (not safe)) (_%g261413261516%_))))
                (let () (declare (not safe)) (_%g261413261516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g261413261516%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g261413261516%_))))))
                          (let () (declare (not safe)) (_%g261413261516%_)))))
                  (let () (declare (not safe)) (_%g261413261516%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig261010%_)
        (let* ((_%g261013261093%_
                (lambda (_%g261014261089%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261014261089%_))))
               (_%g261012261395%_
                (lambda (_%g261014261097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261014261097%_))
                      (let ((_%e261020261100%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261014261097%_))))
                        (let ((_%hd261021261104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261020261100%_)))
                              (_%tl261022261107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261020261100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261022261107%_))
                              (let ((_%e261023261110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261022261107%_))))
                                (let ((_%hd261024261114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261023261110%_)))
                                      (_%tl261025261117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261023261110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd261024261114%_))
                                      (let ((_%e261026261120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd261024261114%_))))
                                        (if (equal? _%e261026261120%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl261025261117%_))
                                                (let ((_%e261027261124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl261025261117%_))))
                                                  (let ((_%hd261028261128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261027261124%_)))
                                                        (_%tl261029261131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261027261124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261028261128%_))
                                                        (let ((_%e261030261134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261028261128%_))))
                  (let ((_%hd261031261138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261030261134%_)))
                        (_%tl261032261141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261030261134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd261031261138%_))
                        (if (let ((__tmp264597 |gxc[1]#_g264598_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp264597
                               _%hd261031261138%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261032261141%_))
                                (let ((_%e261033261144%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261032261141%_))))
                                  (let ((_%hd261034261148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261033261144%_)))
                                        (_%tl261035261151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261033261144%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261035261151%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261029261131%_))
                                            (let ((_%e261036261154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261029261131%_))))
                                              (let ((_%hd261037261158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261036261154%_)))
                                                    (_%tl261038261161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261036261154%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd261037261158%_))
                                                    (let ((_%e261039261164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd261037261158%_))))
                                                      (if (equal? _%e261039261164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261038261161%_))
                      (let ((_%e261040261168%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261038261161%_))))
                        (let ((_%hd261041261172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261040261168%_)))
                              (_%tl261042261175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261040261168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd261041261172%_))
                              (let ((_%e261043261178%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd261041261172%_))))
                                (let ((_%hd261044261182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261043261178%_)))
                                      (_%tl261045261185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261043261178%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd261044261182%_))
                                      (if (let ((__tmp264599
                                                 |gxc[1]#_g264600_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp264599
                                             _%hd261044261182%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261045261185%_))
                                              (let ((_%e261046261188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261045261185%_))))
                                                (let ((_%hd261047261192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261046261188%_)))
                                                      (_%tl261048261195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261046261188%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261048261195%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl261042261175%_))
                                                          (let ((_%e261049261198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl261042261175%_))))
                    (let ((_%hd261050261202%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261049261198%_)))
                          (_%tl261051261205%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261049261198%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd261050261202%_))
                          (let ((_%e261052261208%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd261050261202%_))))
                            (if (equal? _%e261052261208%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl261051261205%_))
                                    (let ((_%e261053261212%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl261051261205%_))))
                                      (let ((_%hd261054261216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e261053261212%_)))
                                            (_%tl261055261219%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e261053261212%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd261054261216%_))
                                            (let ((_%e261056261222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd261054261216%_))))
                                              (let ((_%hd261057261226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261056261222%_)))
                                                    (_%tl261058261229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261056261222%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd261057261226%_))
                                                    (if (let ((__tmp264601
                                                               |gxc[1]#_g264602_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp264601
                                                           _%hd261057261226%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl261058261229%_))
                                                            (let ((_%e261059261232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl261058261229%_))))
                      (let ((_%hd261060261236%_
                             (let ()
                               (declare (not safe))
                               (##car _%e261059261232%_)))
                            (_%tl261061261239%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e261059261232%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl261061261239%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261055261219%_))
                                (let ((_%e261062261242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261055261219%_))))
                                  (let ((_%hd261063261246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261062261242%_)))
                                        (_%tl261064261249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261062261242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd261063261246%_))
                                        (let ((_%e261065261252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd261063261246%_))))
                                          (if (equal? _%e261065261252%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261064261249%_))
                                                  (let ((_%e261066261256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261064261249%_))))
                                                    (let ((_%hd261067261260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261066261256%_)))
                                                          (_%tl261068261263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261066261256%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd261067261260%_))
                                                          (let ((_%e261069261266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd261067261260%_))))
                    (let ((_%hd261070261270%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261069261266%_)))
                          (_%tl261071261273%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261069261266%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd261070261270%_))
                          (if (let ((__tmp264603 |gxc[1]#_g264604_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp264603
                                 _%hd261070261270%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261071261273%_))
                                  (let ((_%e261072261276%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl261071261273%_))))
                                    (let ((_%hd261073261280%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261072261276%_)))
                                          (_%tl261074261283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261072261276%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl261074261283%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261068261263%_))
                                              (let ((_%e261075261286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261068261263%_))))
                                                (let ((_%hd261076261290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261075261286%_)))
                                                      (_%tl261077261293%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261075261286%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd261076261290%_))
                                                      (let ((_%e261078261296%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd261076261290%_))))
                (if (equal? _%e261078261296%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261077261293%_))
                        (let ((_%e261079261300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261077261293%_))))
                          (let ((_%hd261080261304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261079261300%_)))
                                (_%tl261081261307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261079261300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd261080261304%_))
                                (let ((_%e261082261310%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd261080261304%_))))
                                  (let ((_%hd261083261314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261082261310%_)))
                                        (_%tl261084261317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261082261310%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd261083261314%_))
                                        (if (let ((__tmp264605
                                                   |gxc[1]#_g264606_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp264605
                                               _%hd261083261314%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl261084261317%_))
                                                (let ((_%e261085261320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl261084261317%_))))
                                                  (let ((_%hd261086261324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261085261320%_)))
                                                        (_%tl261087261327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261085261320%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl261087261327%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl261081261307%_))
                                                            ((lambda (_%g261015261330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g261016261332%_
                              _%g261017261333%_
                              _%g261018261334%_
                              _%g261019261335%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g261016261332%_))
                           (cons _%g261016261332%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g261018261334%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261015261330%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd261086261324%_
                     _%hd261073261280%_
                     _%hd261060261236%_
                     _%hd261047261192%_
                     _%hd261034261148%_)
                    (_%g261013261093%_ _%g261014261097%_))
                (_%g261013261093%_ _%g261014261097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261013261093%_
                                                 _%g261014261097%_))
                                            (_%g261013261093%_
                                             _%g261014261097%_))
                                        (_%g261013261093%_
                                         _%g261014261097%_))))
                                (_%g261013261093%_ _%g261014261097%_))))
                        (_%g261013261093%_ _%g261014261097%_))
                    (_%g261013261093%_ _%g261014261097%_)))
              (_%g261013261093%_ _%g261014261097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261013261093%_
                                               _%g261014261097%_))
                                          (_%g261013261093%_
                                           _%g261014261097%_))))
                                  (_%g261013261093%_ _%g261014261097%_))
                              (_%g261013261093%_ _%g261014261097%_))
                          (_%g261013261093%_ _%g261014261097%_))))
                  (_%g261013261093%_ _%g261014261097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g261013261093%_
                                                   _%g261014261097%_))
                                              (_%g261013261093%_
                                               _%g261014261097%_)))
                                        (_%g261013261093%_
                                         _%g261014261097%_))))
                                (_%g261013261093%_ _%g261014261097%_))
                            (_%g261013261093%_ _%g261014261097%_))))
                    (_%g261013261093%_ _%g261014261097%_))
                (_%g261013261093%_ _%g261014261097%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g261013261093%_
                                                     _%g261014261097%_))))
                                            (_%g261013261093%_
                                             _%g261014261097%_))))
                                    (_%g261013261093%_ _%g261014261097%_))
                                (_%g261013261093%_ _%g261014261097%_)))
                          (_%g261013261093%_ _%g261014261097%_))))
                  (_%g261013261093%_ _%g261014261097%_))
              (_%g261013261093%_ _%g261014261097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261013261093%_
                                               _%g261014261097%_))
                                          (_%g261013261093%_
                                           _%g261014261097%_))
                                      (_%g261013261093%_ _%g261014261097%_))))
                              (_%g261013261093%_ _%g261014261097%_))))
                      (_%g261013261093%_ _%g261014261097%_))
                  (_%g261013261093%_ _%g261014261097%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g261013261093%_
                                                     _%g261014261097%_))))
                                            (_%g261013261093%_
                                             _%g261014261097%_))
                                        (_%g261013261093%_
                                         _%g261014261097%_))))
                                (_%g261013261093%_ _%g261014261097%_))
                            (_%g261013261093%_ _%g261014261097%_))
                        (_%g261013261093%_ _%g261014261097%_))))
                (_%g261013261093%_ _%g261014261097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261013261093%_
                                                 _%g261014261097%_))
                                            (_%g261013261093%_
                                             _%g261014261097%_)))
                                      (_%g261013261093%_ _%g261014261097%_))))
                              (_%g261013261093%_ _%g261014261097%_))))
                      (_%g261013261093%_ _%g261014261097%_)))))
          (_%g261012261395%_ _%sig261010%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx262167%_)
        (let* ((_%g262170262188%_
                (lambda (_%g262171262184%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262171262184%_))))
               (_%g262169262243%_
                (lambda (_%g262171262192%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262171262192%_))
                      (let ((_%e262174262195%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262171262192%_))))
                        (let ((_%hd262175262199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262174262195%_)))
                              (_%tl262176262202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262174262195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262176262202%_))
                              (let ((_%e262177262205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262176262202%_))))
                                (let ((_%hd262178262209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262177262205%_)))
                                      (_%tl262179262212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262177262205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262179262212%_))
                                      (let ((_%e262180262215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262179262212%_))))
                                        (let ((_%hd262181262219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262180262215%_)))
                                              (_%tl262182262222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262180262215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262182262222%_))
                                              ((lambda (_%g262172262225%_
                                                        _%g262173262227%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g262173262227%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g262172262225%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx262167%_
                                                        _%g262173262227%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx262167%_
                                                        _%g262172262225%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g262173262227%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g262172262225%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262170262188%_
                                                      _%g262171262192%_)))
                                               _%hd262181262219%_
                                               _%hd262178262209%_)
                                              (_%g262170262188%_
                                               _%g262171262192%_))))
                                      (_%g262170262188%_ _%g262171262192%_))))
                              (_%g262170262188%_ _%g262171262192%_))))
                      (_%g262170262188%_ _%g262171262192%_)))))
          (_%g262169262243%_ _%stx262167%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx262247%_)
        (let* ((_%g262250262274%_
                (lambda (_%g262251262270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262251262270%_))))
               (_%g262249262555%_
                (lambda (_%g262251262278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262251262278%_))
                      (let ((_%e262254262281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262251262278%_))))
                        (let ((_%hd262255262285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262254262281%_)))
                              (_%tl262256262288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262254262281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262256262288%_))
                              (let ((_%e262257262291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262256262288%_))))
                                (let ((_%hd262258262295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262257262291%_)))
                                      (_%tl262259262298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262257262291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262259262298%_))
                                      (let ((_g264607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl262259262298%_
                                                '0))))
                                        (begin
                                          (let ((_g264608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264607_)
                                                       (##values-length
                                                        _g264607_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264608_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264608_)))
                                          (let ((_%target262260262301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264607_ 0)))
                                                (_%tl262262262304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264607_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262262262304%_))
                                                (letrec ((_%loop262263262307%_
                                                          (lambda (_%hd262261262311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature262267262314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd262261262311%_))
                        (let ((_%e262264262316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd262261262311%_))))
                          (let ((_%lp-hd262265262320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262264262316%_)))
                                (_%lp-tl262266262323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262264262316%_))))
                            (_%loop262263262307%_
                             _%lp-tl262266262323%_
                             (cons _%lp-hd262265262320%_
                                   _%signature262267262314%_))))
                        (let ((_%signature262268262326%_
                               (reverse _%signature262267262314%_)))
                          ((lambda (_%g262252262329%_ _%g262253262331%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g262253262331%_))
                                 (let* ((_%g262349262364%_
                                         (lambda (_%g262350262360%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262350262360%_))))
                                        (_%g262348262543%_
                                         (lambda (_%g262350262368%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g262350262368%_))
                                               (let ((_%e262353262371%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g262350262368%_))))
                                                 (let ((_%hd262354262375%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262353262371%_)))
                                                       (_%tl262355262378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262353262371%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl262355262378%_))
                                                       (let ((_%e262356262381%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl262355262378%_))))
                 (let ((_%hd262357262385%_
                        (let ()
                          (declare (not safe))
                          (##car _%e262356262381%_)))
                       (_%tl262358262388%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e262356262381%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl262358262388%_))
                       ((lambda (_%g262351262391%_ _%g262352262393%_)
                          (let* ((_%g262409262417%_
                                  (lambda (_%g262410262413%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g262410262413%_))))
                                 (_%g262408262539%_
                                  (lambda (_%g262410262421%_)
                                    ((lambda (_%g262411262424%_)
                                       (let* ((_%unchecked262437%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g262351262391%_))
                                              (_%g262440262448%_
                                               (lambda (_%g262441262444%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g262441262444%_))))
                                              (_%g262439262471%_
                                               (lambda (_%g262441262452%_)
                                                 ((lambda (_%g262442262455%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g262411262424%_
                                                                (cons _%g262442262455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g262441262452%_))))
                                         (_%g262439262471%_
                                          (if _%unchecked262437%_
                                              (let* ((_%g262475262490%_
                                                      (lambda (_%g262476262486%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g262476262486%_))))
                                                     (_%g262474262535%_
                                                      (lambda (_%g262476262494%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g262476262494%_))
                                                            (let ((_%e262479262497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g262476262494%_))))
                      (let ((_%hd262480262501%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262479262497%_)))
                            (_%tl262481262504%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262479262497%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262481262504%_))
                            (let ((_%e262482262507%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262481262504%_))))
                              (let ((_%hd262483262511%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262482262507%_)))
                                    (_%tl262484262514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262482262507%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262484262514%_))
                                    ((lambda (_%g262477262517%_
                                              _%g262478262519%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g262478262519%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262352262393%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g262477262517%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd262483262511%_
                                     _%hd262480262501%_)
                                    (_%g262475262490%_ _%g262476262494%_))))
                            (_%g262475262490%_ _%g262476262494%_))))
                    (_%g262475262490%_ _%g262476262494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262474262535%_
                                                 _%unchecked262437%_))
                                              '(begin)))))
                                     _%g262410262421%_))))
                            (_%g262408262539%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g262253262331%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g262352262393%_ '()))
                   (cons '#f (cons 'signature: (cons _%g262351262391%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd262357262385%_
                        _%hd262354262375%_)
                       (_%g262349262364%_ _%g262350262368%_))))
               (_%g262349262364%_ _%g262350262368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262349262364%_
                                                _%g262350262368%_)))))
                                   (_%g262348262543%_
                                    (|gxc[1]#parse-signature|
                                     _%stx262247%_
                                     _%g262253262331%_
                                     (let ((__tmp264609
                                            (lambda (_%g262546262549%_
                                                     _%g262547262552%_)
                                              (cons _%g262546262549%_
                                                    _%g262547262552%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp264609
                                        '()
                                        _%g262252262329%_)))))
                                 (_%g262250262274%_ _%g262251262278%_)))
                           _%signature262268262326%_
                           _%hd262258262295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop262263262307%_
                                                   _%target262260262301%_
                                                   '()))
                                                (_%g262250262274%_
                                                 _%g262251262278%_)))))
                                      (_%g262250262274%_ _%g262251262278%_))))
                              (_%g262250262274%_ _%g262251262278%_))))
                      (_%g262250262274%_ _%g262251262278%_)))))
          (_%g262249262555%_ _%stx262247%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx262560%_)
        (let* ((_%g262563262587%_
                (lambda (_%g262564262583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262564262583%_))))
               (_%g262562263462%_
                (lambda (_%g262564262591%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262564262591%_))
                      (let ((_%e262567262594%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262564262591%_))))
                        (let ((_%hd262568262598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262567262594%_)))
                              (_%tl262569262601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262567262594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262569262601%_))
                              (let ((_%e262570262604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262569262601%_))))
                                (let ((_%hd262571262608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262570262604%_)))
                                      (_%tl262572262611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262570262604%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262572262611%_))
                                      (let ((_g264610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl262572262611%_
                                                '0))))
                                        (begin
                                          (let ((_g264611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264610_)
                                                       (##values-length
                                                        _g264610_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264611_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264611_)))
                                          (let ((_%target262573262614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264610_ 0)))
                                                (_%tl262575262617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264610_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262575262617%_))
                                                (letrec ((_%loop262576262620%_
                                                          (lambda (_%hd262574262624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature262580262627%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd262574262624%_))
                        (let ((_%e262577262629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd262574262624%_))))
                          (let ((_%lp-hd262578262633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262577262629%_)))
                                (_%lp-tl262579262636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262577262629%_))))
                            (_%loop262576262620%_
                             _%lp-tl262579262636%_
                             (cons _%lp-hd262578262633%_
                                   _%case-signature262580262627%_))))
                        (let ((_%case-signature262581262639%_
                               (reverse _%case-signature262580262627%_)))
                          ((lambda (_%g262565262642%_ _%g262566262644%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g262566262644%_))
                                 (let* ((_%signatures262675%_
                                         (map (lambda (_%g262661262663%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx262560%_
                                                 _%g262566262644%_
                                                 _%g262661262663%_))
                                              (let ((__tmp264612
                                                     (lambda (_%g262666262669%_
                                                              _%g262667262672%_)
                                                       (cons _%g262666262669%_
                                                             _%g262667262672%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp264612
                                                 '()
                                                 _%g262565262642%_))))
                                        (_%g262678262704%_
                                         (lambda (_%g262679262700%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262679262700%_))))
                                        (_%g262677263458%_
                                         (lambda (_%g262679262708%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g262679262708%_))
                                               (let ((_g264613_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g262679262708%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g264614_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g264613_)
                        (##values-length _g264613_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g264614_ 2)))
                 (error "Context expects 2 values" _g264614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target262682262711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g264613_
                                                             0)))
                                                         (_%tl262684262714%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g264613_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262684262714%_))
                                                         (letrec ((_%loop262685262717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd262683262721%_
                                    _%sig262689262724%_
                                    _%arity262690262725%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd262683262721%_))
                                 (let ((_%e262686262727%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd262683262721%_))))
                                   (let ((_%lp-hd262687262731%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262686262727%_)))
                                         (_%lp-tl262688262734%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262686262727%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd262687262731%_))
                                         (let ((_%e262693262737%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd262687262731%_))))
                                           (let ((_%hd262694262741%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e262693262737%_)))
                                                 (_%tl262695262744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e262693262737%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262695262744%_))
                                                 (let ((_%e262696262747%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262695262744%_))))
                                                   (let ((_%hd262697262751%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262696262747%_)))
                                                         (_%tl262698262754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262696262747%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262698262754%_))
                                                         (_%loop262685262717%_
                                                          _%lp-tl262688262734%_
                                                          (cons _%hd262697262751%_
                                                                _%sig262689262724%_)
                                                          (cons _%hd262694262741%_
                                                                _%arity262690262725%_))
                                                         (_%g262678262704%_
                                                          _%g262679262708%_))))
                                                 (_%g262678262704%_
                                                  _%g262679262708%_))))
                                         (_%g262678262704%_
                                          _%g262679262708%_))))
                                 (let ((_%sig262691262757%_
                                        (reverse _%sig262689262724%_))
                                       (_%arity262692262759%_
                                        (reverse _%arity262690262725%_)))
                                   ((lambda (_%g262680262761%_
                                             _%g262681262763%_)
                                      (let* ((_%g262780262788%_
                                              (lambda (_%g262781262784%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g262781262784%_))))
                                             (_%g262779263443%_
                                              (lambda (_%g262781262792%_)
                                                ((lambda (_%g262782262795%_)
                                                   (let* ((_%g262808262816%_
                                                           (lambda (_%g262809262812%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g262809262812%_))))
                  (_%g262807262838%_
                   (lambda (_%g262809262820%_)
                     ((lambda (_%g262810262823%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g262782262795%_
                                    (cons _%g262810262823%_ '()))))
                      _%g262809262820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262807262838%_
                                                      (let ((_g264615_
                                                             (let _%loop262842%_ ((_%rest262845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures262675%_)
                                          (_%unchecked-proc262847%_ '#f)
                                          (_%unchecked-clauses262848%_ '()))
                       (let* ((_%rest262849262857%_ _%rest262845%_)
                              (_%else262851262869%_
                               (lambda ()
                                 (values _%unchecked-proc262847%_
                                         (reverse!
                                          _%unchecked-clauses262848%_))))
                              (_%K262853263310%_
                               (lambda (_%rest262873%_ _%hd262875%_)
                                 (let* ((_%g262877262964%_
                                         (lambda (_%g262878262960%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262878262960%_))))
                                        (_%g262876263306%_
                                         (lambda (_%g262878262968%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g262878262968%_))
                                               (let ((_%e262885262971%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g262878262968%_))))
                                                 (let ((_%hd262886262975%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262885262971%_)))
                                                       (_%tl262887262978%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262885262971%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl262887262978%_))
                                                       (let ((_%e262888262981%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl262887262978%_))))
                 (let ((_%hd262889262985%_
                        (let ()
                          (declare (not safe))
                          (##car _%e262888262981%_)))
                       (_%tl262890262988%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e262888262981%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd262889262985%_))
                       (let ((_%e262891262991%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd262889262985%_))))
                         (let ((_%hd262892262995%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e262891262991%_)))
                               (_%tl262893262998%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e262891262991%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl262893262998%_))
                               (let ((_%e262894263001%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl262893262998%_))))
                                 (let ((_%hd262895263005%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e262894263001%_)))
                                       (_%tl262896263008%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e262894263001%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd262895263005%_))
                                       (let ((_%e262897263011%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd262895263005%_))))
                                         (if (equal? _%e262897263011%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262896263008%_))
                                                 (let ((_%e262898263015%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262896263008%_))))
                                                   (let ((_%hd262899263019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262898263015%_)))
                                                         (_%tl262900263022%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262898263015%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd262899263019%_))
                                                         (let ((_%e262901263025%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd262899263019%_))))
                   (let ((_%hd262902263029%_
                          (let ()
                            (declare (not safe))
                            (##car _%e262901263025%_)))
                         (_%tl262903263032%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e262901263025%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd262902263029%_))
                         (if (let ((__tmp264617 |gxc[1]#_g264618_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp264617
                                _%hd262902263029%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl262903263032%_))
                                 (let ((_%e262904263035%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl262903263032%_))))
                                   (let ((_%hd262905263039%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262904263035%_)))
                                         (_%tl262906263042%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262904263035%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl262906263042%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl262900263022%_))
                                             (let ((_%e262907263045%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl262900263022%_))))
                                               (let ((_%hd262908263049%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e262907263045%_)))
                                                     (_%tl262909263052%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e262907263045%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd262908263049%_))
                                                     (let ((_%e262910263055%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd262908263049%_))))
                                                       (if (equal? _%e262910263055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl262909263052%_))
                       (let ((_%e262911263059%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl262909263052%_))))
                         (let ((_%hd262912263063%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e262911263059%_)))
                               (_%tl262913263066%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e262911263059%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd262912263063%_))
                               (let ((_%e262914263069%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd262912263063%_))))
                                 (let ((_%hd262915263073%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e262914263069%_)))
                                       (_%tl262916263076%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e262914263069%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd262915263073%_))
                                       (if (let ((__tmp264619
                                                  |gxc[1]#_g264620_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp264619
                                              _%hd262915263073%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl262916263076%_))
                                               (let ((_%e262917263079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl262916263076%_))))
                                                 (let ((_%hd262918263083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262917263079%_)))
                                                       (_%tl262919263086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262917263079%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl262919263086%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl262913263066%_))
                                                           (let ((_%e262920263089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl262913263066%_))))
                     (let ((_%hd262921263093%_
                            (let ()
                              (declare (not safe))
                              (##car _%e262920263089%_)))
                           (_%tl262922263096%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e262920263089%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd262921263093%_))
                           (let ((_%e262923263099%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd262921263093%_))))
                             (if (equal? _%e262923263099%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl262922263096%_))
                                     (let ((_%e262924263103%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl262922263096%_))))
                                       (let ((_%hd262925263107%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e262924263103%_)))
                                             (_%tl262926263110%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e262924263103%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd262925263107%_))
                                             (let ((_%e262927263113%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd262925263107%_))))
                                               (let ((_%hd262928263117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e262927263113%_)))
                                                     (_%tl262929263120%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e262927263113%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd262928263117%_))
                                                     (if (let ((__tmp264621
                                                                |gxc[1]#_g264622_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp264621
                                                            _%hd262928263117%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl262929263120%_))
                     (let ((_%e262930263123%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl262929263120%_))))
                       (let ((_%hd262931263127%_
                              (let ()
                                (declare (not safe))
                                (##car _%e262930263123%_)))
                             (_%tl262932263130%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e262930263123%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl262932263130%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl262926263110%_))
                                 (let ((_%e262933263133%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl262926263110%_))))
                                   (let ((_%hd262934263137%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262933263133%_)))
                                         (_%tl262935263140%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262933263133%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd262934263137%_))
                                         (let ((_%e262936263143%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd262934263137%_))))
                                           (if (equal? _%e262936263143%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl262935263140%_))
                                                   (let ((_%e262937263147%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl262935263140%_))))
                                                     (let ((_%hd262938263151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e262937263147%_)))
                                                           (_%tl262939263154%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e262937263147%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd262938263151%_))
                                                           (let ((_%e262940263157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd262938263151%_))))
                     (let ((_%hd262941263161%_
                            (let ()
                              (declare (not safe))
                              (##car _%e262940263157%_)))
                           (_%tl262942263164%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e262940263157%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd262941263161%_))
                           (if (let ((__tmp264623 |gxc[1]#_g264624_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp264623
                                  _%hd262941263161%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl262942263164%_))
                                   (let ((_%e262943263167%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl262942263164%_))))
                                     (let ((_%hd262944263171%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e262943263167%_)))
                                           (_%tl262945263174%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e262943263167%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl262945263174%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl262939263154%_))
                                               (let ((_%e262946263177%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl262939263154%_))))
                                                 (let ((_%hd262947263181%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262946263177%_)))
                                                       (_%tl262948263184%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262946263177%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd262947263181%_))
                                                       (let ((_%e262949263187%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd262947263181%_))))
                 (if (equal? _%e262949263187%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl262948263184%_))
                         (let ((_%e262950263191%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl262948263184%_))))
                           (let ((_%hd262951263195%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e262950263191%_)))
                                 (_%tl262952263198%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e262950263191%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd262951263195%_))
                                 (let ((_%e262953263201%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd262951263195%_))))
                                   (let ((_%hd262954263205%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262953263201%_)))
                                         (_%tl262955263208%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262953263201%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd262954263205%_))
                                         (if (let ((__tmp264625
                                                    |gxc[1]#_g264626_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp264625
                                                _%hd262954263205%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262955263208%_))
                                                 (let ((_%e262956263211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262955263208%_))))
                                                   (let ((_%hd262957263215%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262956263211%_)))
                                                         (_%tl262958263218%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262956263211%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262958263218%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl262952263198%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl262890262988%_))
                         ((lambda (_%g262879263221%_
                                   _%g262880263223%_
                                   _%g262881263224%_
                                   _%g262882263225%_
                                   _%g262883263226%_
                                   _%g262884263227%_)
                            (let ((_%clause263298%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g262884263227%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g262882263225%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262879263221%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked263300%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g262880263223%_))))
                              (_%loop262842%_
                               _%rest262873%_
                               (let ((_%$e263302%_ _%unchecked263300%_))
                                 (if _%$e263302%_
                                     _%$e263302%_
                                     _%unchecked-proc262847%_))
                               (cons _%clause263298%_
                                     _%unchecked-clauses262848%_))))
                          _%hd262957263215%_
                          _%hd262944263171%_
                          _%hd262931263127%_
                          _%hd262918263083%_
                          _%hd262905263039%_
                          _%hd262886262975%_)
                         (_%g262877262964%_ _%g262878262968%_))
                     (_%g262877262964%_ _%g262878262968%_))
                 (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g262877262964%_
                                                  _%g262878262968%_))
                                             (_%g262877262964%_
                                              _%g262878262968%_))
                                         (_%g262877262964%_
                                          _%g262878262968%_))))
                                 (_%g262877262964%_ _%g262878262968%_))))
                         (_%g262877262964%_ _%g262878262968%_))
                     (_%g262877262964%_ _%g262878262968%_)))
               (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262877262964%_
                                                _%g262878262968%_))
                                           (_%g262877262964%_
                                            _%g262878262968%_))))
                                   (_%g262877262964%_ _%g262878262968%_))
                               (_%g262877262964%_ _%g262878262968%_))
                           (_%g262877262964%_ _%g262878262968%_))))
                   (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g262877262964%_
                                                    _%g262878262968%_))
                                               (_%g262877262964%_
                                                _%g262878262968%_)))
                                         (_%g262877262964%_
                                          _%g262878262968%_))))
                                 (_%g262877262964%_ _%g262878262968%_))
                             (_%g262877262964%_ _%g262878262968%_))))
                     (_%g262877262964%_ _%g262878262968%_))
                 (_%g262877262964%_ _%g262878262968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262877262964%_
                                                      _%g262878262968%_))))
                                             (_%g262877262964%_
                                              _%g262878262968%_))))
                                     (_%g262877262964%_ _%g262878262968%_))
                                 (_%g262877262964%_ _%g262878262968%_)))
                           (_%g262877262964%_ _%g262878262968%_))))
                   (_%g262877262964%_ _%g262878262968%_))
               (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262877262964%_
                                                _%g262878262968%_))
                                           (_%g262877262964%_
                                            _%g262878262968%_))
                                       (_%g262877262964%_ _%g262878262968%_))))
                               (_%g262877262964%_ _%g262878262968%_))))
                       (_%g262877262964%_ _%g262878262968%_))
                   (_%g262877262964%_ _%g262878262968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262877262964%_
                                                      _%g262878262968%_))))
                                             (_%g262877262964%_
                                              _%g262878262968%_))
                                         (_%g262877262964%_
                                          _%g262878262968%_))))
                                 (_%g262877262964%_ _%g262878262968%_))
                             (_%g262877262964%_ _%g262878262968%_))
                         (_%g262877262964%_ _%g262878262968%_))))
                 (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g262877262964%_
                                                  _%g262878262968%_))
                                             (_%g262877262964%_
                                              _%g262878262968%_)))
                                       (_%g262877262964%_ _%g262878262968%_))))
                               (_%g262877262964%_ _%g262878262968%_))))
                       (_%g262877262964%_ _%g262878262968%_))))
               (_%g262877262964%_ _%g262878262968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262877262964%_
                                                _%g262878262968%_)))))
                                   (_%g262876263306%_ _%hd262875%_)))))
                         (if (pair? _%rest262849262857%_)
                             (let ((_%hd262854263314%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest262849262857%_)))
                                   (_%tl262855263317%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest262849262857%_))))
                               (let* ((_%hd263320%_ _%hd262854263314%_)
                                      (_%rest263323%_ _%tl262855263317%_))
                                 (_%K262853263310%_
                                  _%rest263323%_
                                  _%hd263320%_)))
                             (_%else262851262869%_))))))
                (begin
                  (let ((_g264616_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g264615_)
                               (##values-length _g264615_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g264616_ 2)))
                        (error "Context expects 2 values" _g264616_)))
                  (let ((_%unchecked-proc263326%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264615_ 0)))
                        (_%unchecked-clauses263328%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264615_ 1))))
                    (if _%unchecked-proc263326%_
                        (let* ((_%g263330263354%_
                                (lambda (_%g263331263350%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g263331263350%_))))
                               (_%g263329263439%_
                                (lambda (_%g263331263358%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g263331263358%_))
                                      (let ((_%e263334263361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g263331263358%_))))
                                        (let ((_%hd263335263365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263334263361%_)))
                                              (_%tl263336263368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263334263361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263336263368%_))
                                              (let ((_%e263337263371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263336263368%_))))
                                                (let ((_%hd263338263375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263337263371%_)))
                                                      (_%tl263339263378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263337263371%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd263338263375%_))
                                                      (let ((_g264627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd263338263375%_ '0))))
                (begin
                  (let ((_g264628_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g264627_)
                               (##values-length _g264627_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g264628_ 2)))
                        (error "Context expects 2 values" _g264628_)))
                  (let ((_%target263340263381%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264627_ 0)))
                        (_%tl263342263384%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264627_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263342263384%_))
                        (letrec ((_%loop263343263387%_
                                  (lambda (_%hd263341263391%_
                                           _%clause263347263394%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd263341263391%_))
                                        (let ((_%e263344263396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd263341263391%_))))
                                          (let ((_%lp-hd263345263400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263344263396%_)))
                                                (_%lp-tl263346263403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263344263396%_))))
                                            (_%loop263343263387%_
                                             _%lp-tl263346263403%_
                                             (cons _%lp-hd263345263400%_
                                                   _%clause263347263394%_))))
                                        (let ((_%clause263348263406%_
                                               (reverse _%clause263347263394%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263339263378%_))
                                              ((lambda (_%g263332263409%_
                                                        _%g263333263411%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g263333263411%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp264629
                                                    (lambda (_%g263430263433%_
                                                             _%g263431263436%_)
                                                      (cons _%g263430263433%_
                                                            _%g263431263436%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp264629
                                                '()
                                                _%g263332263409%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause263348263406%_
                                               _%hd263335263365%_)
                                              (_%g263330263354%_
                                               _%g263331263358%_)))))))
                          (_%loop263343263387%_ _%target263340263381%_ '()))
                        (_%g263330263354%_ _%g263331263358%_)))))
              (_%g263330263354%_ _%g263331263358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263330263354%_
                                               _%g263331263358%_))))
                                      (_%g263330263354%_ _%g263331263358%_)))))
                          (_%g263329263439%_
                           (list _%unchecked-proc263326%_
                                 _%unchecked-clauses263328%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g262781262792%_))))
                                        (_%g262779263443%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g262566262644%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g262680262761%_
                                          _%g262681262763%_))
                                       (let ((__tmp264630
                                              (lambda (_%g263446263450%_
                                                       _%g263447263453%_
                                                       _%g263448263455%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g263447263453%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g263446263450%_ '())))))
              _%g263448263455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp264630
                                          '()
                                          _%g262680262761%_
                                          _%g262681262763%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig262691262757%_
                                    _%arity262692262759%_))))))
                   (_%loop262685262717%_ _%target262682262711%_ '() '()))
                 (_%g262678262704%_ _%g262679262708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262678262704%_
                                                _%g262679262708%_)))))
                                   (_%g262677263458%_ _%signatures262675%_))
                                 (_%g262563262587%_ _%g262564262591%_)))
                           _%case-signature262581262639%_
                           _%hd262571262608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop262576262620%_
                                                   _%target262573262614%_
                                                   '()))
                                                (_%g262563262587%_
                                                 _%g262564262591%_)))))
                                      (_%g262563262587%_ _%g262564262591%_))))
                              (_%g262563262587%_ _%g262564262591%_))))
                      (_%g262563262587%_ _%g262564262591%_)))))
          (_%g262562263462%_ _%stx262560%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx263470%_)
        (let* ((_%__stx264450264451%_ _%$stx263470%_)
               (_%g263476263536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264450264451%_)))))
          (let ((_%__kont264453264454%_
                 (lambda (_%g263478263758%_ _%g263479263760%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263479263760%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g263479263760%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263478263758%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont264455264456%_
                 (lambda (_%g263493263683%_
                          _%g263494263685%_
                          _%g263495263686%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263495263686%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g263495263686%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263494263685%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263493263683%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont264457264458%_
                 (lambda (_%g263512263597%_
                          _%g263513263599%_
                          _%g263514263600%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263514263600%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g263514263600%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263513263599%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263512263597%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264450264451%_))
                (let ((_%e263480263714%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx264450264451%_))))
                  (let ((_%tl263482263721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263480263714%_)))
                        (_%hd263481263718%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263480263714%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263482263721%_))
                        (let ((_%e263483263724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263482263721%_))))
                          (let ((_%tl263485263731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263483263724%_)))
                                (_%hd263484263728%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263483263724%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd263484263728%_))
                                (let ((_%e263486263734%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd263484263728%_))))
                                  (if (equal? _%e263486263734%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl263485263731%_))
                                          (let ((_%e263487263738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl263485263731%_))))
                                            (let ((_%tl263489263745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263487263738%_)))
                                                  (_%hd263488263742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263487263738%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263489263745%_))
                                                  (let ((_%e263490263748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263489263745%_))))
                                                    (let ((_%tl263492263755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263490263748%_)))
                                                          (_%hd263491263752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263490263748%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263492263755%_))
                                                          (_%__kont264453264454%_
                                                           _%hd263491263752%_
                                                           _%hd263488263742%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263476263536%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263476263536%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263476263536%_)))
                                      (if (equal? _%e263486263734%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263485263731%_))
                                              (let ((_%e263503263653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263485263731%_))))
                                                (let ((_%tl263505263660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263503263653%_)))
                                                      (_%hd263504263657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263503263653%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263505263660%_))
                                                      (let ((_%e263506263663%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263505263660%_))))
                (let ((_%tl263508263670%_
                       (let () (declare (not safe)) (##cdr _%e263506263663%_)))
                      (_%hd263507263667%_
                       (let ()
                         (declare (not safe))
                         (##car _%e263506263663%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263508263670%_))
                      (let ((_%e263509263673%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263508263670%_))))
                        (let ((_%tl263511263680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263509263673%_)))
                              (_%hd263510263677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263509263673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263511263680%_))
                              (_%__kont264455264456%_
                               _%hd263510263677%_
                               _%hd263507263667%_
                               _%hd263504263657%_)
                              (let ()
                                (declare (not safe))
                                (_%g263476263536%_)))))
                      (let () (declare (not safe)) (_%g263476263536%_)))))
              (let () (declare (not safe)) (_%g263476263536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263476263536%_)))
                                          (if (equal? _%e263486263734%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263485263731%_))
                                                  (let ((_%e263522263567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263485263731%_))))
                                                    (let ((_%tl263524263574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263522263567%_)))
                                                          (_%hd263523263571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263522263567%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263524263574%_))
                                                          (let ((_%e263525263577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263524263574%_))))
                    (let ((_%tl263527263584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263525263577%_)))
                          (_%hd263526263581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263525263577%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263527263584%_))
                          (let ((_%e263528263587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263527263584%_))))
                            (let ((_%tl263530263594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263528263587%_)))
                                  (_%hd263529263591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263528263587%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263530263594%_))
                                  (_%__kont264457264458%_
                                   _%hd263529263591%_
                                   _%hd263526263581%_
                                   _%hd263523263571%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263476263536%_)))))
                          (let () (declare (not safe)) (_%g263476263536%_)))))
                  (let () (declare (not safe)) (_%g263476263536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263476263536%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263476263536%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g263476263536%_)))))
                        (let () (declare (not safe)) (_%g263476263536%_)))))
                (let () (declare (not safe)) (_%g263476263536%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx263782%_)
        (let* ((_%g263786263806%_
                (lambda (_%g263787263802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263787263802%_))))
               (_%g263785263875%_
                (lambda (_%g263787263810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263787263810%_))
                      (let ((_%e263789263813%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263787263810%_))))
                        (let ((_%hd263790263817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263789263813%_)))
                              (_%tl263791263820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263789263813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263791263820%_))
                              (let ((_g264631_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263791263820%_
                                        '0))))
                                (begin
                                  (let ((_g264632_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264631_)
                                               (##values-length _g264631_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264632_ 2)))
                                        (error "Context expects 2 values"
                                               _g264632_)))
                                  (let ((_%target263792263823%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264631_ 0)))
                                        (_%tl263794263826%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264631_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263794263826%_))
                                        (letrec ((_%loop263795263829%_
                                                  (lambda (_%hd263793263833%_
                                                           _%decl263799263836%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263793263833%_))
                                                        (let ((_%e263796263838%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263793263833%_))))
                  (let ((_%lp-hd263797263842%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263796263838%_)))
                        (_%lp-tl263798263845%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263796263838%_))))
                    (_%loop263795263829%_
                     _%lp-tl263798263845%_
                     (cons _%lp-hd263797263842%_ _%decl263799263836%_))))
                (let ((_%decl263800263848%_ (reverse _%decl263799263836%_)))
                  ((lambda (_%g263788263851%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp264633
                                  (lambda (_%g263866263869%_ _%g263867263872%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g263866263869%_)
                                          _%g263867263872%_))))
                             (declare (not safe))
                             (foldr__0 __tmp264633 '() _%g263788263851%_))))
                   _%decl263800263848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263795263829%_
                                           _%target263792263823%_
                                           '()))
                                        (_%g263786263806%_
                                         _%g263787263810%_)))))
                              (_%g263786263806%_ _%g263787263810%_))))
                      (_%g263786263806%_ _%g263787263810%_)))))
          (_%g263785263875%_ _%$stx263782%_))))))

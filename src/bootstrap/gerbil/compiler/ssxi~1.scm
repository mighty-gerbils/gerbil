(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g264584_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264591_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264593_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264595_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264597_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264599_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264611_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264613_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264615_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264617_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g264619_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx258042%_)
        (let* ((_%g258046258064%_
                (lambda (_%g258047258060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258047258060%_))))
               (_%g258045258119%_
                (lambda (_%g258047258068%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258047258068%_))
                      (let ((_%e258050258071%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258047258068%_))))
                        (let ((_%hd258051258075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258050258071%_)))
                              (_%tl258052258078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258050258071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258052258078%_))
                              (let ((_%e258053258081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258052258078%_))))
                                (let ((_%hd258054258085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258053258081%_)))
                                      (_%tl258055258088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258053258081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258055258088%_))
                                      (let ((_%e258056258091%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258055258088%_))))
                                        (let ((_%hd258057258095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258056258091%_)))
                                              (_%tl258058258098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258056258091%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258058258098%_))
                                              ((lambda (_%g258048258101%_
                                                        _%g258049258103%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g258049258103%_))
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
                               (cons _%g258049258103%_ '()))
                         (cons _%g258048258101%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g258046258064%_
                                                      _%g258047258068%_)))
                                               _%hd258057258095%_
                                               _%hd258054258085%_)
                                              (_%g258046258064%_
                                               _%g258047258068%_))))
                                      (_%g258046258064%_ _%g258047258068%_))))
                              (_%g258046258064%_ _%g258047258068%_))))
                      (_%g258046258064%_ _%g258047258068%_)))))
          (_%g258045258119%_ _%$stx258042%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx258123%_)
        (let* ((_%g258127258145%_
                (lambda (_%g258128258141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258128258141%_))))
               (_%g258126258200%_
                (lambda (_%g258128258149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258128258149%_))
                      (let ((_%e258131258152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258128258149%_))))
                        (let ((_%hd258132258156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258131258152%_)))
                              (_%tl258133258159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258131258152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258133258159%_))
                              (let ((_%e258134258162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258133258159%_))))
                                (let ((_%hd258135258166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258134258162%_)))
                                      (_%tl258136258169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258134258162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258136258169%_))
                                      (let ((_%e258137258172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258136258169%_))))
                                        (let ((_%hd258138258176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258137258172%_)))
                                              (_%tl258139258179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258137258172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258139258179%_))
                                              ((lambda (_%g258129258182%_
                                                        _%g258130258184%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g258130258184%_))
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
                               (cons _%g258130258184%_ '()))
                         (cons _%g258129258182%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g258127258145%_
                                                      _%g258128258149%_)))
                                               _%hd258138258176%_
                                               _%hd258135258166%_)
                                              (_%g258127258145%_
                                               _%g258128258149%_))))
                                      (_%g258127258145%_ _%g258128258149%_))))
                              (_%g258127258145%_ _%g258128258149%_))))
                      (_%g258127258145%_ _%g258128258149%_)))))
          (_%g258126258200%_ _%$stx258123%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx258204%_)
        (let* ((_%g258208258237%_
                (lambda (_%g258209258233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258209258233%_))))
               (_%g258207258333%_
                (lambda (_%g258209258241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258209258241%_))
                      (let ((_%e258212258244%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258209258241%_))))
                        (let ((_%hd258213258248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258212258244%_)))
                              (_%tl258214258251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258212258244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258214258251%_))
                              (let ((_g264562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258214258251%_
                                        '0))))
                                (begin
                                  (let ((_g264563_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264562_)
                                               (##values-length _g264562_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264563_ 2)))
                                        (error "Context expects 2 values"
                                               _g264563_)))
                                  (let ((_%target258215258254%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264562_ 0)))
                                        (_%tl258217258257%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264562_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258217258257%_))
                                        (letrec ((_%loop258218258260%_
                                                  (lambda (_%hd258216258264%_
                                                           _%type258222258267%_
                                                           _%symbol258223258268%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258216258264%_))
                                                        (let ((_%e258219258270%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258216258264%_))))
                  (let ((_%lp-hd258220258274%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258219258270%_)))
                        (_%lp-tl258221258277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258219258270%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd258220258274%_))
                        (let ((_%e258226258280%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd258220258274%_))))
                          (let ((_%hd258227258284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258226258280%_)))
                                (_%tl258228258287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258226258280%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258228258287%_))
                                (let ((_%e258229258290%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258228258287%_))))
                                  (let ((_%hd258230258294%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258229258290%_)))
                                        (_%tl258231258297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258229258290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258231258297%_))
                                        (_%loop258218258260%_
                                         _%lp-tl258221258277%_
                                         (cons _%hd258230258294%_
                                               _%type258222258267%_)
                                         (cons _%hd258227258284%_
                                               _%symbol258223258268%_))
                                        (_%g258208258237%_
                                         _%g258209258241%_))))
                                (_%g258208258237%_ _%g258209258241%_))))
                        (_%g258208258237%_ _%g258209258241%_))))
                (let ((_%type258224258300%_ (reverse _%type258222258267%_))
                      (_%symbol258225258302%_
                       (reverse _%symbol258223258268%_)))
                  ((lambda (_%g258210258304%_ _%g258211258306%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g258210258304%_
                                _%g258211258306%_))
                             (let ((__tmp264564
                                    (lambda (_%g258321258325%_
                                             _%g258322258328%_
                                             _%g258323258330%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g258322258328%_
                                                        (cons _%g258321258325%_
                                                              '())))
                                            _%g258323258330%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp264564
                                '()
                                _%g258210258304%_
                                _%g258211258306%_)))))
                   _%type258224258300%_
                   _%symbol258225258302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258218258260%_
                                           _%target258215258254%_
                                           '()
                                           '()))
                                        (_%g258208258237%_
                                         _%g258209258241%_)))))
                              (_%g258208258237%_ _%g258209258241%_))))
                      (_%g258208258237%_ _%g258209258241%_)))))
          (_%g258207258333%_ _%$stx258204%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx258338%_)
        (let* ((_%__stx263873263874%_ _%$stx258338%_)
               (_%g258343258385%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263873263874%_)))))
          (let ((_%__kont263876263877%_
                 (lambda (_%g258345258513%_
                          _%g258346258515%_
                          _%g258347258516%_
                          _%g258348258517%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258348258517%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258347258516%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g258346258515%_ '()))
                                           (cons _%g258345258513%_ '())))))))
                (_%__kont263878263879%_
                 (lambda (_%g258364258432%_
                          _%g258365258434%_
                          _%g258366258435%_
                          _%g258367258436%_)
                   (cons _%g258367258436%_
                         (cons _%g258366258435%_
                               (cons _%g258365258434%_
                                     (cons _%g258364258432%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match263912263913%_
                   (lambda (_%e258349258463%_
                            _%hd258350258467%_
                            _%tl258351258470%_
                            _%e258352258473%_
                            _%hd258353258477%_
                            _%tl258354258480%_
                            _%e258355258483%_
                            _%hd258356258487%_
                            _%tl258357258490%_
                            _%e258358258493%_
                            _%hd258359258497%_
                            _%tl258360258500%_
                            _%e258361258503%_
                            _%hd258362258507%_
                            _%tl258363258510%_)
                     (let ((_%g258345258513%_ _%hd258362258507%_)
                           (_%g258346258515%_ _%hd258359258497%_)
                           (_%g258347258516%_ _%hd258356258487%_)
                           (_%g258348258517%_ _%hd258353258477%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258348258517%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258347258516%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g258346258515%_)))
                           (_%__kont263876263877%_
                            _%g258345258513%_
                            _%g258346258515%_
                            _%g258347258516%_
                            _%g258348258517%_)
                           (let ()
                             (declare (not safe))
                             (_%g258343258385%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263873263874%_))
                  (let ((_%e258349258463%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263873263874%_))))
                    (let ((_%tl258351258470%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258349258463%_)))
                          (_%hd258350258467%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258349258463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258351258470%_))
                          (let ((_%e258352258473%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258351258470%_))))
                            (let ((_%tl258354258480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258352258473%_)))
                                  (_%hd258353258477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258352258473%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl258354258480%_))
                                  (let ((_%e258355258483%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl258354258480%_))))
                                    (let ((_%tl258357258490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e258355258483%_)))
                                          (_%hd258356258487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e258355258483%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl258357258490%_))
                                          (let ((_%e258358258493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl258357258490%_))))
                                            (let ((_%tl258360258500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e258358258493%_)))
                                                  (_%hd258359258497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e258358258493%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl258360258500%_))
                                                  (let ((_%e258361258503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl258360258500%_))))
                                                    (let ((_%tl258363258510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258361258503%_)))
                                                          (_%hd258362258507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258361258503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl258363258510%_))
                                                          (_%__match263912263913%_
                                                           _%e258349258463%_
                                                           _%hd258350258467%_
                                                           _%tl258351258470%_
                                                           _%e258352258473%_
                                                           _%hd258353258477%_
                                                           _%tl258354258480%_
                                                           _%e258355258483%_
                                                           _%hd258356258487%_
                                                           _%tl258357258490%_
                                                           _%e258358258493%_
                                                           _%hd258359258497%_
                                                           _%tl258360258500%_
                                                           _%e258361258503%_
                                                           _%hd258362258507%_
                                                           _%tl258363258510%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g258343258385%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258360258500%_))
                                                      (_%__kont263878263879%_
                                                       _%hd258359258497%_
                                                       _%hd258356258487%_
                                                       _%hd258353258477%_
                                                       _%hd258350258467%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g258343258385%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g258343258385%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258343258385%_)))))
                          (let () (declare (not safe)) (_%g258343258385%_)))))
                  (let () (declare (not safe)) (_%g258343258385%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx258542%_)
        (let* ((_%g258546258581%_
                (lambda (_%g258547258577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258547258577%_))))
               (_%g258545258694%_
                (lambda (_%g258547258585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258547258585%_))
                      (let ((_%e258551258588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258547258585%_))))
                        (let ((_%hd258552258592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258551258588%_)))
                              (_%tl258553258595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258551258588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258553258595%_))
                              (let ((_g264565_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258553258595%_
                                        '0))))
                                (begin
                                  (let ((_g264566_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264565_)
                                               (##values-length _g264565_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264566_ 2)))
                                        (error "Context expects 2 values"
                                               _g264566_)))
                                  (let ((_%target258554258598%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264565_ 0)))
                                        (_%tl258556258601%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264565_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258556258601%_))
                                        (letrec ((_%loop258557258604%_
                                                  (lambda (_%hd258555258608%_
                                                           _%symbol258561258611%_
                                                           _%method258562258612%_
                                                           _%type-t258563258613%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258555258608%_))
                                                        (let ((_%e258558258615%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258555258608%_))))
                  (let ((_%lp-hd258559258619%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258558258615%_)))
                        (_%lp-tl258560258622%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258558258615%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd258559258619%_))
                        (let ((_%e258567258625%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd258559258619%_))))
                          (let ((_%hd258568258629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258567258625%_)))
                                (_%tl258569258632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258567258625%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258569258632%_))
                                (let ((_%e258570258635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258569258632%_))))
                                  (let ((_%hd258571258639%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258570258635%_)))
                                        (_%tl258572258642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258570258635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl258572258642%_))
                                        (let ((_%e258573258645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl258572258642%_))))
                                          (let ((_%hd258574258649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e258573258645%_)))
                                                (_%tl258575258652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e258573258645%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258575258652%_))
                                                (_%loop258557258604%_
                                                 _%lp-tl258560258622%_
                                                 (cons _%hd258574258649%_
                                                       _%symbol258561258611%_)
                                                 (cons _%hd258571258639%_
                                                       _%method258562258612%_)
                                                 (cons _%hd258568258629%_
                                                       _%type-t258563258613%_))
                                                (_%g258546258581%_
                                                 _%g258547258585%_))))
                                        (_%g258546258581%_
                                         _%g258547258585%_))))
                                (_%g258546258581%_ _%g258547258585%_))))
                        (_%g258546258581%_ _%g258547258585%_))))
                (let ((_%symbol258564258655%_ (reverse _%symbol258561258611%_))
                      (_%method258565258657%_ (reverse _%method258562258612%_))
                      (_%type-t258566258658%_
                       (reverse _%type-t258563258613%_)))
                  ((lambda (_%g258548258660%_
                            _%g258549258662%_
                            _%g258550258663%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g258548258660%_
                                _%g258549258662%_
                                _%g258550258663%_))
                             (let ((__tmp264567
                                    (lambda (_%g258679258684%_
                                             _%g258680258687%_
                                             _%g258681258689%_
                                             _%g258682258691%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g258681258689%_
                                                        (cons _%g258680258687%_
                                                              (cons _%g258679258684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g258682258691%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp264567
                                '()
                                _%g258548258660%_
                                _%g258549258662%_
                                _%g258550258663%_)))))
                   _%symbol258564258655%_
                   _%method258565258657%_
                   _%type-t258566258658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258557258604%_
                                           _%target258554258598%_
                                           '()
                                           '()
                                           '()))
                                        (_%g258546258581%_
                                         _%g258547258585%_)))))
                              (_%g258546258581%_ _%g258547258585%_))))
                      (_%g258546258581%_ _%g258547258585%_)))))
          (_%g258545258694%_ _%$stx258542%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx258699%_)
        (let* ((_%g258703258736%_
                (lambda (_%g258704258732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258704258732%_))))
               (_%g258702258846%_
                (lambda (_%g258704258740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258704258740%_))
                      (let ((_%e258708258743%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258704258740%_))))
                        (let ((_%hd258709258747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258708258743%_)))
                              (_%tl258710258750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258708258743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258710258750%_))
                              (let ((_%e258711258753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258710258750%_))))
                                (let ((_%hd258712258757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258711258753%_)))
                                      (_%tl258713258760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258711258753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl258713258760%_))
                                      (let ((_g264568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl258713258760%_
                                                '0))))
                                        (begin
                                          (let ((_g264569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264568_)
                                                       (##values-length
                                                        _g264568_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264569_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264569_)))
                                          (let ((_%target258714258763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264568_ 0)))
                                                (_%tl258716258766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264568_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258716258766%_))
                                                (letrec ((_%loop258717258769%_
                                                          (lambda (_%hd258715258773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol258721258776%_
                           _%method258722258777%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd258715258773%_))
                        (let ((_%e258718258779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd258715258773%_))))
                          (let ((_%lp-hd258719258783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258718258779%_)))
                                (_%lp-tl258720258786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258718258779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd258719258783%_))
                                (let ((_%e258725258789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd258719258783%_))))
                                  (let ((_%hd258726258793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258725258789%_)))
                                        (_%tl258727258796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258725258789%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl258727258796%_))
                                        (let ((_%e258728258799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl258727258796%_))))
                                          (let ((_%hd258729258803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e258728258799%_)))
                                                (_%tl258730258806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e258728258799%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258730258806%_))
                                                (_%loop258717258769%_
                                                 _%lp-tl258720258786%_
                                                 (cons _%hd258729258803%_
                                                       _%symbol258721258776%_)
                                                 (cons _%hd258726258793%_
                                                       _%method258722258777%_))
                                                (_%g258703258736%_
                                                 _%g258704258740%_))))
                                        (_%g258703258736%_
                                         _%g258704258740%_))))
                                (_%g258703258736%_ _%g258704258740%_))))
                        (let ((_%symbol258723258809%_
                               (reverse _%symbol258721258776%_))
                              (_%method258724258811%_
                               (reverse _%method258722258777%_)))
                          ((lambda (_%g258705258813%_
                                    _%g258706258815%_
                                    _%g258707258816%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g258705258813%_
                                        _%g258706258815%_))
                                     (let ((__tmp264570
                                            (lambda (_%g258834258838%_
                                                     _%g258835258841%_
                                                     _%g258836258843%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g258707258816%_
                                                                (cons _%g258835258841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g258834258838%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g258836258843%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp264570
                                        '()
                                        _%g258705258813%_
                                        _%g258706258815%_)))))
                           _%symbol258723258809%_
                           _%method258724258811%_
                           _%hd258712258757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop258717258769%_
                                                   _%target258714258763%_
                                                   '()
                                                   '()))
                                                (_%g258703258736%_
                                                 _%g258704258740%_)))))
                                      (_%g258703258736%_ _%g258704258740%_))))
                              (_%g258703258736%_ _%g258704258740%_))))
                      (_%g258703258736%_ _%g258704258740%_)))))
          (_%g258702258846%_ _%$stx258699%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx258851%_)
        (let* ((_%g258855258869%_
                (lambda (_%g258856258865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258856258865%_))))
               (_%g258854258910%_
                (lambda (_%g258856258873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258856258873%_))
                      (let ((_%e258858258876%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258856258873%_))))
                        (let ((_%hd258859258880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258858258876%_)))
                              (_%tl258860258883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258858258876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258860258883%_))
                              (let ((_%e258861258886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258860258883%_))))
                                (let ((_%hd258862258890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258861258886%_)))
                                      (_%tl258863258893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258861258886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258863258893%_))
                                      ((lambda (_%g258857258896%_)
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
                                                           (cons _%g258857258896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258862258890%_)
                                      (_%g258855258869%_ _%g258856258873%_))))
                              (_%g258855258869%_ _%g258856258873%_))))
                      (_%g258855258869%_ _%g258856258873%_)))))
          (_%g258854258910%_ _%$stx258851%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx258914%_)
        (let* ((_%g258918258972%_
                (lambda (_%g258919258968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258919258968%_))))
               (_%g258917259153%_
                (lambda (_%g258919258976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258919258976%_))
                      (let ((_%e258931258979%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258919258976%_))))
                        (let ((_%hd258932258983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258931258979%_)))
                              (_%tl258933258986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258931258979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258933258986%_))
                              (let ((_%e258934258989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258933258986%_))))
                                (let ((_%hd258935258993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258934258989%_)))
                                      (_%tl258936258996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258934258989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258936258996%_))
                                      (let ((_%e258937258999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258936258996%_))))
                                        (let ((_%hd258938259003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258937258999%_)))
                                              (_%tl258939259006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258937258999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258939259006%_))
                                              (let ((_%e258940259009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258939259006%_))))
                                                (let ((_%hd258941259013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258940259009%_)))
                                                      (_%tl258942259016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258940259009%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258942259016%_))
                                                      (let ((_%e258943259019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl258942259016%_))))
                (let ((_%hd258944259023%_
                       (let () (declare (not safe)) (##car _%e258943259019%_)))
                      (_%tl258945259026%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e258943259019%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258945259026%_))
                      (let ((_%e258946259029%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258945259026%_))))
                        (let ((_%hd258947259033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258946259029%_)))
                              (_%tl258948259036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258946259029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258948259036%_))
                              (let ((_%e258949259039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258948259036%_))))
                                (let ((_%hd258950259043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258949259039%_)))
                                      (_%tl258951259046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258949259039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258951259046%_))
                                      (let ((_%e258952259049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258951259046%_))))
                                        (let ((_%hd258953259053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258952259049%_)))
                                              (_%tl258954259056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258952259049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258954259056%_))
                                              (let ((_%e258955259059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258954259056%_))))
                                                (let ((_%hd258956259063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258955259059%_)))
                                                      (_%tl258957259066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258955259059%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl258957259066%_))
                                                      (let ((_%e258958259069%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl258957259066%_))))
                (let ((_%hd258959259073%_
                       (let () (declare (not safe)) (##car _%e258958259069%_)))
                      (_%tl258960259076%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e258958259069%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258960259076%_))
                      (let ((_%e258961259079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258960259076%_))))
                        (let ((_%hd258962259083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258961259079%_)))
                              (_%tl258963259086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258961259079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258963259086%_))
                              (let ((_%e258964259089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258963259086%_))))
                                (let ((_%hd258965259093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258964259089%_)))
                                      (_%tl258966259096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258964259089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258966259096%_))
                                      ((lambda (_%g258920259099%_
                                                _%g258921259101%_
                                                _%g258922259102%_
                                                _%g258923259103%_
                                                _%g258924259104%_
                                                _%g258925259105%_
                                                _%g258926259106%_
                                                _%g258927259107%_
                                                _%g258928259108%_
                                                _%g258929259109%_
                                                _%g258930259110%_)
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
                                                           (cons _%g258930259110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g258929259109%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g258928259108%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258927259107%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258926259106%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g258925259105%_ '()))
                                           (cons _%g258924259104%_
                                                 (cons _%g258923259103%_
                                                       (cons _%g258922259102%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258921259101%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g258920259099%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd258965259093%_
                                       _%hd258962259083%_
                                       _%hd258959259073%_
                                       _%hd258956259063%_
                                       _%hd258953259053%_
                                       _%hd258950259043%_
                                       _%hd258947259033%_
                                       _%hd258944259023%_
                                       _%hd258941259013%_
                                       _%hd258938259003%_
                                       _%hd258935258993%_)
                                      (_%g258918258972%_ _%g258919258976%_))))
                              (_%g258918258972%_ _%g258919258976%_))))
                      (_%g258918258972%_ _%g258919258976%_))))
              (_%g258918258972%_ _%g258919258976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258918258972%_
                                               _%g258919258976%_))))
                                      (_%g258918258972%_ _%g258919258976%_))))
                              (_%g258918258972%_ _%g258919258976%_))))
                      (_%g258918258972%_ _%g258919258976%_))))
              (_%g258918258972%_ _%g258919258976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258918258972%_
                                               _%g258919258976%_))))
                                      (_%g258918258972%_ _%g258919258976%_))))
                              (_%g258918258972%_ _%g258919258976%_))))
                      (_%g258918258972%_ _%g258919258976%_)))))
          (_%g258917259153%_ _%$stx258914%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx259157%_)
        (let* ((_%g259161259175%_
                (lambda (_%g259162259171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259162259171%_))))
               (_%g259160259216%_
                (lambda (_%g259162259179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259162259179%_))
                      (let ((_%e259164259182%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259162259179%_))))
                        (let ((_%hd259165259186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259164259182%_)))
                              (_%tl259166259189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259164259182%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259166259189%_))
                              (let ((_%e259167259192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259166259189%_))))
                                (let ((_%hd259168259196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259167259192%_)))
                                      (_%tl259169259199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259167259192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259169259199%_))
                                      ((lambda (_%g259163259202%_)
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
                                                           (cons _%g259163259202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259168259196%_)
                                      (_%g259161259175%_ _%g259162259179%_))))
                              (_%g259161259175%_ _%g259162259179%_))))
                      (_%g259161259175%_ _%g259162259179%_)))))
          (_%g259160259216%_ _%$stx259157%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx259220%_)
        (let* ((_%g259224259238%_
                (lambda (_%g259225259234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259225259234%_))))
               (_%g259223259279%_
                (lambda (_%g259225259242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259225259242%_))
                      (let ((_%e259227259245%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259225259242%_))))
                        (let ((_%hd259228259249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259227259245%_)))
                              (_%tl259229259252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259227259245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259229259252%_))
                              (let ((_%e259230259255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259229259252%_))))
                                (let ((_%hd259231259259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259230259255%_)))
                                      (_%tl259232259262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259230259255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259232259262%_))
                                      ((lambda (_%g259226259265%_)
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
                                                           (cons _%g259226259265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259231259259%_)
                                      (_%g259224259238%_ _%g259225259242%_))))
                              (_%g259224259238%_ _%g259225259242%_))))
                      (_%g259224259238%_ _%g259225259242%_)))))
          (_%g259223259279%_ _%$stx259220%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx259283%_)
        (let* ((_%g259287259309%_
                (lambda (_%g259288259305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259288259305%_))))
               (_%g259286259378%_
                (lambda (_%g259288259313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259288259313%_))
                      (let ((_%e259292259316%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259288259313%_))))
                        (let ((_%hd259293259320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259292259316%_)))
                              (_%tl259294259323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259292259316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259294259323%_))
                              (let ((_%e259295259326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259294259323%_))))
                                (let ((_%hd259296259330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259295259326%_)))
                                      (_%tl259297259333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259295259326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259297259333%_))
                                      (let ((_%e259298259336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259297259333%_))))
                                        (let ((_%hd259299259340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259298259336%_)))
                                              (_%tl259300259343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259298259336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259300259343%_))
                                              (let ((_%e259301259346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259300259343%_))))
                                                (let ((_%hd259302259350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259301259346%_)))
                                                      (_%tl259303259353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259301259346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259303259353%_))
                                                      ((lambda (_%g259289259356%_
                                                                _%g259290259358%_
                                                                _%g259291259359%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259291259359%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g259290259358%_ '()))
                                   (cons _%g259289259356%_ '())))))
               _%hd259302259350%_
               _%hd259299259340%_
               _%hd259296259330%_)
              (_%g259287259309%_ _%g259288259313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259287259309%_
                                               _%g259288259313%_))))
                                      (_%g259287259309%_ _%g259288259313%_))))
                              (_%g259287259309%_ _%g259288259313%_))))
                      (_%g259287259309%_ _%g259288259313%_)))))
          (_%g259286259378%_ _%$stx259283%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx259382%_)
        (let* ((_%g259386259408%_
                (lambda (_%g259387259404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259387259404%_))))
               (_%g259385259477%_
                (lambda (_%g259387259412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259387259412%_))
                      (let ((_%e259391259415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259387259412%_))))
                        (let ((_%hd259392259419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259391259415%_)))
                              (_%tl259393259422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259391259415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259393259422%_))
                              (let ((_%e259394259425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259393259422%_))))
                                (let ((_%hd259395259429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259394259425%_)))
                                      (_%tl259396259432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259394259425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259396259432%_))
                                      (let ((_%e259397259435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259396259432%_))))
                                        (let ((_%hd259398259439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259397259435%_)))
                                              (_%tl259399259442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259397259435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259399259442%_))
                                              (let ((_%e259400259445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259399259442%_))))
                                                (let ((_%hd259401259449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259400259445%_)))
                                                      (_%tl259402259452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259400259445%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259402259452%_))
                                                      ((lambda (_%g259388259455%_
                                                                _%g259389259457%_
                                                                _%g259390259458%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259390259458%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g259389259457%_ '()))
                                   (cons _%g259388259455%_ '())))))
               _%hd259401259449%_
               _%hd259398259439%_
               _%hd259395259429%_)
              (_%g259386259408%_ _%g259387259412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259386259408%_
                                               _%g259387259412%_))))
                                      (_%g259386259408%_ _%g259387259412%_))))
                              (_%g259386259408%_ _%g259387259412%_))))
                      (_%g259386259408%_ _%g259387259412%_)))))
          (_%g259385259477%_ _%$stx259382%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx259481%_)
        (let* ((_%g259485259499%_
                (lambda (_%g259486259495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259486259495%_))))
               (_%g259484259540%_
                (lambda (_%g259486259503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259486259503%_))
                      (let ((_%e259488259506%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259486259503%_))))
                        (let ((_%hd259489259510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259488259506%_)))
                              (_%tl259490259513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259488259506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259490259513%_))
                              (let ((_%e259491259516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259490259513%_))))
                                (let ((_%hd259492259520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259491259516%_)))
                                      (_%tl259493259523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259491259516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259493259523%_))
                                      ((lambda (_%g259487259526%_)
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
                                                           (cons _%g259487259526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd259492259520%_)
                                      (_%g259485259499%_ _%g259486259503%_))))
                              (_%g259485259499%_ _%g259486259503%_))))
                      (_%g259485259499%_ _%g259486259503%_)))))
          (_%g259484259540%_ _%$stx259481%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx259544%_)
        (let* ((_%g259548259566%_
                (lambda (_%g259549259562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259549259562%_))))
               (_%g259547259621%_
                (lambda (_%g259549259570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259549259570%_))
                      (let ((_%e259552259573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259549259570%_))))
                        (let ((_%hd259553259577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259552259573%_)))
                              (_%tl259554259580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259552259573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259554259580%_))
                              (let ((_%e259555259583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259554259580%_))))
                                (let ((_%hd259556259587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259555259583%_)))
                                      (_%tl259557259590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259555259583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259557259590%_))
                                      (let ((_%e259558259593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259557259590%_))))
                                        (let ((_%hd259559259597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259558259593%_)))
                                              (_%tl259560259600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259558259593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259560259600%_))
                                              ((lambda (_%g259550259603%_
                                                        _%g259551259605%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259551259605%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259550259603%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259559259597%_
                                               _%hd259556259587%_)
                                              (_%g259548259566%_
                                               _%g259549259570%_))))
                                      (_%g259548259566%_ _%g259549259570%_))))
                              (_%g259548259566%_ _%g259549259570%_))))
                      (_%g259548259566%_ _%g259549259570%_)))))
          (_%g259547259621%_ _%$stx259544%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx259625%_)
        (let* ((_%__stx263941263942%_ _%$stx259625%_)
               (_%g259632259693%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263941263942%_)))))
          (let ((_%__kont263944263945%_
                 (lambda (_%g259634259931%_ _%g259635259933%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259635259933%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259634259931%_ '()))
                                     '())))))
                (_%__kont263946263947%_
                 (lambda (_%g259645259870%_
                          _%g259646259872%_
                          _%g259647259873%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259647259873%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259646259872%_ '()))
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
                                 (cons _%g259645259870%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont263948263949%_
                 (lambda (_%g259664259794%_ _%g259665259796%_)
                   (cons _%g259665259796%_
                         (cons _%g259664259794%_ (cons '#f '())))))
                (_%__kont263950263951%_
                 (lambda (_%g259672259744%_
                          _%g259673259746%_
                          _%g259674259747%_)
                   (cons _%g259674259747%_
                         (cons _%g259673259746%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g259672259744%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx263941263942%_))
                (let ((_%e259636259901%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx263941263942%_))))
                  (let ((_%tl259638259908%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259636259901%_)))
                        (_%hd259637259905%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259636259901%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259638259908%_))
                        (let ((_%e259639259911%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl259638259908%_))))
                          (let ((_%tl259641259918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259639259911%_)))
                                (_%hd259640259915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259639259911%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259641259918%_))
                                (let ((_%e259642259921%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259641259918%_))))
                                  (let ((_%tl259644259928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259642259921%_)))
                                        (_%hd259643259925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259642259921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259644259928%_))
                                        (_%__kont263944263945%_
                                         _%hd259643259925%_
                                         _%hd259640259915%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259644259928%_))
                                            (let ((_%e259657259846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259644259928%_))))
                                              (let ((_%tl259659259853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259657259846%_)))
                                                    (_%hd259658259850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259657259846%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259658259850%_))
                                                    (let ((_%e259660259856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259658259850%_))))
                                                      (if (equal? _%e259660259856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl259659259853%_))
                      (let ((_%e259661259860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl259659259853%_))))
                        (let ((_%tl259663259867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259661259860%_)))
                              (_%hd259662259864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259661259860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259663259867%_))
                              (_%__kont263946263947%_
                               _%hd259662259864%_
                               _%hd259643259925%_
                               _%hd259640259915%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd259643259925%_))
                                  (let ((_%e259684259730%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd259643259925%_))))
                                    (declare (not safe))
                                    (_%g259632259693%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g259632259693%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd259643259925%_))
                          (let ((_%e259684259730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259643259925%_))))
                            (if (equal? _%e259684259730%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl259659259853%_))
                                    (_%__kont263950263951%_
                                     _%hd259658259850%_
                                     _%hd259640259915%_
                                     _%hd259637259905%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g259632259693%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g259632259693%_))))
                          (let () (declare (not safe)) (_%g259632259693%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd259643259925%_))
                      (let ((_%e259684259730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd259643259925%_))))
                        (if (equal? _%e259684259730%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl259659259853%_))
                                (_%__kont263950263951%_
                                 _%hd259658259850%_
                                 _%hd259640259915%_
                                 _%hd259637259905%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g259632259693%_)))
                            (let () (declare (not safe)) (_%g259632259693%_))))
                      (let () (declare (not safe)) (_%g259632259693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd259643259925%_))
                                                        (let ((_%e259684259730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd259643259925%_))))
                  (if (equal? _%e259684259730%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259659259853%_))
                          (_%__kont263950263951%_
                           _%hd259658259850%_
                           _%hd259640259915%_
                           _%hd259637259905%_)
                          (let () (declare (not safe)) (_%g259632259693%_)))
                      (let () (declare (not safe)) (_%g259632259693%_))))
                (let () (declare (not safe)) (_%g259632259693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd259643259925%_))
                                                (let ((_%e259684259730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd259643259925%_))))
                                                  (declare (not safe))
                                                  (_%g259632259693%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259632259693%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl259641259918%_))
                                    (_%__kont263948263949%_
                                     _%hd259640259915%_
                                     _%hd259637259905%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g259632259693%_))))))
                        (let () (declare (not safe)) (_%g259632259693%_)))))
                (let () (declare (not safe)) (_%g259632259693%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx259952%_)
        (let* ((_%g259956259985%_
                (lambda (_%g259957259981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259957259981%_))))
               (_%g259955260090%_
                (lambda (_%g259957259989%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259957259989%_))
                      (let ((_%e259959259992%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259957259989%_))))
                        (let ((_%hd259960259996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259959259992%_)))
                              (_%tl259961259999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259959259992%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259961259999%_))
                              (let ((_g264571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259961259999%_
                                        '0))))
                                (begin
                                  (let ((_g264572_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264571_)
                                               (##values-length _g264571_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264572_ 2)))
                                        (error "Context expects 2 values"
                                               _g264572_)))
                                  (let ((_%target259962260002%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264571_ 0)))
                                        (_%tl259964260005%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264571_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259964260005%_))
                                        (letrec ((_%loop259965260008%_
                                                  (lambda (_%hd259963260012%_
                                                           _%clause259969260015%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259963260012%_))
                                                        (let ((_%e259966260017%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259963260012%_))))
                  (let ((_%lp-hd259967260021%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259966260017%_)))
                        (_%lp-tl259968260024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259966260017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd259967260021%_))
                        (let ((_g264573_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd259967260021%_
                                  '0))))
                          (begin
                            (let ((_g264574_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g264573_)
                                         (##values-length _g264573_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g264574_ 2)))
                                  (error "Context expects 2 values"
                                         _g264574_)))
                            (let ((_%target259971260027%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g264573_ 0)))
                                  (_%tl259973260030%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g264573_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259973260030%_))
                                  (letrec ((_%loop259974260033%_
                                            (lambda (_%hd259972260037%_
                                                     _%clause259978260040%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd259972260037%_))
                                                  (let ((_%e259975260042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd259972260037%_))))
                                                    (let ((_%lp-hd259976260046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259975260042%_)))
                                                          (_%lp-tl259977260049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259975260042%_))))
                                                      (_%loop259974260033%_
                                                       _%lp-tl259977260049%_
                                                       (cons _%lp-hd259976260046%_
                                                             _%clause259978260040%_))))
                                                  (let ((_%clause259979260052%_
                                                         (reverse _%clause259978260040%_)))
                                                    (_%loop259965260008%_
                                                     _%lp-tl259968260024%_
                                                     (cons _%clause259979260052%_
                                                           _%clause259969260015%_)))))))
                                    (_%loop259974260033%_
                                     _%target259971260027%_
                                     '()))
                                  (_%g259956259985%_ _%g259957259989%_)))))
                        (_%g259956259985%_ _%g259957259989%_))))
                (let ((_%clause259970260055%_
                       (reverse _%clause259969260015%_)))
                  ((lambda (_%g259958260058%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp264575
                                              (lambda (_%g260073260078%_
                                                       _%g260074260081%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp264576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g260075260084%_ _%g260076260087%_)
                             (cons _%g260075260084%_ _%g260076260087%_))))
                      (declare (not safe))
                      (foldr__0 __tmp264576 '() _%g260073260078%_)))
              _%g260074260081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp264575
                                          '()
                                          _%g259958260058%_)))
                                 '())))
                   _%clause259970260055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259965260008%_
                                           _%target259962260002%_
                                           '()))
                                        (_%g259956259985%_
                                         _%g259957259989%_)))))
                              (_%g259956259985%_ _%g259957259989%_))))
                      (_%g259956259985%_ _%g259957259989%_)))))
          (_%g259955260090%_ _%$stx259952%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx260096%_)
        (let* ((_%g260100260118%_
                (lambda (_%g260101260114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260101260114%_))))
               (_%g260099260173%_
                (lambda (_%g260101260122%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260101260122%_))
                      (let ((_%e260104260125%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260101260122%_))))
                        (let ((_%hd260105260129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260104260125%_)))
                              (_%tl260106260132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260104260125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260106260132%_))
                              (let ((_%e260107260135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260106260132%_))))
                                (let ((_%hd260108260139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260107260135%_)))
                                      (_%tl260109260142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260107260135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260109260142%_))
                                      (let ((_%e260110260145%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260109260142%_))))
                                        (let ((_%hd260111260149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260110260145%_)))
                                              (_%tl260112260152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260110260145%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260112260152%_))
                                              ((lambda (_%g260102260155%_
                                                        _%g260103260157%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260103260157%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260102260155%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260111260149%_
                                               _%hd260108260139%_)
                                              (_%g260100260118%_
                                               _%g260101260122%_))))
                                      (_%g260100260118%_ _%g260101260122%_))))
                              (_%g260100260118%_ _%g260101260122%_))))
                      (_%g260100260118%_ _%g260101260122%_)))))
          (_%g260099260173%_ _%$stx260096%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx260177%_)
        (let* ((_%g260181260199%_
                (lambda (_%g260182260195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260182260195%_))))
               (_%g260180260254%_
                (lambda (_%g260182260203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260182260203%_))
                      (let ((_%e260185260206%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260182260203%_))))
                        (let ((_%hd260186260210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260185260206%_)))
                              (_%tl260187260213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260185260206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260187260213%_))
                              (let ((_%e260188260216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260187260213%_))))
                                (let ((_%hd260189260220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260188260216%_)))
                                      (_%tl260190260223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260188260216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260190260223%_))
                                      (let ((_%e260191260226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260190260223%_))))
                                        (let ((_%hd260192260230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260191260226%_)))
                                              (_%tl260193260233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260191260226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260193260233%_))
                                              ((lambda (_%g260183260236%_
                                                        _%g260184260238%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260184260238%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260183260236%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260192260230%_
                                               _%hd260189260220%_)
                                              (_%g260181260199%_
                                               _%g260182260203%_))))
                                      (_%g260181260199%_ _%g260182260203%_))))
                              (_%g260181260199%_ _%g260182260203%_))))
                      (_%g260181260199%_ _%g260182260203%_)))))
          (_%g260180260254%_ _%$stx260177%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx260258%_)
        (let* ((_%g260262260291%_
                (lambda (_%g260263260287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260263260287%_))))
               (_%g260261260387%_
                (lambda (_%g260263260295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260263260295%_))
                      (let ((_%e260266260298%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260263260295%_))))
                        (let ((_%hd260267260302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260266260298%_)))
                              (_%tl260268260305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260266260298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260268260305%_))
                              (let ((_g264577_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260268260305%_
                                        '0))))
                                (begin
                                  (let ((_g264578_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264577_)
                                               (##values-length _g264577_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264578_ 2)))
                                        (error "Context expects 2 values"
                                               _g264578_)))
                                  (let ((_%target260269260308%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264577_ 0)))
                                        (_%tl260271260311%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264577_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260271260311%_))
                                        (letrec ((_%loop260272260314%_
                                                  (lambda (_%hd260270260318%_
                                                           _%rule260276260321%_
                                                           _%proc260277260322%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260270260318%_))
                                                        (let ((_%e260273260324%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260270260318%_))))
                  (let ((_%lp-hd260274260328%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260273260324%_)))
                        (_%lp-tl260275260331%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260273260324%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260274260328%_))
                        (let ((_%e260280260334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260274260328%_))))
                          (let ((_%hd260281260338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260280260334%_)))
                                (_%tl260282260341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260280260334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260282260341%_))
                                (let ((_%e260283260344%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260282260341%_))))
                                  (let ((_%hd260284260348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260283260344%_)))
                                        (_%tl260285260351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260283260344%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260285260351%_))
                                        (_%loop260272260314%_
                                         _%lp-tl260275260331%_
                                         (cons _%hd260284260348%_
                                               _%rule260276260321%_)
                                         (cons _%hd260281260338%_
                                               _%proc260277260322%_))
                                        (_%g260262260291%_
                                         _%g260263260295%_))))
                                (_%g260262260291%_ _%g260263260295%_))))
                        (_%g260262260291%_ _%g260263260295%_))))
                (let ((_%rule260278260354%_ (reverse _%rule260276260321%_))
                      (_%proc260279260356%_ (reverse _%proc260277260322%_)))
                  ((lambda (_%g260264260358%_ _%g260265260360%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260264260358%_
                                _%g260265260360%_))
                             (let ((__tmp264579
                                    (lambda (_%g260375260379%_
                                             _%g260376260382%_
                                             _%g260377260384%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g260376260382%_
                                                        (cons _%g260375260379%_
                                                              '())))
                                            _%g260377260384%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp264579
                                '()
                                _%g260264260358%_
                                _%g260265260360%_)))))
                   _%rule260278260354%_
                   _%proc260279260356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260272260314%_
                                           _%target260269260308%_
                                           '()
                                           '()))
                                        (_%g260262260291%_
                                         _%g260263260295%_)))))
                              (_%g260262260291%_ _%g260263260295%_))))
                      (_%g260262260291%_ _%g260263260295%_)))))
          (_%g260261260387%_ _%$stx260258%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx260392%_)
        (let* ((_%g260396260414%_
                (lambda (_%g260397260410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260397260410%_))))
               (_%g260395260469%_
                (lambda (_%g260397260418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260397260418%_))
                      (let ((_%e260400260421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260397260418%_))))
                        (let ((_%hd260401260425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260400260421%_)))
                              (_%tl260402260428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260400260421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260402260428%_))
                              (let ((_%e260403260431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260402260428%_))))
                                (let ((_%hd260404260435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260403260431%_)))
                                      (_%tl260405260438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260403260431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260405260438%_))
                                      (let ((_%e260406260441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260405260438%_))))
                                        (let ((_%hd260407260445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260406260441%_)))
                                              (_%tl260408260448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260406260441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260408260448%_))
                                              ((lambda (_%g260398260451%_
                                                        _%g260399260453%_)
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
                                                   (cons _%g260399260453%_
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
                 (cons _%g260398260451%_ '())))
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
                                   (cons _%g260399260453%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260407260445%_
                                               _%hd260404260435%_)
                                              (_%g260396260414%_
                                               _%g260397260418%_))))
                                      (_%g260396260414%_ _%g260397260418%_))))
                              (_%g260396260414%_ _%g260397260418%_))))
                      (_%g260396260414%_ _%g260397260418%_)))))
          (_%g260395260469%_ _%$stx260392%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx260473%_)
        (let* ((_%__stx264059264060%_ _%$stx260473%_)
               (_%g260478260503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264059264060%_)))))
          (let ((_%__kont264062264063%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont264064264065%_
                 (lambda (_%g260483260550%_
                          _%g260484260552%_
                          _%g260485260553%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g260485260553%_
                                           (cons _%g260484260552%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g260483260550%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264059264060%_))
                (let ((_%e260480260579%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx264059264060%_))))
                  (let ((_%tl260482260586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260480260579%_)))
                        (_%hd260481260583%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260480260579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl260482260586%_))
                        (_%__kont264062264063%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260482260586%_))
                            (let ((_%e260489260520%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl260482260586%_))))
                              (let ((_%tl260491260527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260489260520%_)))
                                    (_%hd260490260524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260489260520%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd260490260524%_))
                                    (let ((_%e260492260530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd260490260524%_))))
                                      (let ((_%tl260494260537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e260492260530%_)))
                                            (_%hd260493260534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e260492260530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl260494260537%_))
                                            (let ((_%e260495260540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl260494260537%_))))
                                              (let ((_%tl260497260547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e260495260540%_)))
                                                    (_%hd260496260544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e260495260540%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl260497260547%_))
                                                    (_%__kont264064264065%_
                                                     _%tl260491260527%_
                                                     _%hd260496260544%_
                                                     _%hd260493260534%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g260478260503%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g260478260503%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g260478260503%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g260478260503%_))))))
                (let () (declare (not safe)) (_%g260478260503%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx260597%_)
        (let* ((_%__stx264103264104%_ _%$stx260597%_)
               (_%g260602260633%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264103264104%_)))))
          (let ((_%__kont264106264107%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont264108264109%_
                 (lambda (_%g260607260698%_
                          _%g260608260700%_
                          _%g260609260701%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g260609260701%_
                                           (let ((__tmp264580
                                                  (lambda (_%g260721260724%_
                                                           _%g260722260727%_)
                                                    (cons _%g260721260724%_
                                                          _%g260722260727%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp264580
                                              '()
                                              _%g260608260700%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g260607260698%_)
                                     '()))))))
            (let ((_%__match264146264147%_
                   (lambda (_%e260610260640%_
                            _%hd260611260644%_
                            _%tl260612260647%_
                            _%e260613260650%_
                            _%hd260614260654%_
                            _%tl260615260657%_
                            _%e260616260660%_
                            _%hd260617260664%_
                            _%tl260618260667%_
                            _%__splice264110264111%_
                            _%target260619260670%_
                            _%tl260621260673%_)
                     (letrec ((_%loop260622260676%_
                               (lambda (_%hd260620260680%_ _%sig260626260683%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd260620260680%_))
                                     (let ((_%e260623260685%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd260620260680%_))))
                                       (let ((_%lp-tl260625260692%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e260623260685%_)))
                                             (_%lp-hd260624260689%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e260623260685%_))))
                                         (_%loop260622260676%_
                                          _%lp-tl260625260692%_
                                          (cons _%lp-hd260624260689%_
                                                _%sig260626260683%_))))
                                     (let ((_%sig260627260695%_
                                            (reverse _%sig260626260683%_)))
                                       (_%__kont264108264109%_
                                        _%tl260615260657%_
                                        _%sig260627260695%_
                                        _%hd260617260664%_))))))
                       (_%loop260622260676%_ _%target260619260670%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264103264104%_))
                  (let ((_%e260604260737%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264103264104%_))))
                    (let ((_%tl260606260744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260604260737%_)))
                          (_%hd260605260741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260604260737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260606260744%_))
                          (_%__kont264106264107%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260606260744%_))
                              (let ((_%e260613260650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260606260744%_))))
                                (let ((_%tl260615260657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260613260650%_)))
                                      (_%hd260614260654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260613260650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260614260654%_))
                                      (let ((_%e260616260660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260614260654%_))))
                                        (let ((_%tl260618260667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260616260660%_)))
                                              (_%hd260617260664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260616260660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl260618260667%_))
                                              (let ((_%__splice264110264111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl260618260667%_
                                                        '0))))
                                                (let ((_%tl260621260673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264110264111%_
                                                          '1)))
                                                      (_%target260619260670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264110264111%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260621260673%_))
                                                      (_%__match264146264147%_
                                                       _%e260604260737%_
                                                       _%hd260605260741%_
                                                       _%tl260606260744%_
                                                       _%e260613260650%_
                                                       _%hd260614260654%_
                                                       _%tl260615260657%_
                                                       _%e260616260660%_
                                                       _%hd260617260664%_
                                                       _%tl260618260667%_
                                                       _%__splice264110264111%_
                                                       _%target260619260670%_
                                                       _%tl260621260673%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260602260633%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g260602260633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260602260633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g260602260633%_))))))
                  (let () (declare (not safe)) (_%g260602260633%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx260756%_)
        (let* ((_%__stx264149264150%_ _%$stx260756%_)
               (_%g260761260808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264149264150%_)))))
          (let ((_%__kont264152264153%_
                 (lambda (_%g260763260966%_ _%g260764260968%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g260764260968%_
                               (let ((__tmp264581
                                      (lambda (_%g260988260991%_
                                               _%g260989260994%_)
                                        (cons _%g260988260991%_
                                              _%g260989260994%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp264581
                                  '()
                                  _%g260763260966%_))))))
                (_%__kont264156264157%_
                 (lambda (_%g260786260863%_ _%g260787260865%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g260787260865%_
                               (let ((__tmp264582
                                      (lambda (_%g260882260885%_
                                               _%g260883260888%_)
                                        (cons _%g260882260885%_
                                              _%g260883260888%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp264582
                                  '()
                                  _%g260786260863%_)))))))
            (let* ((_%__match264216264217%_
                    (lambda (_%e260788260815%_
                             _%hd260789260819%_
                             _%tl260790260822%_
                             _%e260791260825%_
                             _%hd260792260829%_
                             _%tl260793260832%_
                             _%__splice264158264159%_
                             _%target260794260835%_
                             _%tl260796260838%_)
                      (letrec ((_%loop260797260841%_
                                (lambda (_%hd260795260845%_
                                         _%sig260801260848%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260795260845%_))
                                      (let ((_%e260798260850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260795260845%_))))
                                        (let ((_%lp-tl260800260857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260798260850%_)))
                                              (_%lp-hd260799260854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260798260850%_))))
                                          (_%loop260797260841%_
                                           _%lp-tl260800260857%_
                                           (cons _%lp-hd260799260854%_
                                                 _%sig260801260848%_))))
                                      (let ((_%sig260802260860%_
                                             (reverse _%sig260801260848%_)))
                                        (_%__kont264156264157%_
                                         _%sig260802260860%_
                                         _%hd260792260829%_))))))
                        (_%loop260797260841%_ _%target260794260835%_ '()))))
                   (_%__match264208264209%_
                    (lambda (_%e260788260815%_
                             _%hd260789260819%_
                             _%tl260790260822%_
                             _%e260791260825%_
                             _%hd260792260829%_
                             _%tl260793260832%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl260793260832%_))
                          (let ((_%__splice264158264159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl260793260832%_
                                    '0))))
                            (let ((_%tl260796260838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264158264159%_
                                      '1)))
                                  (_%target260794260835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264158264159%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260796260838%_))
                                  (_%__match264216264217%_
                                   _%e260788260815%_
                                   _%hd260789260819%_
                                   _%tl260790260822%_
                                   _%e260791260825%_
                                   _%hd260792260829%_
                                   _%tl260793260832%_
                                   _%__splice264158264159%_
                                   _%target260794260835%_
                                   _%tl260796260838%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g260761260808%_)))))
                          (let () (declare (not safe)) (_%g260761260808%_)))))
                   (_%__match264196264197%_
                    (lambda (_%e260765260898%_
                             _%hd260766260902%_
                             _%tl260767260905%_
                             _%e260768260908%_
                             _%hd260769260912%_
                             _%tl260770260915%_
                             _%e260771260918%_
                             _%hd260772260922%_
                             _%tl260773260925%_
                             _%e260774260928%_
                             _%hd260775260932%_
                             _%tl260776260935%_
                             _%__splice264154264155%_
                             _%target260777260938%_
                             _%tl260779260941%_)
                      (letrec ((_%loop260780260944%_
                                (lambda (_%hd260778260948%_
                                         _%sig260784260951%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd260778260948%_))
                                      (let ((_%e260781260953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd260778260948%_))))
                                        (let ((_%lp-tl260783260960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260781260953%_)))
                                              (_%lp-hd260782260957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260781260953%_))))
                                          (_%loop260780260944%_
                                           _%lp-tl260783260960%_
                                           (cons _%lp-hd260782260957%_
                                                 _%sig260784260951%_))))
                                      (let ((_%sig260785260963%_
                                             (reverse _%sig260784260951%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl260773260925%_))
                                            (_%__kont264152264153%_
                                             _%sig260785260963%_
                                             _%hd260769260912%_)
                                            (_%__match264208264209%_
                                             _%e260765260898%_
                                             _%hd260766260902%_
                                             _%tl260767260905%_
                                             _%e260768260908%_
                                             _%hd260769260912%_
                                             _%tl260770260915%_)))))))
                        (_%loop260780260944%_ _%target260777260938%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264149264150%_))
                  (let ((_%e260765260898%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264149264150%_))))
                    (let ((_%tl260767260905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260765260898%_)))
                          (_%hd260766260902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260765260898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260767260905%_))
                          (let ((_%e260768260908%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260767260905%_))))
                            (let ((_%tl260770260915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260768260908%_)))
                                  (_%hd260769260912%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260768260908%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260770260915%_))
                                  (let ((_%e260771260918%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260770260915%_))))
                                    (let ((_%tl260773260925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260771260918%_)))
                                          (_%hd260772260922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260771260918%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd260772260922%_))
                                          (let ((_%e260774260928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd260772260922%_))))
                                            (let ((_%tl260776260935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260774260928%_)))
                                                  (_%hd260775260932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260774260928%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd260775260932%_))
                                                  (if (let ((__tmp264583
                                                             |gxc[1]#_g264584_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp264583
                                                         _%hd260775260932%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl260776260935%_))
                                                          (let ((_%__splice264154264155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl260776260935%_
                            '0))))
                    (let ((_%tl260779260941%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264154264155%_ '1)))
                          (_%target260777260938%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264154264155%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260779260941%_))
                          (_%__match264196264197%_
                           _%e260765260898%_
                           _%hd260766260902%_
                           _%tl260767260905%_
                           _%e260768260908%_
                           _%hd260769260912%_
                           _%tl260770260915%_
                           _%e260771260918%_
                           _%hd260772260922%_
                           _%tl260773260925%_
                           _%e260774260928%_
                           _%hd260775260932%_
                           _%tl260776260935%_
                           _%__splice264154264155%_
                           _%target260777260938%_
                           _%tl260779260941%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260770260915%_))
                              (let ((_%__splice264158264159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl260770260915%_
                                        '0))))
                                (let ((_%tl260796260838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice264158264159%_
                                          '1)))
                                      (_%target260794260835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice264158264159%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260796260838%_))
                                      (_%__match264216264217%_
                                       _%e260765260898%_
                                       _%hd260766260902%_
                                       _%tl260767260905%_
                                       _%e260768260908%_
                                       _%hd260769260912%_
                                       _%tl260770260915%_
                                       _%__splice264158264159%_
                                       _%target260794260835%_
                                       _%tl260796260838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g260761260808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g260761260808%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl260770260915%_))
                      (let ((_%__splice264158264159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl260770260915%_
                                '0))))
                        (let ((_%tl260796260838%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264158264159%_ '1)))
                              (_%target260794260835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264158264159%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl260796260838%_))
                              (_%__match264216264217%_
                               _%e260765260898%_
                               _%hd260766260902%_
                               _%tl260767260905%_
                               _%e260768260908%_
                               _%hd260769260912%_
                               _%tl260770260915%_
                               _%__splice264158264159%_
                               _%target260794260835%_
                               _%tl260796260838%_)
                              (let ()
                                (declare (not safe))
                                (_%g260761260808%_)))))
                      (let () (declare (not safe)) (_%g260761260808%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl260770260915%_))
                  (let ((_%__splice264158264159%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl260770260915%_
                            '0))))
                    (let ((_%tl260796260838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264158264159%_ '1)))
                          (_%target260794260835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264158264159%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260796260838%_))
                          (_%__match264216264217%_
                           _%e260765260898%_
                           _%hd260766260902%_
                           _%tl260767260905%_
                           _%e260768260908%_
                           _%hd260769260912%_
                           _%tl260770260915%_
                           _%__splice264158264159%_
                           _%target260794260835%_
                           _%tl260796260838%_)
                          (let () (declare (not safe)) (_%g260761260808%_)))))
                  (let () (declare (not safe)) (_%g260761260808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl260770260915%_))
                                                      (let ((_%__splice264158264159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl260770260915%_
                        '0))))
                (let ((_%tl260796260838%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264158264159%_ '1)))
                      (_%target260794260835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264158264159%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl260796260838%_))
                      (_%__match264216264217%_
                       _%e260765260898%_
                       _%hd260766260902%_
                       _%tl260767260905%_
                       _%e260768260908%_
                       _%hd260769260912%_
                       _%tl260770260915%_
                       _%__splice264158264159%_
                       _%target260794260835%_
                       _%tl260796260838%_)
                      (let () (declare (not safe)) (_%g260761260808%_)))))
              (let () (declare (not safe)) (_%g260761260808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl260770260915%_))
                                              (let ((_%__splice264158264159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl260770260915%_
                                                        '0))))
                                                (let ((_%tl260796260838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264158264159%_
                                                          '1)))
                                                      (_%target260794260835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264158264159%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260796260838%_))
                                                      (_%__match264216264217%_
                                                       _%e260765260898%_
                                                       _%hd260766260902%_
                                                       _%tl260767260905%_
                                                       _%e260768260908%_
                                                       _%hd260769260912%_
                                                       _%tl260770260915%_
                                                       _%__splice264158264159%_
                                                       _%target260794260835%_
                                                       _%tl260796260838%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260761260808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g260761260808%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260770260915%_))
                                      (let ((_%__splice264158264159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl260770260915%_
                                                '0))))
                                        (let ((_%tl260796260838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264158264159%_
                                                  '1)))
                                              (_%target260794260835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264158264159%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260796260838%_))
                                              (_%__match264216264217%_
                                               _%e260765260898%_
                                               _%hd260766260902%_
                                               _%tl260767260905%_
                                               _%e260768260908%_
                                               _%hd260769260912%_
                                               _%tl260770260915%_
                                               _%__splice264158264159%_
                                               _%target260794260835%_
                                               _%tl260796260838%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g260761260808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260761260808%_))))))
                          (let () (declare (not safe)) (_%g260761260808%_)))))
                  (let () (declare (not safe)) (_%g260761260808%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx262151%_ _%id262153%_)
        (let ((_%proc262157%_
               (let ((__tmp264585
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id262153%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp264585))))
          (if (procedure? _%proc262157%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx262151%_
                 _%id262153%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx262142%_ _%id262144%_)
        (let ((_%klass262148%_
               (let ((__tmp264586
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id262144%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp264586))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass262148%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx262142%_
                 _%id262144%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx261392%_ _%proc261394%_ _%sig261395%_)
        (letrec ((_%signature-arity261397%_
                  (lambda (_%args262074%_)
                    (let _%loop262077%_ ((_%rest262080%_ _%args262074%_)
                                         (_%count262082%_ '0))
                      (let* ((_%rest262083262094%_ _%rest262080%_)
                             (_%E262087262100%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest262083262094%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K262090262131%_
                               (lambda (_%rest262128%_)
                                 (_%loop262077%_
                                  _%rest262128%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count262082%_ '1)))))
                              (_%K262089262120%_ (lambda () _%count262082%_))
                              (_%K262088262108%_
                               (lambda () (cons _%count262082%_ '()))))
                          (let ((_%try-match262085262124%_
                                 (lambda ()
                                   (if (null? _%rest262083262094%_)
                                       (_%K262089262120%_)
                                       (_%K262088262108%_)))))
                            (if (pair? _%rest262083262094%_)
                                (let* ((_%tl262092262135%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest262083262094%_)))
                                       (_%rest262139%_ _%tl262092262135%_))
                                  (_%K262090262131%_ _%rest262139%_))
                                (_%try-match262085262124%_))))))))
                 (_%make-signature261399%_
                  (lambda (_%args261956%_
                           _%return261958%_
                           _%effect261959%_
                           _%unchecked261960%_)
                    (let ((__tmp264587
                           (lambda (_%g261961261963%_)
                             (|gxc[1]#verify-class!|
                              _%ctx261392%_
                              _%g261961261963%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp264587 _%args261956%_))
                    (|gxc[1]#verify-class!| _%ctx261392%_ _%return261958%_)
                    (if _%unchecked261960%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx261392%_
                         _%unchecked261960%_)
                        '#!void)
                    (let ((_%arity261967%_
                           (_%signature-arity261397%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args261956%_)))))
                      (if _%effect261959%_
                          (let ((_%effect261970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect261959%_))))
                            (if (and (list? _%effect261970%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect261970%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx261392%_
                                   _%proc261394%_
                                   _%effect261970%_))))
                          '#!void)
                      (cons _%arity261967%_
                            (cons (let* ((_%g261973261996%_
                                          (lambda (_%g261974261992%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g261974261992%_))))
                                         (_%g261972262070%_
                                          (lambda (_%g261974262000%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g261974262000%_))
                                                (let ((_%e261979262003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g261974262000%_))))
                                                  (let ((_%hd261980262007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261979262003%_)))
                                                        (_%tl261981262010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261979262003%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl261981262010%_))
                                                        (let ((_%e261982262013%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl261981262010%_))))
                  (let ((_%hd261983262017%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261982262013%_)))
                        (_%tl261984262020%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261982262013%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261984262020%_))
                        (let ((_%e261985262023%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261984262020%_))))
                          (let ((_%hd261986262027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261985262023%_)))
                                (_%tl261987262030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261985262023%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261987262030%_))
                                (let ((_%e261988262033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261987262030%_))))
                                  (let ((_%hd261989262037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261988262033%_)))
                                        (_%tl261990262040%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261988262033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261990262040%_))
                                        ((lambda (_%g261975262043%_
                                                  _%g261976262045%_
                                                  _%g261977262046%_
                                                  _%g261978262047%_)
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
                           (cons _%g261978262047%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261977262046%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g261976262045%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g261975262043%_ '()))
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
                                         _%hd261989262037%_
                                         _%hd261986262027%_
                                         _%hd261983262017%_
                                         _%hd261980262007%_)
                                        (_%g261973261996%_
                                         _%g261974262000%_))))
                                (_%g261973261996%_ _%g261974262000%_))))
                        (_%g261973261996%_ _%g261974262000%_))))
                (_%g261973261996%_ _%g261974262000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261973261996%_
                                                 _%g261974262000%_)))))
                                    (_%g261972262070%_
                                     (list _%args261956%_
                                           _%return261958%_
                                           _%effect261959%_
                                           _%unchecked261960%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx261392%_ _%proc261394%_)
          (let* ((_%__stx264227264228%_ _%sig261395%_)
                 (_%g261406261509%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx264227264228%_)))))
            (let ((_%__kont264230264231%_
                   (lambda (_%g261408261937%_ _%g261409261939%_)
                     (_%make-signature261399%_
                      _%g261409261939%_
                      _%g261408261937%_
                      '#f
                      '#f)))
                  (_%__kont264232264233%_
                   (lambda (_%g261416261888%_
                            _%g261417261890%_
                            _%g261418261891%_)
                     (_%make-signature261399%_
                      _%g261418261891%_
                      _%g261417261890%_
                      _%g261416261888%_
                      '#f)))
                  (_%__kont264234264235%_
                   (lambda (_%g261432261812%_
                            _%g261433261814%_
                            _%g261434261815%_)
                     (_%make-signature261399%_
                      _%g261434261815%_
                      _%g261433261814%_
                      _%g261432261812%_
                      (let ((__tmp264588
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc261394%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp264588)))))
                  (_%__kont264236264237%_
                   (lambda (_%g261452261718%_
                            _%g261453261720%_
                            _%g261454261721%_
                            _%g261455261722%_)
                     (_%make-signature261399%_
                      _%g261455261722%_
                      _%g261454261721%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g261452261718%_)))))
                  (_%__kont264238264239%_
                   (lambda (_%g261476261625%_ _%g261477261627%_)
                     (_%make-signature261399%_
                      _%g261477261627%_
                      _%g261476261625%_
                      '#f
                      (let ((__tmp264589
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc261394%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp264589)))))
                  (_%__kont264240264241%_
                   (lambda (_%g261488261560%_
                            _%g261489261562%_
                            _%g261490261563%_)
                     (_%make-signature261399%_
                      _%g261490261563%_
                      _%g261489261562%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g261488261560%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264227264228%_))
                  (let ((_%e261410261917%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx264227264228%_))))
                    (let ((_%tl261412261924%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261410261917%_)))
                          (_%hd261411261921%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261410261917%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261412261924%_))
                          (let ((_%e261413261927%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261412261924%_))))
                            (let ((_%tl261415261934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261413261927%_)))
                                  (_%hd261414261931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261413261927%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261415261934%_))
                                  (_%__kont264230264231%_
                                   _%hd261414261931%_
                                   _%hd261411261921%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261415261934%_))
                                      (let ((_%e261425261864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261415261934%_))))
                                        (let ((_%tl261427261871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261425261864%_)))
                                              (_%hd261426261868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261425261864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd261426261868%_))
                                              (let ((_%e261428261874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd261426261868%_))))
                                                (if (equal? _%e261428261874%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl261427261871%_))
                                                        (let ((_%e261429261878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl261427261871%_))))
                  (let ((_%tl261431261885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261429261878%_)))
                        (_%hd261430261882%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261429261878%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl261431261885%_))
                        (_%__kont264232264233%_
                         _%hd261430261882%_
                         _%hd261414261931%_
                         _%hd261411261921%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261431261885%_))
                            (let ((_%e261448261798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261431261885%_))))
                              (let ((_%tl261450261805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261448261798%_)))
                                    (_%hd261449261802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261448261798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd261449261802%_))
                                    (let ((_%e261451261808%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd261449261802%_))))
                                      (if (equal? _%e261451261808%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261450261805%_))
                                              (_%__kont264234264235%_
                                               _%hd261430261882%_
                                               _%hd261414261931%_
                                               _%hd261411261921%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261450261805%_))
                                                  (let ((_%e261473261708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261450261805%_))))
                                                    (let ((_%tl261475261715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261473261708%_)))
                                                          (_%hd261474261712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261473261708%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl261475261715%_))
                                                          (_%__kont264236264237%_
                                                           _%hd261474261712%_
                                                           _%hd261430261882%_
                                                           _%hd261414261931%_
                                                           _%hd261411261921%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g261406261509%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g261406261509%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g261406261509%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g261406261509%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g261406261509%_))))))
                (let () (declare (not safe)) (_%g261406261509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e261428261874%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl261427261871%_))
                                                            (_%__kont264238264239%_
                                                             _%hd261414261931%_
                                                             _%hd261411261921%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl261427261871%_))
                        (let ((_%e261501261550%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261427261871%_))))
                          (let ((_%tl261503261557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261501261550%_)))
                                (_%hd261502261554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261501261550%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl261503261557%_))
                                (_%__kont264240264241%_
                                 _%hd261502261554%_
                                 _%hd261414261931%_
                                 _%hd261411261921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g261406261509%_)))))
                        (let () (declare (not safe)) (_%g261406261509%_))))
                (let () (declare (not safe)) (_%g261406261509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g261406261509%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g261406261509%_))))))
                          (let () (declare (not safe)) (_%g261406261509%_)))))
                  (let () (declare (not safe)) (_%g261406261509%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig261003%_)
        (let* ((_%g261006261086%_
                (lambda (_%g261007261082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261007261082%_))))
               (_%g261005261388%_
                (lambda (_%g261007261090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261007261090%_))
                      (let ((_%e261013261093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261007261090%_))))
                        (let ((_%hd261014261097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261013261093%_)))
                              (_%tl261015261100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261013261093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261015261100%_))
                              (let ((_%e261016261103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261015261100%_))))
                                (let ((_%hd261017261107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261016261103%_)))
                                      (_%tl261018261110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261016261103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd261017261107%_))
                                      (let ((_%e261019261113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd261017261107%_))))
                                        (if (equal? _%e261019261113%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl261018261110%_))
                                                (let ((_%e261020261117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl261018261110%_))))
                                                  (let ((_%hd261021261121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261020261117%_)))
                                                        (_%tl261022261124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261020261117%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261021261121%_))
                                                        (let ((_%e261023261127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261021261121%_))))
                  (let ((_%hd261024261131%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261023261127%_)))
                        (_%tl261025261134%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261023261127%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd261024261131%_))
                        (if (let ((__tmp264590 |gxc[1]#_g264591_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp264590
                               _%hd261024261131%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261025261134%_))
                                (let ((_%e261026261137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261025261134%_))))
                                  (let ((_%hd261027261141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261026261137%_)))
                                        (_%tl261028261144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261026261137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261028261144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261022261124%_))
                                            (let ((_%e261029261147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261022261124%_))))
                                              (let ((_%hd261030261151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261029261147%_)))
                                                    (_%tl261031261154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261029261147%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd261030261151%_))
                                                    (let ((_%e261032261157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd261030261151%_))))
                                                      (if (equal? _%e261032261157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261031261154%_))
                      (let ((_%e261033261161%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261031261154%_))))
                        (let ((_%hd261034261165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261033261161%_)))
                              (_%tl261035261168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261033261161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd261034261165%_))
                              (let ((_%e261036261171%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd261034261165%_))))
                                (let ((_%hd261037261175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261036261171%_)))
                                      (_%tl261038261178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261036261171%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd261037261175%_))
                                      (if (let ((__tmp264592
                                                 |gxc[1]#_g264593_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp264592
                                             _%hd261037261175%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261038261178%_))
                                              (let ((_%e261039261181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261038261178%_))))
                                                (let ((_%hd261040261185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261039261181%_)))
                                                      (_%tl261041261188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261039261181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261041261188%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl261035261168%_))
                                                          (let ((_%e261042261191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl261035261168%_))))
                    (let ((_%hd261043261195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261042261191%_)))
                          (_%tl261044261198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261042261191%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd261043261195%_))
                          (let ((_%e261045261201%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd261043261195%_))))
                            (if (equal? _%e261045261201%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl261044261198%_))
                                    (let ((_%e261046261205%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl261044261198%_))))
                                      (let ((_%hd261047261209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e261046261205%_)))
                                            (_%tl261048261212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e261046261205%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd261047261209%_))
                                            (let ((_%e261049261215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd261047261209%_))))
                                              (let ((_%hd261050261219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261049261215%_)))
                                                    (_%tl261051261222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261049261215%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd261050261219%_))
                                                    (if (let ((__tmp264594
                                                               |gxc[1]#_g264595_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp264594
                                                           _%hd261050261219%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl261051261222%_))
                                                            (let ((_%e261052261225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl261051261222%_))))
                      (let ((_%hd261053261229%_
                             (let ()
                               (declare (not safe))
                               (##car _%e261052261225%_)))
                            (_%tl261054261232%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e261052261225%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl261054261232%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261048261212%_))
                                (let ((_%e261055261235%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261048261212%_))))
                                  (let ((_%hd261056261239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261055261235%_)))
                                        (_%tl261057261242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261055261235%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd261056261239%_))
                                        (let ((_%e261058261245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd261056261239%_))))
                                          (if (equal? _%e261058261245%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261057261242%_))
                                                  (let ((_%e261059261249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261057261242%_))))
                                                    (let ((_%hd261060261253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261059261249%_)))
                                                          (_%tl261061261256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261059261249%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd261060261253%_))
                                                          (let ((_%e261062261259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd261060261253%_))))
                    (let ((_%hd261063261263%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261062261259%_)))
                          (_%tl261064261266%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261062261259%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd261063261263%_))
                          (if (let ((__tmp264596 |gxc[1]#_g264597_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp264596
                                 _%hd261063261263%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261064261266%_))
                                  (let ((_%e261065261269%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl261064261266%_))))
                                    (let ((_%hd261066261273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261065261269%_)))
                                          (_%tl261067261276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261065261269%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl261067261276%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261061261256%_))
                                              (let ((_%e261068261279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261061261256%_))))
                                                (let ((_%hd261069261283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261068261279%_)))
                                                      (_%tl261070261286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261068261279%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd261069261283%_))
                                                      (let ((_%e261071261289%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd261069261283%_))))
                (if (equal? _%e261071261289%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261070261286%_))
                        (let ((_%e261072261293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261070261286%_))))
                          (let ((_%hd261073261297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261072261293%_)))
                                (_%tl261074261300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261072261293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd261073261297%_))
                                (let ((_%e261075261303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd261073261297%_))))
                                  (let ((_%hd261076261307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261075261303%_)))
                                        (_%tl261077261310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261075261303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd261076261307%_))
                                        (if (let ((__tmp264598
                                                   |gxc[1]#_g264599_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp264598
                                               _%hd261076261307%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl261077261310%_))
                                                (let ((_%e261078261313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl261077261310%_))))
                                                  (let ((_%hd261079261317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e261078261313%_)))
                                                        (_%tl261080261320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e261078261313%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl261080261320%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl261074261300%_))
                                                            ((lambda (_%g261008261323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g261009261325%_
                              _%g261010261326%_
                              _%g261011261327%_
                              _%g261012261328%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g261009261325%_))
                           (cons _%g261009261325%_
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
                       (cons _%g261011261327%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261008261323%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd261079261317%_
                     _%hd261066261273%_
                     _%hd261053261229%_
                     _%hd261040261185%_
                     _%hd261027261141%_)
                    (_%g261006261086%_ _%g261007261090%_))
                (_%g261006261086%_ _%g261007261090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261006261086%_
                                                 _%g261007261090%_))
                                            (_%g261006261086%_
                                             _%g261007261090%_))
                                        (_%g261006261086%_
                                         _%g261007261090%_))))
                                (_%g261006261086%_ _%g261007261090%_))))
                        (_%g261006261086%_ _%g261007261090%_))
                    (_%g261006261086%_ _%g261007261090%_)))
              (_%g261006261086%_ _%g261007261090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261006261086%_
                                               _%g261007261090%_))
                                          (_%g261006261086%_
                                           _%g261007261090%_))))
                                  (_%g261006261086%_ _%g261007261090%_))
                              (_%g261006261086%_ _%g261007261090%_))
                          (_%g261006261086%_ _%g261007261090%_))))
                  (_%g261006261086%_ _%g261007261090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g261006261086%_
                                                   _%g261007261090%_))
                                              (_%g261006261086%_
                                               _%g261007261090%_)))
                                        (_%g261006261086%_
                                         _%g261007261090%_))))
                                (_%g261006261086%_ _%g261007261090%_))
                            (_%g261006261086%_ _%g261007261090%_))))
                    (_%g261006261086%_ _%g261007261090%_))
                (_%g261006261086%_ _%g261007261090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g261006261086%_
                                                     _%g261007261090%_))))
                                            (_%g261006261086%_
                                             _%g261007261090%_))))
                                    (_%g261006261086%_ _%g261007261090%_))
                                (_%g261006261086%_ _%g261007261090%_)))
                          (_%g261006261086%_ _%g261007261090%_))))
                  (_%g261006261086%_ _%g261007261090%_))
              (_%g261006261086%_ _%g261007261090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261006261086%_
                                               _%g261007261090%_))
                                          (_%g261006261086%_
                                           _%g261007261090%_))
                                      (_%g261006261086%_ _%g261007261090%_))))
                              (_%g261006261086%_ _%g261007261090%_))))
                      (_%g261006261086%_ _%g261007261090%_))
                  (_%g261006261086%_ _%g261007261090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g261006261086%_
                                                     _%g261007261090%_))))
                                            (_%g261006261086%_
                                             _%g261007261090%_))
                                        (_%g261006261086%_
                                         _%g261007261090%_))))
                                (_%g261006261086%_ _%g261007261090%_))
                            (_%g261006261086%_ _%g261007261090%_))
                        (_%g261006261086%_ _%g261007261090%_))))
                (_%g261006261086%_ _%g261007261090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261006261086%_
                                                 _%g261007261090%_))
                                            (_%g261006261086%_
                                             _%g261007261090%_)))
                                      (_%g261006261086%_ _%g261007261090%_))))
                              (_%g261006261086%_ _%g261007261090%_))))
                      (_%g261006261086%_ _%g261007261090%_)))))
          (_%g261005261388%_ _%sig261003%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx262160%_)
        (let* ((_%g262163262181%_
                (lambda (_%g262164262177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262164262177%_))))
               (_%g262162262236%_
                (lambda (_%g262164262185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262164262185%_))
                      (let ((_%e262167262188%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262164262185%_))))
                        (let ((_%hd262168262192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262167262188%_)))
                              (_%tl262169262195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262167262188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262169262195%_))
                              (let ((_%e262170262198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262169262195%_))))
                                (let ((_%hd262171262202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262170262198%_)))
                                      (_%tl262172262205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262170262198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262172262205%_))
                                      (let ((_%e262173262208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262172262205%_))))
                                        (let ((_%hd262174262212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262173262208%_)))
                                              (_%tl262175262215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262173262208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262175262215%_))
                                              ((lambda (_%g262165262218%_
                                                        _%g262166262220%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g262166262220%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g262165262218%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx262160%_
                                                        _%g262166262220%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx262160%_
                                                        _%g262165262218%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g262166262220%_
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
                                                   (cons _%g262165262218%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262163262181%_
                                                      _%g262164262185%_)))
                                               _%hd262174262212%_
                                               _%hd262171262202%_)
                                              (_%g262163262181%_
                                               _%g262164262185%_))))
                                      (_%g262163262181%_ _%g262164262185%_))))
                              (_%g262163262181%_ _%g262164262185%_))))
                      (_%g262163262181%_ _%g262164262185%_)))))
          (_%g262162262236%_ _%stx262160%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx262240%_)
        (let* ((_%g262243262267%_
                (lambda (_%g262244262263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262244262263%_))))
               (_%g262242262548%_
                (lambda (_%g262244262271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262244262271%_))
                      (let ((_%e262247262274%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262244262271%_))))
                        (let ((_%hd262248262278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262247262274%_)))
                              (_%tl262249262281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262247262274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262249262281%_))
                              (let ((_%e262250262284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262249262281%_))))
                                (let ((_%hd262251262288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262250262284%_)))
                                      (_%tl262252262291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262250262284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262252262291%_))
                                      (let ((_g264600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl262252262291%_
                                                '0))))
                                        (begin
                                          (let ((_g264601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264600_)
                                                       (##values-length
                                                        _g264600_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264601_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264601_)))
                                          (let ((_%target262253262294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264600_ 0)))
                                                (_%tl262255262297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264600_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262255262297%_))
                                                (letrec ((_%loop262256262300%_
                                                          (lambda (_%hd262254262304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature262260262307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd262254262304%_))
                        (let ((_%e262257262309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd262254262304%_))))
                          (let ((_%lp-hd262258262313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262257262309%_)))
                                (_%lp-tl262259262316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262257262309%_))))
                            (_%loop262256262300%_
                             _%lp-tl262259262316%_
                             (cons _%lp-hd262258262313%_
                                   _%signature262260262307%_))))
                        (let ((_%signature262261262319%_
                               (reverse _%signature262260262307%_)))
                          ((lambda (_%g262245262322%_ _%g262246262324%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g262246262324%_))
                                 (let* ((_%g262342262357%_
                                         (lambda (_%g262343262353%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262343262353%_))))
                                        (_%g262341262536%_
                                         (lambda (_%g262343262361%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g262343262361%_))
                                               (let ((_%e262346262364%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g262343262361%_))))
                                                 (let ((_%hd262347262368%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262346262364%_)))
                                                       (_%tl262348262371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262346262364%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl262348262371%_))
                                                       (let ((_%e262349262374%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl262348262371%_))))
                 (let ((_%hd262350262378%_
                        (let ()
                          (declare (not safe))
                          (##car _%e262349262374%_)))
                       (_%tl262351262381%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e262349262374%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl262351262381%_))
                       ((lambda (_%g262344262384%_ _%g262345262386%_)
                          (let* ((_%g262402262410%_
                                  (lambda (_%g262403262406%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g262403262406%_))))
                                 (_%g262401262532%_
                                  (lambda (_%g262403262414%_)
                                    ((lambda (_%g262404262417%_)
                                       (let* ((_%unchecked262430%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g262344262384%_))
                                              (_%g262433262441%_
                                               (lambda (_%g262434262437%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g262434262437%_))))
                                              (_%g262432262464%_
                                               (lambda (_%g262434262445%_)
                                                 ((lambda (_%g262435262448%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g262404262417%_
                                                                (cons _%g262435262448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g262434262445%_))))
                                         (_%g262432262464%_
                                          (if _%unchecked262430%_
                                              (let* ((_%g262468262483%_
                                                      (lambda (_%g262469262479%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g262469262479%_))))
                                                     (_%g262467262528%_
                                                      (lambda (_%g262469262487%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g262469262487%_))
                                                            (let ((_%e262472262490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g262469262487%_))))
                      (let ((_%hd262473262494%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262472262490%_)))
                            (_%tl262474262497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262472262490%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262474262497%_))
                            (let ((_%e262475262500%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262474262497%_))))
                              (let ((_%hd262476262504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262475262500%_)))
                                    (_%tl262477262507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262475262500%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262477262507%_))
                                    ((lambda (_%g262470262510%_
                                              _%g262471262512%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g262471262512%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262345262386%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g262470262510%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd262476262504%_
                                     _%hd262473262494%_)
                                    (_%g262468262483%_ _%g262469262487%_))))
                            (_%g262468262483%_ _%g262469262487%_))))
                    (_%g262468262483%_ _%g262469262487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262467262528%_
                                                 _%unchecked262430%_))
                                              '(begin)))))
                                     _%g262403262414%_))))
                            (_%g262401262532%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g262246262324%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g262345262386%_ '()))
                   (cons '#f (cons 'signature: (cons _%g262344262384%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd262350262378%_
                        _%hd262347262368%_)
                       (_%g262342262357%_ _%g262343262361%_))))
               (_%g262342262357%_ _%g262343262361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262342262357%_
                                                _%g262343262361%_)))))
                                   (_%g262341262536%_
                                    (|gxc[1]#parse-signature|
                                     _%stx262240%_
                                     _%g262246262324%_
                                     (let ((__tmp264602
                                            (lambda (_%g262539262542%_
                                                     _%g262540262545%_)
                                              (cons _%g262539262542%_
                                                    _%g262540262545%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp264602
                                        '()
                                        _%g262245262322%_)))))
                                 (_%g262243262267%_ _%g262244262271%_)))
                           _%signature262261262319%_
                           _%hd262251262288%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop262256262300%_
                                                   _%target262253262294%_
                                                   '()))
                                                (_%g262243262267%_
                                                 _%g262244262271%_)))))
                                      (_%g262243262267%_ _%g262244262271%_))))
                              (_%g262243262267%_ _%g262244262271%_))))
                      (_%g262243262267%_ _%g262244262271%_)))))
          (_%g262242262548%_ _%stx262240%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx262553%_)
        (let* ((_%g262556262580%_
                (lambda (_%g262557262576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262557262576%_))))
               (_%g262555263455%_
                (lambda (_%g262557262584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262557262584%_))
                      (let ((_%e262560262587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262557262584%_))))
                        (let ((_%hd262561262591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262560262587%_)))
                              (_%tl262562262594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262560262587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262562262594%_))
                              (let ((_%e262563262597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262562262594%_))))
                                (let ((_%hd262564262601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262563262597%_)))
                                      (_%tl262565262604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262563262597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262565262604%_))
                                      (let ((_g264603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl262565262604%_
                                                '0))))
                                        (begin
                                          (let ((_g264604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g264603_)
                                                       (##values-length
                                                        _g264603_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g264604_ 2)))
                                                (error "Context expects 2 values"
                                                       _g264604_)))
                                          (let ((_%target262566262607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g264603_ 0)))
                                                (_%tl262568262610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g264603_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262568262610%_))
                                                (letrec ((_%loop262569262613%_
                                                          (lambda (_%hd262567262617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature262573262620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd262567262617%_))
                        (let ((_%e262570262622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd262567262617%_))))
                          (let ((_%lp-hd262571262626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262570262622%_)))
                                (_%lp-tl262572262629%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262570262622%_))))
                            (_%loop262569262613%_
                             _%lp-tl262572262629%_
                             (cons _%lp-hd262571262626%_
                                   _%case-signature262573262620%_))))
                        (let ((_%case-signature262574262632%_
                               (reverse _%case-signature262573262620%_)))
                          ((lambda (_%g262558262635%_ _%g262559262637%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g262559262637%_))
                                 (let* ((_%signatures262668%_
                                         (map (lambda (_%g262654262656%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx262553%_
                                                 _%g262559262637%_
                                                 _%g262654262656%_))
                                              (let ((__tmp264605
                                                     (lambda (_%g262659262662%_
                                                              _%g262660262665%_)
                                                       (cons _%g262659262662%_
                                                             _%g262660262665%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp264605
                                                 '()
                                                 _%g262558262635%_))))
                                        (_%g262671262697%_
                                         (lambda (_%g262672262693%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262672262693%_))))
                                        (_%g262670263451%_
                                         (lambda (_%g262672262701%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g262672262701%_))
                                               (let ((_g264606_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g262672262701%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g264607_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g264606_)
                        (##values-length _g264606_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g264607_ 2)))
                 (error "Context expects 2 values" _g264607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target262675262704%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g264606_
                                                             0)))
                                                         (_%tl262677262707%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g264606_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262677262707%_))
                                                         (letrec ((_%loop262678262710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd262676262714%_
                                    _%sig262682262717%_
                                    _%arity262683262718%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd262676262714%_))
                                 (let ((_%e262679262720%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd262676262714%_))))
                                   (let ((_%lp-hd262680262724%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262679262720%_)))
                                         (_%lp-tl262681262727%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262679262720%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd262680262724%_))
                                         (let ((_%e262686262730%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd262680262724%_))))
                                           (let ((_%hd262687262734%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e262686262730%_)))
                                                 (_%tl262688262737%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e262686262730%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262688262737%_))
                                                 (let ((_%e262689262740%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262688262737%_))))
                                                   (let ((_%hd262690262744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262689262740%_)))
                                                         (_%tl262691262747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262689262740%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262691262747%_))
                                                         (_%loop262678262710%_
                                                          _%lp-tl262681262727%_
                                                          (cons _%hd262690262744%_
                                                                _%sig262682262717%_)
                                                          (cons _%hd262687262734%_
                                                                _%arity262683262718%_))
                                                         (_%g262671262697%_
                                                          _%g262672262701%_))))
                                                 (_%g262671262697%_
                                                  _%g262672262701%_))))
                                         (_%g262671262697%_
                                          _%g262672262701%_))))
                                 (let ((_%sig262684262750%_
                                        (reverse _%sig262682262717%_))
                                       (_%arity262685262752%_
                                        (reverse _%arity262683262718%_)))
                                   ((lambda (_%g262673262754%_
                                             _%g262674262756%_)
                                      (let* ((_%g262773262781%_
                                              (lambda (_%g262774262777%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g262774262777%_))))
                                             (_%g262772263436%_
                                              (lambda (_%g262774262785%_)
                                                ((lambda (_%g262775262788%_)
                                                   (let* ((_%g262801262809%_
                                                           (lambda (_%g262802262805%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g262802262805%_))))
                  (_%g262800262831%_
                   (lambda (_%g262802262813%_)
                     ((lambda (_%g262803262816%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g262775262788%_
                                    (cons _%g262803262816%_ '()))))
                      _%g262802262813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262800262831%_
                                                      (let ((_g264608_
                                                             (let _%loop262835%_ ((_%rest262838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures262668%_)
                                          (_%unchecked-proc262840%_ '#f)
                                          (_%unchecked-clauses262841%_ '()))
                       (let* ((_%rest262842262850%_ _%rest262838%_)
                              (_%else262844262862%_
                               (lambda ()
                                 (values _%unchecked-proc262840%_
                                         (reverse!
                                          _%unchecked-clauses262841%_))))
                              (_%K262846263303%_
                               (lambda (_%rest262866%_ _%hd262868%_)
                                 (let* ((_%g262870262957%_
                                         (lambda (_%g262871262953%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g262871262953%_))))
                                        (_%g262869263299%_
                                         (lambda (_%g262871262961%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g262871262961%_))
                                               (let ((_%e262878262964%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g262871262961%_))))
                                                 (let ((_%hd262879262968%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262878262964%_)))
                                                       (_%tl262880262971%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262878262964%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl262880262971%_))
                                                       (let ((_%e262881262974%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl262880262971%_))))
                 (let ((_%hd262882262978%_
                        (let ()
                          (declare (not safe))
                          (##car _%e262881262974%_)))
                       (_%tl262883262981%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e262881262974%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd262882262978%_))
                       (let ((_%e262884262984%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd262882262978%_))))
                         (let ((_%hd262885262988%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e262884262984%_)))
                               (_%tl262886262991%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e262884262984%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl262886262991%_))
                               (let ((_%e262887262994%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl262886262991%_))))
                                 (let ((_%hd262888262998%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e262887262994%_)))
                                       (_%tl262889263001%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e262887262994%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd262888262998%_))
                                       (let ((_%e262890263004%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd262888262998%_))))
                                         (if (equal? _%e262890263004%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262889263001%_))
                                                 (let ((_%e262891263008%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262889263001%_))))
                                                   (let ((_%hd262892263012%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262891263008%_)))
                                                         (_%tl262893263015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262891263008%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd262892263012%_))
                                                         (let ((_%e262894263018%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd262892263012%_))))
                   (let ((_%hd262895263022%_
                          (let ()
                            (declare (not safe))
                            (##car _%e262894263018%_)))
                         (_%tl262896263025%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e262894263018%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd262895263022%_))
                         (if (let ((__tmp264610 |gxc[1]#_g264611_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp264610
                                _%hd262895263022%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl262896263025%_))
                                 (let ((_%e262897263028%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl262896263025%_))))
                                   (let ((_%hd262898263032%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262897263028%_)))
                                         (_%tl262899263035%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262897263028%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl262899263035%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl262893263015%_))
                                             (let ((_%e262900263038%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl262893263015%_))))
                                               (let ((_%hd262901263042%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e262900263038%_)))
                                                     (_%tl262902263045%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e262900263038%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd262901263042%_))
                                                     (let ((_%e262903263048%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd262901263042%_))))
                                                       (if (equal? _%e262903263048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl262902263045%_))
                       (let ((_%e262904263052%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl262902263045%_))))
                         (let ((_%hd262905263056%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e262904263052%_)))
                               (_%tl262906263059%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e262904263052%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd262905263056%_))
                               (let ((_%e262907263062%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd262905263056%_))))
                                 (let ((_%hd262908263066%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e262907263062%_)))
                                       (_%tl262909263069%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e262907263062%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd262908263066%_))
                                       (if (let ((__tmp264612
                                                  |gxc[1]#_g264613_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp264612
                                              _%hd262908263066%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl262909263069%_))
                                               (let ((_%e262910263072%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl262909263069%_))))
                                                 (let ((_%hd262911263076%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262910263072%_)))
                                                       (_%tl262912263079%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262910263072%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl262912263079%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl262906263059%_))
                                                           (let ((_%e262913263082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl262906263059%_))))
                     (let ((_%hd262914263086%_
                            (let ()
                              (declare (not safe))
                              (##car _%e262913263082%_)))
                           (_%tl262915263089%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e262913263082%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd262914263086%_))
                           (let ((_%e262916263092%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd262914263086%_))))
                             (if (equal? _%e262916263092%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl262915263089%_))
                                     (let ((_%e262917263096%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl262915263089%_))))
                                       (let ((_%hd262918263100%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e262917263096%_)))
                                             (_%tl262919263103%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e262917263096%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd262918263100%_))
                                             (let ((_%e262920263106%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd262918263100%_))))
                                               (let ((_%hd262921263110%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e262920263106%_)))
                                                     (_%tl262922263113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e262920263106%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd262921263110%_))
                                                     (if (let ((__tmp264614
                                                                |gxc[1]#_g264615_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp264614
                                                            _%hd262921263110%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl262922263113%_))
                     (let ((_%e262923263116%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl262922263113%_))))
                       (let ((_%hd262924263120%_
                              (let ()
                                (declare (not safe))
                                (##car _%e262923263116%_)))
                             (_%tl262925263123%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e262923263116%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl262925263123%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl262919263103%_))
                                 (let ((_%e262926263126%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl262919263103%_))))
                                   (let ((_%hd262927263130%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262926263126%_)))
                                         (_%tl262928263133%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262926263126%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd262927263130%_))
                                         (let ((_%e262929263136%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd262927263130%_))))
                                           (if (equal? _%e262929263136%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl262928263133%_))
                                                   (let ((_%e262930263140%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl262928263133%_))))
                                                     (let ((_%hd262931263144%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e262930263140%_)))
                                                           (_%tl262932263147%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e262930263140%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd262931263144%_))
                                                           (let ((_%e262933263150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd262931263144%_))))
                     (let ((_%hd262934263154%_
                            (let ()
                              (declare (not safe))
                              (##car _%e262933263150%_)))
                           (_%tl262935263157%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e262933263150%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd262934263154%_))
                           (if (let ((__tmp264616 |gxc[1]#_g264617_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp264616
                                  _%hd262934263154%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl262935263157%_))
                                   (let ((_%e262936263160%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl262935263157%_))))
                                     (let ((_%hd262937263164%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e262936263160%_)))
                                           (_%tl262938263167%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e262936263160%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl262938263167%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl262932263147%_))
                                               (let ((_%e262939263170%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl262932263147%_))))
                                                 (let ((_%hd262940263174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e262939263170%_)))
                                                       (_%tl262941263177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e262939263170%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd262940263174%_))
                                                       (let ((_%e262942263180%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd262940263174%_))))
                 (if (equal? _%e262942263180%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl262941263177%_))
                         (let ((_%e262943263184%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl262941263177%_))))
                           (let ((_%hd262944263188%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e262943263184%_)))
                                 (_%tl262945263191%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e262943263184%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd262944263188%_))
                                 (let ((_%e262946263194%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd262944263188%_))))
                                   (let ((_%hd262947263198%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e262946263194%_)))
                                         (_%tl262948263201%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e262946263194%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd262947263198%_))
                                         (if (let ((__tmp264618
                                                    |gxc[1]#_g264619_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp264618
                                                _%hd262947263198%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl262948263201%_))
                                                 (let ((_%e262949263204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl262948263201%_))))
                                                   (let ((_%hd262950263208%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e262949263204%_)))
                                                         (_%tl262951263211%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e262949263204%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl262951263211%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl262945263191%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl262883262981%_))
                         ((lambda (_%g262872263214%_
                                   _%g262873263216%_
                                   _%g262874263217%_
                                   _%g262875263218%_
                                   _%g262876263219%_
                                   _%g262877263220%_)
                            (let ((_%clause263291%_
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
                                                     (cons _%g262877263220%_
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
                                                 (cons _%g262875263218%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262872263214%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked263293%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g262873263216%_))))
                              (_%loop262835%_
                               _%rest262866%_
                               (let ((_%$e263295%_ _%unchecked263293%_))
                                 (if _%$e263295%_
                                     _%$e263295%_
                                     _%unchecked-proc262840%_))
                               (cons _%clause263291%_
                                     _%unchecked-clauses262841%_))))
                          _%hd262950263208%_
                          _%hd262937263164%_
                          _%hd262924263120%_
                          _%hd262911263076%_
                          _%hd262898263032%_
                          _%hd262879262968%_)
                         (_%g262870262957%_ _%g262871262961%_))
                     (_%g262870262957%_ _%g262871262961%_))
                 (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g262870262957%_
                                                  _%g262871262961%_))
                                             (_%g262870262957%_
                                              _%g262871262961%_))
                                         (_%g262870262957%_
                                          _%g262871262961%_))))
                                 (_%g262870262957%_ _%g262871262961%_))))
                         (_%g262870262957%_ _%g262871262961%_))
                     (_%g262870262957%_ _%g262871262961%_)))
               (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262870262957%_
                                                _%g262871262961%_))
                                           (_%g262870262957%_
                                            _%g262871262961%_))))
                                   (_%g262870262957%_ _%g262871262961%_))
                               (_%g262870262957%_ _%g262871262961%_))
                           (_%g262870262957%_ _%g262871262961%_))))
                   (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g262870262957%_
                                                    _%g262871262961%_))
                                               (_%g262870262957%_
                                                _%g262871262961%_)))
                                         (_%g262870262957%_
                                          _%g262871262961%_))))
                                 (_%g262870262957%_ _%g262871262961%_))
                             (_%g262870262957%_ _%g262871262961%_))))
                     (_%g262870262957%_ _%g262871262961%_))
                 (_%g262870262957%_ _%g262871262961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262870262957%_
                                                      _%g262871262961%_))))
                                             (_%g262870262957%_
                                              _%g262871262961%_))))
                                     (_%g262870262957%_ _%g262871262961%_))
                                 (_%g262870262957%_ _%g262871262961%_)))
                           (_%g262870262957%_ _%g262871262961%_))))
                   (_%g262870262957%_ _%g262871262961%_))
               (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262870262957%_
                                                _%g262871262961%_))
                                           (_%g262870262957%_
                                            _%g262871262961%_))
                                       (_%g262870262957%_ _%g262871262961%_))))
                               (_%g262870262957%_ _%g262871262961%_))))
                       (_%g262870262957%_ _%g262871262961%_))
                   (_%g262870262957%_ _%g262871262961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g262870262957%_
                                                      _%g262871262961%_))))
                                             (_%g262870262957%_
                                              _%g262871262961%_))
                                         (_%g262870262957%_
                                          _%g262871262961%_))))
                                 (_%g262870262957%_ _%g262871262961%_))
                             (_%g262870262957%_ _%g262871262961%_))
                         (_%g262870262957%_ _%g262871262961%_))))
                 (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g262870262957%_
                                                  _%g262871262961%_))
                                             (_%g262870262957%_
                                              _%g262871262961%_)))
                                       (_%g262870262957%_ _%g262871262961%_))))
                               (_%g262870262957%_ _%g262871262961%_))))
                       (_%g262870262957%_ _%g262871262961%_))))
               (_%g262870262957%_ _%g262871262961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262870262957%_
                                                _%g262871262961%_)))))
                                   (_%g262869263299%_ _%hd262868%_)))))
                         (if (pair? _%rest262842262850%_)
                             (let ((_%hd262847263307%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest262842262850%_)))
                                   (_%tl262848263310%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest262842262850%_))))
                               (let* ((_%hd263313%_ _%hd262847263307%_)
                                      (_%rest263316%_ _%tl262848263310%_))
                                 (_%K262846263303%_
                                  _%rest263316%_
                                  _%hd263313%_)))
                             (_%else262844262862%_))))))
                (begin
                  (let ((_g264609_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g264608_)
                               (##values-length _g264608_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g264609_ 2)))
                        (error "Context expects 2 values" _g264609_)))
                  (let ((_%unchecked-proc263319%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264608_ 0)))
                        (_%unchecked-clauses263321%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264608_ 1))))
                    (if _%unchecked-proc263319%_
                        (let* ((_%g263323263347%_
                                (lambda (_%g263324263343%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g263324263343%_))))
                               (_%g263322263432%_
                                (lambda (_%g263324263351%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g263324263351%_))
                                      (let ((_%e263327263354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g263324263351%_))))
                                        (let ((_%hd263328263358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263327263354%_)))
                                              (_%tl263329263361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263327263354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263329263361%_))
                                              (let ((_%e263330263364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263329263361%_))))
                                                (let ((_%hd263331263368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263330263364%_)))
                                                      (_%tl263332263371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263330263364%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd263331263368%_))
                                                      (let ((_g264620_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd263331263368%_ '0))))
                (begin
                  (let ((_g264621_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g264620_)
                               (##values-length _g264620_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g264621_ 2)))
                        (error "Context expects 2 values" _g264621_)))
                  (let ((_%target263333263374%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264620_ 0)))
                        (_%tl263335263377%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g264620_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263335263377%_))
                        (letrec ((_%loop263336263380%_
                                  (lambda (_%hd263334263384%_
                                           _%clause263340263387%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd263334263384%_))
                                        (let ((_%e263337263389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd263334263384%_))))
                                          (let ((_%lp-hd263338263393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263337263389%_)))
                                                (_%lp-tl263339263396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263337263389%_))))
                                            (_%loop263336263380%_
                                             _%lp-tl263339263396%_
                                             (cons _%lp-hd263338263393%_
                                                   _%clause263340263387%_))))
                                        (let ((_%clause263341263399%_
                                               (reverse _%clause263340263387%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263332263371%_))
                                              ((lambda (_%g263325263402%_
                                                        _%g263326263404%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g263326263404%_
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
                                             (let ((__tmp264622
                                                    (lambda (_%g263423263426%_
                                                             _%g263424263429%_)
                                                      (cons _%g263423263426%_
                                                            _%g263424263429%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp264622
                                                '()
                                                _%g263325263402%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause263341263399%_
                                               _%hd263328263358%_)
                                              (_%g263323263347%_
                                               _%g263324263351%_)))))))
                          (_%loop263336263380%_ _%target263333263374%_ '()))
                        (_%g263323263347%_ _%g263324263351%_)))))
              (_%g263323263347%_ _%g263324263351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263323263347%_
                                               _%g263324263351%_))))
                                      (_%g263323263347%_ _%g263324263351%_)))))
                          (_%g263322263432%_
                           (list _%unchecked-proc263319%_
                                 _%unchecked-clauses263321%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g262774262785%_))))
                                        (_%g262772263436%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g262559262637%_
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
                                          _%g262673262754%_
                                          _%g262674262756%_))
                                       (let ((__tmp264623
                                              (lambda (_%g263439263443%_
                                                       _%g263440263446%_
                                                       _%g263441263448%_)
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
                                (cons _%g263440263446%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g263439263443%_ '())))))
              _%g263441263448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp264623
                                          '()
                                          _%g262673262754%_
                                          _%g262674262756%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig262684262750%_
                                    _%arity262685262752%_))))))
                   (_%loop262678262710%_ _%target262675262704%_ '() '()))
                 (_%g262671262697%_ _%g262672262701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g262671262697%_
                                                _%g262672262701%_)))))
                                   (_%g262670263451%_ _%signatures262668%_))
                                 (_%g262556262580%_ _%g262557262584%_)))
                           _%case-signature262574262632%_
                           _%hd262564262601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop262569262613%_
                                                   _%target262566262607%_
                                                   '()))
                                                (_%g262556262580%_
                                                 _%g262557262584%_)))))
                                      (_%g262556262580%_ _%g262557262584%_))))
                              (_%g262556262580%_ _%g262557262584%_))))
                      (_%g262556262580%_ _%g262557262584%_)))))
          (_%g262555263455%_ _%stx262553%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx263463%_)
        (let* ((_%__stx264443264444%_ _%$stx263463%_)
               (_%g263469263529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264443264444%_)))))
          (let ((_%__kont264446264447%_
                 (lambda (_%g263471263751%_ _%g263472263753%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263472263753%_ '()))
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
                                                       (cons _%g263472263753%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263471263751%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont264448264449%_
                 (lambda (_%g263486263676%_
                          _%g263487263678%_
                          _%g263488263679%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263488263679%_ '()))
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
                                                       (cons _%g263488263679%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263487263678%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263486263676%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont264450264451%_
                 (lambda (_%g263505263590%_
                          _%g263506263592%_
                          _%g263507263593%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263507263593%_ '()))
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
                                                       (cons _%g263507263593%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g263506263592%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263505263590%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264443264444%_))
                (let ((_%e263473263707%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx264443264444%_))))
                  (let ((_%tl263475263714%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263473263707%_)))
                        (_%hd263474263711%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263473263707%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263475263714%_))
                        (let ((_%e263476263717%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263475263714%_))))
                          (let ((_%tl263478263724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263476263717%_)))
                                (_%hd263477263721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263476263717%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd263477263721%_))
                                (let ((_%e263479263727%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd263477263721%_))))
                                  (if (equal? _%e263479263727%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl263478263724%_))
                                          (let ((_%e263480263731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl263478263724%_))))
                                            (let ((_%tl263482263738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263480263731%_)))
                                                  (_%hd263481263735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263480263731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263482263738%_))
                                                  (let ((_%e263483263741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263482263738%_))))
                                                    (let ((_%tl263485263748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263483263741%_)))
                                                          (_%hd263484263745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263483263741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263485263748%_))
                                                          (_%__kont264446264447%_
                                                           _%hd263484263745%_
                                                           _%hd263481263735%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263469263529%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263469263529%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263469263529%_)))
                                      (if (equal? _%e263479263727%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263478263724%_))
                                              (let ((_%e263496263646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263478263724%_))))
                                                (let ((_%tl263498263653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263496263646%_)))
                                                      (_%hd263497263650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263496263646%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263498263653%_))
                                                      (let ((_%e263499263656%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263498263653%_))))
                (let ((_%tl263501263663%_
                       (let () (declare (not safe)) (##cdr _%e263499263656%_)))
                      (_%hd263500263660%_
                       (let ()
                         (declare (not safe))
                         (##car _%e263499263656%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263501263663%_))
                      (let ((_%e263502263666%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263501263663%_))))
                        (let ((_%tl263504263673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263502263666%_)))
                              (_%hd263503263670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263502263666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263504263673%_))
                              (_%__kont264448264449%_
                               _%hd263503263670%_
                               _%hd263500263660%_
                               _%hd263497263650%_)
                              (let ()
                                (declare (not safe))
                                (_%g263469263529%_)))))
                      (let () (declare (not safe)) (_%g263469263529%_)))))
              (let () (declare (not safe)) (_%g263469263529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263469263529%_)))
                                          (if (equal? _%e263479263727%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263478263724%_))
                                                  (let ((_%e263515263560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263478263724%_))))
                                                    (let ((_%tl263517263567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263515263560%_)))
                                                          (_%hd263516263564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263515263560%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263517263567%_))
                                                          (let ((_%e263518263570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263517263567%_))))
                    (let ((_%tl263520263577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263518263570%_)))
                          (_%hd263519263574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263518263570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263520263577%_))
                          (let ((_%e263521263580%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263520263577%_))))
                            (let ((_%tl263523263587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263521263580%_)))
                                  (_%hd263522263584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263521263580%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263523263587%_))
                                  (_%__kont264450264451%_
                                   _%hd263522263584%_
                                   _%hd263519263574%_
                                   _%hd263516263564%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263469263529%_)))))
                          (let () (declare (not safe)) (_%g263469263529%_)))))
                  (let () (declare (not safe)) (_%g263469263529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263469263529%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263469263529%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g263469263529%_)))))
                        (let () (declare (not safe)) (_%g263469263529%_)))))
                (let () (declare (not safe)) (_%g263469263529%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx263775%_)
        (let* ((_%g263779263799%_
                (lambda (_%g263780263795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263780263795%_))))
               (_%g263778263868%_
                (lambda (_%g263780263803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263780263803%_))
                      (let ((_%e263782263806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263780263803%_))))
                        (let ((_%hd263783263810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263782263806%_)))
                              (_%tl263784263813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263782263806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263784263813%_))
                              (let ((_g264624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263784263813%_
                                        '0))))
                                (begin
                                  (let ((_g264625_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g264624_)
                                               (##values-length _g264624_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g264625_ 2)))
                                        (error "Context expects 2 values"
                                               _g264625_)))
                                  (let ((_%target263785263816%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264624_ 0)))
                                        (_%tl263787263819%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g264624_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263787263819%_))
                                        (letrec ((_%loop263788263822%_
                                                  (lambda (_%hd263786263826%_
                                                           _%decl263792263829%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263786263826%_))
                                                        (let ((_%e263789263831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263786263826%_))))
                  (let ((_%lp-hd263790263835%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263789263831%_)))
                        (_%lp-tl263791263838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263789263831%_))))
                    (_%loop263788263822%_
                     _%lp-tl263791263838%_
                     (cons _%lp-hd263790263835%_ _%decl263792263829%_))))
                (let ((_%decl263793263841%_ (reverse _%decl263792263829%_)))
                  ((lambda (_%g263781263844%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp264626
                                  (lambda (_%g263859263862%_ _%g263860263865%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g263859263862%_)
                                          _%g263860263865%_))))
                             (declare (not safe))
                             (foldr__0 __tmp264626 '() _%g263781263844%_))))
                   _%decl263793263841%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263788263822%_
                                           _%target263785263816%_
                                           '()))
                                        (_%g263779263799%_
                                         _%g263780263803%_)))))
                              (_%g263779263799%_ _%g263780263803%_))))
                      (_%g263779263799%_ _%g263780263803%_)))))
          (_%g263778263868%_ _%$stx263775%_))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g267020_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267027_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267029_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267031_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267033_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267035_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267047_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267049_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267051_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267053_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267055_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx260478%_)
        (let* ((_%g260482260500%_
                (lambda (_%g260483260496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260483260496%_))))
               (_%g260481260555%_
                (lambda (_%g260483260504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260483260504%_))
                      (let ((_%e260486260507%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260483260504%_))))
                        (let ((_%hd260487260511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260486260507%_)))
                              (_%tl260488260514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260486260507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260488260514%_))
                              (let ((_%e260489260517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260488260514%_))))
                                (let ((_%hd260490260521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260489260517%_)))
                                      (_%tl260491260524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260489260517%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260491260524%_))
                                      (let ((_%e260492260527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260491260524%_))))
                                        (let ((_%hd260493260531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260492260527%_)))
                                              (_%tl260494260534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260492260527%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260494260534%_))
                                              ((lambda (_%g260484260537%_
                                                        _%g260485260539%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260485260539%_))
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
                               (cons _%g260485260539%_ '()))
                         (cons _%g260484260537%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260482260500%_
                                                      _%g260483260504%_)))
                                               _%hd260493260531%_
                                               _%hd260490260521%_)
                                              (_%g260482260500%_
                                               _%g260483260504%_))))
                                      (_%g260482260500%_ _%g260483260504%_))))
                              (_%g260482260500%_ _%g260483260504%_))))
                      (_%g260482260500%_ _%g260483260504%_)))))
          (_%g260481260555%_ _%$stx260478%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx260559%_)
        (let* ((_%g260563260581%_
                (lambda (_%g260564260577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260564260577%_))))
               (_%g260562260636%_
                (lambda (_%g260564260585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260564260585%_))
                      (let ((_%e260567260588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260564260585%_))))
                        (let ((_%hd260568260592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260567260588%_)))
                              (_%tl260569260595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260567260588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260569260595%_))
                              (let ((_%e260570260598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260569260595%_))))
                                (let ((_%hd260571260602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260570260598%_)))
                                      (_%tl260572260605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260570260598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260572260605%_))
                                      (let ((_%e260573260608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260572260605%_))))
                                        (let ((_%hd260574260612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260573260608%_)))
                                              (_%tl260575260615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260573260608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260575260615%_))
                                              ((lambda (_%g260565260618%_
                                                        _%g260566260620%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260566260620%_))
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
                               (cons _%g260566260620%_ '()))
                         (cons _%g260565260618%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260563260581%_
                                                      _%g260564260585%_)))
                                               _%hd260574260612%_
                                               _%hd260571260602%_)
                                              (_%g260563260581%_
                                               _%g260564260585%_))))
                                      (_%g260563260581%_ _%g260564260585%_))))
                              (_%g260563260581%_ _%g260564260585%_))))
                      (_%g260563260581%_ _%g260564260585%_)))))
          (_%g260562260636%_ _%$stx260559%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx260640%_)
        (let* ((_%g260644260673%_
                (lambda (_%g260645260669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260645260669%_))))
               (_%g260643260769%_
                (lambda (_%g260645260677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260645260677%_))
                      (let ((_%e260648260680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260645260677%_))))
                        (let ((_%hd260649260684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260648260680%_)))
                              (_%tl260650260687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260648260680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260650260687%_))
                              (let ((_g266998_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260650260687%_
                                        '0))))
                                (begin
                                  (let ((_g266999_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266998_)
                                               (##values-length _g266998_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266999_ 2)))
                                        (error "Context expects 2 values"
                                               _g266999_)))
                                  (let ((_%target260651260690%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266998_ 0)))
                                        (_%tl260653260693%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266998_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260653260693%_))
                                        (letrec ((_%loop260654260696%_
                                                  (lambda (_%hd260652260700%_
                                                           _%type260658260703%_
                                                           _%symbol260659260704%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260652260700%_))
                                                        (let ((_%e260655260706%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260652260700%_))))
                  (let ((_%lp-hd260656260710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260655260706%_)))
                        (_%lp-tl260657260713%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260655260706%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260656260710%_))
                        (let ((_%e260662260716%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260656260710%_))))
                          (let ((_%hd260663260720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260662260716%_)))
                                (_%tl260664260723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260662260716%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260664260723%_))
                                (let ((_%e260665260726%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260664260723%_))))
                                  (let ((_%hd260666260730%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260665260726%_)))
                                        (_%tl260667260733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260665260726%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260667260733%_))
                                        (_%loop260654260696%_
                                         _%lp-tl260657260713%_
                                         (cons _%hd260666260730%_
                                               _%type260658260703%_)
                                         (cons _%hd260663260720%_
                                               _%symbol260659260704%_))
                                        (_%g260644260673%_
                                         _%g260645260677%_))))
                                (_%g260644260673%_ _%g260645260677%_))))
                        (_%g260644260673%_ _%g260645260677%_))))
                (let ((_%type260660260736%_ (reverse _%type260658260703%_))
                      (_%symbol260661260738%_
                       (reverse _%symbol260659260704%_)))
                  ((lambda (_%g260646260740%_ _%g260647260742%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260646260740%_
                                _%g260647260742%_))
                             (let ((__tmp267000
                                    (lambda (_%g260757260761%_
                                             _%g260758260764%_
                                             _%g260759260766%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g260758260764%_
                                                        (cons _%g260757260761%_
                                                              '())))
                                            _%g260759260766%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267000
                                '()
                                _%g260646260740%_
                                _%g260647260742%_)))))
                   _%type260660260736%_
                   _%symbol260661260738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260654260696%_
                                           _%target260651260690%_
                                           '()
                                           '()))
                                        (_%g260644260673%_
                                         _%g260645260677%_)))))
                              (_%g260644260673%_ _%g260645260677%_))))
                      (_%g260644260673%_ _%g260645260677%_)))))
          (_%g260643260769%_ _%$stx260640%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx260774%_)
        (let* ((_%__stx266309266310%_ _%$stx260774%_)
               (_%g260779260821%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266309266310%_)))))
          (let ((_%__kont266312266313%_
                 (lambda (_%g260781260949%_
                          _%g260782260951%_
                          _%g260783260952%_
                          _%g260784260953%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260784260953%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260783260952%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260782260951%_ '()))
                                           (cons _%g260781260949%_ '())))))))
                (_%__kont266314266315%_
                 (lambda (_%g260800260868%_
                          _%g260801260870%_
                          _%g260802260871%_
                          _%g260803260872%_)
                   (cons _%g260803260872%_
                         (cons _%g260802260871%_
                               (cons _%g260801260870%_
                                     (cons _%g260800260868%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match266348266349%_
                   (lambda (_%e260785260899%_
                            _%hd260786260903%_
                            _%tl260787260906%_
                            _%e260788260909%_
                            _%hd260789260913%_
                            _%tl260790260916%_
                            _%e260791260919%_
                            _%hd260792260923%_
                            _%tl260793260926%_
                            _%e260794260929%_
                            _%hd260795260933%_
                            _%tl260796260936%_
                            _%e260797260939%_
                            _%hd260798260943%_
                            _%tl260799260946%_)
                     (let ((_%g260781260949%_ _%hd260798260943%_)
                           (_%g260782260951%_ _%hd260795260933%_)
                           (_%g260783260952%_ _%hd260792260923%_)
                           (_%g260784260953%_ _%hd260789260913%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260784260953%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260783260952%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260782260951%_)))
                           (_%__kont266312266313%_
                            _%g260781260949%_
                            _%g260782260951%_
                            _%g260783260952%_
                            _%g260784260953%_)
                           (let ()
                             (declare (not safe))
                             (_%g260779260821%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266309266310%_))
                  (let ((_%e260785260899%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266309266310%_))))
                    (let ((_%tl260787260906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260785260899%_)))
                          (_%hd260786260903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260785260899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260787260906%_))
                          (let ((_%e260788260909%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260787260906%_))))
                            (let ((_%tl260790260916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260788260909%_)))
                                  (_%hd260789260913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260788260909%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260790260916%_))
                                  (let ((_%e260791260919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260790260916%_))))
                                    (let ((_%tl260793260926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260791260919%_)))
                                          (_%hd260792260923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260791260919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260793260926%_))
                                          (let ((_%e260794260929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl260793260926%_))))
                                            (let ((_%tl260796260936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260794260929%_)))
                                                  (_%hd260795260933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260794260929%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260796260936%_))
                                                  (let ((_%e260797260939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260796260936%_))))
                                                    (let ((_%tl260799260946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260797260939%_)))
                                                          (_%hd260798260943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260797260939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260799260946%_))
                                                          (_%__match266348266349%_
                                                           _%e260785260899%_
                                                           _%hd260786260903%_
                                                           _%tl260787260906%_
                                                           _%e260788260909%_
                                                           _%hd260789260913%_
                                                           _%tl260790260916%_
                                                           _%e260791260919%_
                                                           _%hd260792260923%_
                                                           _%tl260793260926%_
                                                           _%e260794260929%_
                                                           _%hd260795260933%_
                                                           _%tl260796260936%_
                                                           _%e260797260939%_
                                                           _%hd260798260943%_
                                                           _%tl260799260946%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260779260821%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260796260936%_))
                                                      (_%__kont266314266315%_
                                                       _%hd260795260933%_
                                                       _%hd260792260923%_
                                                       _%hd260789260913%_
                                                       _%hd260786260903%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260779260821%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260779260821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260779260821%_)))))
                          (let () (declare (not safe)) (_%g260779260821%_)))))
                  (let () (declare (not safe)) (_%g260779260821%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx260978%_)
        (let* ((_%g260982261017%_
                (lambda (_%g260983261013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260983261013%_))))
               (_%g260981261130%_
                (lambda (_%g260983261021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260983261021%_))
                      (let ((_%e260987261024%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260983261021%_))))
                        (let ((_%hd260988261028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260987261024%_)))
                              (_%tl260989261031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260987261024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260989261031%_))
                              (let ((_g267001_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260989261031%_
                                        '0))))
                                (begin
                                  (let ((_g267002_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267001_)
                                               (##values-length _g267001_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267002_ 2)))
                                        (error "Context expects 2 values"
                                               _g267002_)))
                                  (let ((_%target260990261034%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267001_ 0)))
                                        (_%tl260992261037%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267001_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260992261037%_))
                                        (letrec ((_%loop260993261040%_
                                                  (lambda (_%hd260991261044%_
                                                           _%symbol260997261047%_
                                                           _%method260998261048%_
                                                           _%type-t260999261049%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260991261044%_))
                                                        (let ((_%e260994261051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260991261044%_))))
                  (let ((_%lp-hd260995261055%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260994261051%_)))
                        (_%lp-tl260996261058%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260994261051%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260995261055%_))
                        (let ((_%e261003261061%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260995261055%_))))
                          (let ((_%hd261004261065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261003261061%_)))
                                (_%tl261005261068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261003261061%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261005261068%_))
                                (let ((_%e261006261071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261005261068%_))))
                                  (let ((_%hd261007261075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261006261071%_)))
                                        (_%tl261008261078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261006261071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261008261078%_))
                                        (let ((_%e261009261081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261008261078%_))))
                                          (let ((_%hd261010261085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261009261081%_)))
                                                (_%tl261011261088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261009261081%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261011261088%_))
                                                (_%loop260993261040%_
                                                 _%lp-tl260996261058%_
                                                 (cons _%hd261010261085%_
                                                       _%symbol260997261047%_)
                                                 (cons _%hd261007261075%_
                                                       _%method260998261048%_)
                                                 (cons _%hd261004261065%_
                                                       _%type-t260999261049%_))
                                                (_%g260982261017%_
                                                 _%g260983261021%_))))
                                        (_%g260982261017%_
                                         _%g260983261021%_))))
                                (_%g260982261017%_ _%g260983261021%_))))
                        (_%g260982261017%_ _%g260983261021%_))))
                (let ((_%symbol261000261091%_ (reverse _%symbol260997261047%_))
                      (_%method261001261093%_ (reverse _%method260998261048%_))
                      (_%type-t261002261094%_
                       (reverse _%type-t260999261049%_)))
                  ((lambda (_%g260984261096%_
                            _%g260985261098%_
                            _%g260986261099%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260984261096%_
                                _%g260985261098%_
                                _%g260986261099%_))
                             (let ((__tmp267003
                                    (lambda (_%g261115261120%_
                                             _%g261116261123%_
                                             _%g261117261125%_
                                             _%g261118261127%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g261117261125%_
                                                        (cons _%g261116261123%_
                                                              (cons _%g261115261120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g261118261127%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp267003
                                '()
                                _%g260984261096%_
                                _%g260985261098%_
                                _%g260986261099%_)))))
                   _%symbol261000261091%_
                   _%method261001261093%_
                   _%type-t261002261094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260993261040%_
                                           _%target260990261034%_
                                           '()
                                           '()
                                           '()))
                                        (_%g260982261017%_
                                         _%g260983261021%_)))))
                              (_%g260982261017%_ _%g260983261021%_))))
                      (_%g260982261017%_ _%g260983261021%_)))))
          (_%g260981261130%_ _%$stx260978%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx261135%_)
        (let* ((_%g261139261172%_
                (lambda (_%g261140261168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261140261168%_))))
               (_%g261138261282%_
                (lambda (_%g261140261176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261140261176%_))
                      (let ((_%e261144261179%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261140261176%_))))
                        (let ((_%hd261145261183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261144261179%_)))
                              (_%tl261146261186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261144261179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261146261186%_))
                              (let ((_%e261147261189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261146261186%_))))
                                (let ((_%hd261148261193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261147261189%_)))
                                      (_%tl261149261196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261147261189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261149261196%_))
                                      (let ((_g267004_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261149261196%_
                                                '0))))
                                        (begin
                                          (let ((_g267005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267004_)
                                                       (##values-length
                                                        _g267004_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267005_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267005_)))
                                          (let ((_%target261150261199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267004_ 0)))
                                                (_%tl261152261202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267004_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261152261202%_))
                                                (letrec ((_%loop261153261205%_
                                                          (lambda (_%hd261151261209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol261157261212%_
                           _%method261158261213%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261151261209%_))
                        (let ((_%e261154261215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261151261209%_))))
                          (let ((_%lp-hd261155261219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261154261215%_)))
                                (_%lp-tl261156261222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261154261215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd261155261219%_))
                                (let ((_%e261161261225%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd261155261219%_))))
                                  (let ((_%hd261162261229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261161261225%_)))
                                        (_%tl261163261232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261161261225%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261163261232%_))
                                        (let ((_%e261164261235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261163261232%_))))
                                          (let ((_%hd261165261239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261164261235%_)))
                                                (_%tl261166261242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261164261235%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261166261242%_))
                                                (_%loop261153261205%_
                                                 _%lp-tl261156261222%_
                                                 (cons _%hd261165261239%_
                                                       _%symbol261157261212%_)
                                                 (cons _%hd261162261229%_
                                                       _%method261158261213%_))
                                                (_%g261139261172%_
                                                 _%g261140261176%_))))
                                        (_%g261139261172%_
                                         _%g261140261176%_))))
                                (_%g261139261172%_ _%g261140261176%_))))
                        (let ((_%symbol261159261245%_
                               (reverse _%symbol261157261212%_))
                              (_%method261160261247%_
                               (reverse _%method261158261213%_)))
                          ((lambda (_%g261141261249%_
                                    _%g261142261251%_
                                    _%g261143261252%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g261141261249%_
                                        _%g261142261251%_))
                                     (let ((__tmp267006
                                            (lambda (_%g261270261274%_
                                                     _%g261271261277%_
                                                     _%g261272261279%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g261143261252%_
                                                                (cons _%g261271261277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g261270261274%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g261272261279%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp267006
                                        '()
                                        _%g261141261249%_
                                        _%g261142261251%_)))))
                           _%symbol261159261245%_
                           _%method261160261247%_
                           _%hd261148261193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261153261205%_
                                                   _%target261150261199%_
                                                   '()
                                                   '()))
                                                (_%g261139261172%_
                                                 _%g261140261176%_)))))
                                      (_%g261139261172%_ _%g261140261176%_))))
                              (_%g261139261172%_ _%g261140261176%_))))
                      (_%g261139261172%_ _%g261140261176%_)))))
          (_%g261138261282%_ _%$stx261135%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx261287%_)
        (let* ((_%g261291261305%_
                (lambda (_%g261292261301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261292261301%_))))
               (_%g261290261346%_
                (lambda (_%g261292261309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261292261309%_))
                      (let ((_%e261294261312%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261292261309%_))))
                        (let ((_%hd261295261316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261294261312%_)))
                              (_%tl261296261319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261294261312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261296261319%_))
                              (let ((_%e261297261322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261296261319%_))))
                                (let ((_%hd261298261326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261297261322%_)))
                                      (_%tl261299261329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261297261322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261299261329%_))
                                      ((lambda (_%g261293261332%_)
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
                                                           (cons _%g261293261332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261298261326%_)
                                      (_%g261291261305%_ _%g261292261309%_))))
                              (_%g261291261305%_ _%g261292261309%_))))
                      (_%g261291261305%_ _%g261292261309%_)))))
          (_%g261290261346%_ _%$stx261287%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx261350%_)
        (let* ((_%g261354261408%_
                (lambda (_%g261355261404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261355261404%_))))
               (_%g261353261589%_
                (lambda (_%g261355261412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261355261412%_))
                      (let ((_%e261367261415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261355261412%_))))
                        (let ((_%hd261368261419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261367261415%_)))
                              (_%tl261369261422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261367261415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261369261422%_))
                              (let ((_%e261370261425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261369261422%_))))
                                (let ((_%hd261371261429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261370261425%_)))
                                      (_%tl261372261432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261370261425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261372261432%_))
                                      (let ((_%e261373261435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261372261432%_))))
                                        (let ((_%hd261374261439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261373261435%_)))
                                              (_%tl261375261442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261373261435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261375261442%_))
                                              (let ((_%e261376261445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261375261442%_))))
                                                (let ((_%hd261377261449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261376261445%_)))
                                                      (_%tl261378261452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261376261445%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261378261452%_))
                                                      (let ((_%e261379261455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261378261452%_))))
                (let ((_%hd261380261459%_
                       (let () (declare (not safe)) (##car _%e261379261455%_)))
                      (_%tl261381261462%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261379261455%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261381261462%_))
                      (let ((_%e261382261465%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261381261462%_))))
                        (let ((_%hd261383261469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261382261465%_)))
                              (_%tl261384261472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261382261465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261384261472%_))
                              (let ((_%e261385261475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261384261472%_))))
                                (let ((_%hd261386261479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261385261475%_)))
                                      (_%tl261387261482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261385261475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261387261482%_))
                                      (let ((_%e261388261485%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261387261482%_))))
                                        (let ((_%hd261389261489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261388261485%_)))
                                              (_%tl261390261492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261388261485%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261390261492%_))
                                              (let ((_%e261391261495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261390261492%_))))
                                                (let ((_%hd261392261499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261391261495%_)))
                                                      (_%tl261393261502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261391261495%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261393261502%_))
                                                      (let ((_%e261394261505%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261393261502%_))))
                (let ((_%hd261395261509%_
                       (let () (declare (not safe)) (##car _%e261394261505%_)))
                      (_%tl261396261512%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261394261505%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261396261512%_))
                      (let ((_%e261397261515%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261396261512%_))))
                        (let ((_%hd261398261519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261397261515%_)))
                              (_%tl261399261522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261397261515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261399261522%_))
                              (let ((_%e261400261525%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261399261522%_))))
                                (let ((_%hd261401261529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261400261525%_)))
                                      (_%tl261402261532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261400261525%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261402261532%_))
                                      ((lambda (_%g261356261535%_
                                                _%g261357261537%_
                                                _%g261358261538%_
                                                _%g261359261539%_
                                                _%g261360261540%_
                                                _%g261361261541%_
                                                _%g261362261542%_
                                                _%g261363261543%_
                                                _%g261364261544%_
                                                _%g261365261545%_
                                                _%g261366261546%_)
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
                                                           (cons _%g261366261546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261365261545%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261364261544%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261363261543%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261362261542%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261361261541%_ '()))
                                           (cons _%g261360261540%_
                                                 (cons _%g261359261539%_
                                                       (cons _%g261358261538%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261357261537%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261356261535%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd261401261529%_
                                       _%hd261398261519%_
                                       _%hd261395261509%_
                                       _%hd261392261499%_
                                       _%hd261389261489%_
                                       _%hd261386261479%_
                                       _%hd261383261469%_
                                       _%hd261380261459%_
                                       _%hd261377261449%_
                                       _%hd261374261439%_
                                       _%hd261371261429%_)
                                      (_%g261354261408%_ _%g261355261412%_))))
                              (_%g261354261408%_ _%g261355261412%_))))
                      (_%g261354261408%_ _%g261355261412%_))))
              (_%g261354261408%_ _%g261355261412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261354261408%_
                                               _%g261355261412%_))))
                                      (_%g261354261408%_ _%g261355261412%_))))
                              (_%g261354261408%_ _%g261355261412%_))))
                      (_%g261354261408%_ _%g261355261412%_))))
              (_%g261354261408%_ _%g261355261412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261354261408%_
                                               _%g261355261412%_))))
                                      (_%g261354261408%_ _%g261355261412%_))))
                              (_%g261354261408%_ _%g261355261412%_))))
                      (_%g261354261408%_ _%g261355261412%_)))))
          (_%g261353261589%_ _%$stx261350%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx261593%_)
        (let* ((_%g261597261611%_
                (lambda (_%g261598261607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261598261607%_))))
               (_%g261596261652%_
                (lambda (_%g261598261615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261598261615%_))
                      (let ((_%e261600261618%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261598261615%_))))
                        (let ((_%hd261601261622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261600261618%_)))
                              (_%tl261602261625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261600261618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261602261625%_))
                              (let ((_%e261603261628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261602261625%_))))
                                (let ((_%hd261604261632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261603261628%_)))
                                      (_%tl261605261635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261603261628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261605261635%_))
                                      ((lambda (_%g261599261638%_)
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
                                                           (cons _%g261599261638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261604261632%_)
                                      (_%g261597261611%_ _%g261598261615%_))))
                              (_%g261597261611%_ _%g261598261615%_))))
                      (_%g261597261611%_ _%g261598261615%_)))))
          (_%g261596261652%_ _%$stx261593%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx261656%_)
        (let* ((_%g261660261674%_
                (lambda (_%g261661261670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261661261670%_))))
               (_%g261659261715%_
                (lambda (_%g261661261678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261661261678%_))
                      (let ((_%e261663261681%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261661261678%_))))
                        (let ((_%hd261664261685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261663261681%_)))
                              (_%tl261665261688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261663261681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261665261688%_))
                              (let ((_%e261666261691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261665261688%_))))
                                (let ((_%hd261667261695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261666261691%_)))
                                      (_%tl261668261698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261666261691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261668261698%_))
                                      ((lambda (_%g261662261701%_)
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
                                                           (cons _%g261662261701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261667261695%_)
                                      (_%g261660261674%_ _%g261661261678%_))))
                              (_%g261660261674%_ _%g261661261678%_))))
                      (_%g261660261674%_ _%g261661261678%_)))))
          (_%g261659261715%_ _%$stx261656%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx261719%_)
        (let* ((_%g261723261745%_
                (lambda (_%g261724261741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261724261741%_))))
               (_%g261722261814%_
                (lambda (_%g261724261749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261724261749%_))
                      (let ((_%e261728261752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261724261749%_))))
                        (let ((_%hd261729261756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261728261752%_)))
                              (_%tl261730261759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261728261752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261730261759%_))
                              (let ((_%e261731261762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261730261759%_))))
                                (let ((_%hd261732261766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261731261762%_)))
                                      (_%tl261733261769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261731261762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261733261769%_))
                                      (let ((_%e261734261772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261733261769%_))))
                                        (let ((_%hd261735261776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261734261772%_)))
                                              (_%tl261736261779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261734261772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261736261779%_))
                                              (let ((_%e261737261782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261736261779%_))))
                                                (let ((_%hd261738261786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261737261782%_)))
                                                      (_%tl261739261789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261737261782%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261739261789%_))
                                                      ((lambda (_%g261725261792%_
                                                                _%g261726261794%_
                                                                _%g261727261795%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261727261795%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261726261794%_ '()))
                                   (cons _%g261725261792%_ '())))))
               _%hd261738261786%_
               _%hd261735261776%_
               _%hd261732261766%_)
              (_%g261723261745%_ _%g261724261749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261723261745%_
                                               _%g261724261749%_))))
                                      (_%g261723261745%_ _%g261724261749%_))))
                              (_%g261723261745%_ _%g261724261749%_))))
                      (_%g261723261745%_ _%g261724261749%_)))))
          (_%g261722261814%_ _%$stx261719%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx261818%_)
        (let* ((_%g261822261844%_
                (lambda (_%g261823261840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261823261840%_))))
               (_%g261821261913%_
                (lambda (_%g261823261848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261823261848%_))
                      (let ((_%e261827261851%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261823261848%_))))
                        (let ((_%hd261828261855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261827261851%_)))
                              (_%tl261829261858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261827261851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261829261858%_))
                              (let ((_%e261830261861%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261829261858%_))))
                                (let ((_%hd261831261865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261830261861%_)))
                                      (_%tl261832261868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261830261861%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261832261868%_))
                                      (let ((_%e261833261871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261832261868%_))))
                                        (let ((_%hd261834261875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261833261871%_)))
                                              (_%tl261835261878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261833261871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261835261878%_))
                                              (let ((_%e261836261881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261835261878%_))))
                                                (let ((_%hd261837261885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261836261881%_)))
                                                      (_%tl261838261888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261836261881%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261838261888%_))
                                                      ((lambda (_%g261824261891%_
                                                                _%g261825261893%_
                                                                _%g261826261894%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261826261894%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261825261893%_ '()))
                                   (cons _%g261824261891%_ '())))))
               _%hd261837261885%_
               _%hd261834261875%_
               _%hd261831261865%_)
              (_%g261822261844%_ _%g261823261848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261822261844%_
                                               _%g261823261848%_))))
                                      (_%g261822261844%_ _%g261823261848%_))))
                              (_%g261822261844%_ _%g261823261848%_))))
                      (_%g261822261844%_ _%g261823261848%_)))))
          (_%g261821261913%_ _%$stx261818%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx261917%_)
        (let* ((_%g261921261935%_
                (lambda (_%g261922261931%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261922261931%_))))
               (_%g261920261976%_
                (lambda (_%g261922261939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261922261939%_))
                      (let ((_%e261924261942%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261922261939%_))))
                        (let ((_%hd261925261946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261924261942%_)))
                              (_%tl261926261949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261924261942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261926261949%_))
                              (let ((_%e261927261952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261926261949%_))))
                                (let ((_%hd261928261956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261927261952%_)))
                                      (_%tl261929261959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261927261952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261929261959%_))
                                      ((lambda (_%g261923261962%_)
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
                                                           (cons _%g261923261962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261928261956%_)
                                      (_%g261921261935%_ _%g261922261939%_))))
                              (_%g261921261935%_ _%g261922261939%_))))
                      (_%g261921261935%_ _%g261922261939%_)))))
          (_%g261920261976%_ _%$stx261917%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx261980%_)
        (let* ((_%g261984262002%_
                (lambda (_%g261985261998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261985261998%_))))
               (_%g261983262057%_
                (lambda (_%g261985262006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261985262006%_))
                      (let ((_%e261988262009%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261985262006%_))))
                        (let ((_%hd261989262013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261988262009%_)))
                              (_%tl261990262016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261988262009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261990262016%_))
                              (let ((_%e261991262019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261990262016%_))))
                                (let ((_%hd261992262023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261991262019%_)))
                                      (_%tl261993262026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261991262019%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261993262026%_))
                                      (let ((_%e261994262029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261993262026%_))))
                                        (let ((_%hd261995262033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261994262029%_)))
                                              (_%tl261996262036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261994262029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261996262036%_))
                                              ((lambda (_%g261986262039%_
                                                        _%g261987262041%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261987262041%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261986262039%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261995262033%_
                                               _%hd261992262023%_)
                                              (_%g261984262002%_
                                               _%g261985262006%_))))
                                      (_%g261984262002%_ _%g261985262006%_))))
                              (_%g261984262002%_ _%g261985262006%_))))
                      (_%g261984262002%_ _%g261985262006%_)))))
          (_%g261983262057%_ _%$stx261980%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx262061%_)
        (let* ((_%__stx266377266378%_ _%$stx262061%_)
               (_%g262068262129%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266377266378%_)))))
          (let ((_%__kont266380266381%_
                 (lambda (_%g262070262367%_ _%g262071262369%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262071262369%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262070262367%_ '()))
                                     '())))))
                (_%__kont266382266383%_
                 (lambda (_%g262081262306%_
                          _%g262082262308%_
                          _%g262083262309%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262083262309%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262082262308%_ '()))
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
                                 (cons _%g262081262306%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont266384266385%_
                 (lambda (_%g262100262230%_ _%g262101262232%_)
                   (cons _%g262101262232%_
                         (cons _%g262100262230%_ (cons '#f '())))))
                (_%__kont266386266387%_
                 (lambda (_%g262108262180%_
                          _%g262109262182%_
                          _%g262110262183%_)
                   (cons _%g262110262183%_
                         (cons _%g262109262182%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g262108262180%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266377266378%_))
                (let ((_%e262072262337%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266377266378%_))))
                  (let ((_%tl262074262344%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262072262337%_)))
                        (_%hd262073262341%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262072262337%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262074262344%_))
                        (let ((_%e262075262347%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262074262344%_))))
                          (let ((_%tl262077262354%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262075262347%_)))
                                (_%hd262076262351%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262075262347%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262077262354%_))
                                (let ((_%e262078262357%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262077262354%_))))
                                  (let ((_%tl262080262364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262078262357%_)))
                                        (_%hd262079262361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262078262357%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262080262364%_))
                                        (_%__kont266380266381%_
                                         _%hd262079262361%_
                                         _%hd262076262351%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262080262364%_))
                                            (let ((_%e262093262282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262080262364%_))))
                                              (let ((_%tl262095262289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262093262282%_)))
                                                    (_%hd262094262286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262093262282%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262094262286%_))
                                                    (let ((_%e262096262292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262094262286%_))))
                                                      (if (equal? _%e262096262292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262095262289%_))
                      (let ((_%e262097262296%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262095262289%_))))
                        (let ((_%tl262099262303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262097262296%_)))
                              (_%hd262098262300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262097262296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262099262303%_))
                              (_%__kont266382266383%_
                               _%hd262098262300%_
                               _%hd262079262361%_
                               _%hd262076262351%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd262079262361%_))
                                  (let ((_%e262120262166%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd262079262361%_))))
                                    (declare (not safe))
                                    (_%g262068262129%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g262068262129%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262079262361%_))
                          (let ((_%e262120262166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262079262361%_))))
                            (if (equal? _%e262120262166%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262095262289%_))
                                    (_%__kont266386266387%_
                                     _%hd262094262286%_
                                     _%hd262076262351%_
                                     _%hd262073262341%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262068262129%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g262068262129%_))))
                          (let () (declare (not safe)) (_%g262068262129%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd262079262361%_))
                      (let ((_%e262120262166%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd262079262361%_))))
                        (if (equal? _%e262120262166%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262095262289%_))
                                (_%__kont266386266387%_
                                 _%hd262094262286%_
                                 _%hd262076262351%_
                                 _%hd262073262341%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262068262129%_)))
                            (let () (declare (not safe)) (_%g262068262129%_))))
                      (let () (declare (not safe)) (_%g262068262129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd262079262361%_))
                                                        (let ((_%e262120262166%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd262079262361%_))))
                  (if (equal? _%e262120262166%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262095262289%_))
                          (_%__kont266386266387%_
                           _%hd262094262286%_
                           _%hd262076262351%_
                           _%hd262073262341%_)
                          (let () (declare (not safe)) (_%g262068262129%_)))
                      (let () (declare (not safe)) (_%g262068262129%_))))
                (let () (declare (not safe)) (_%g262068262129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd262079262361%_))
                                                (let ((_%e262120262166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd262079262361%_))))
                                                  (declare (not safe))
                                                  (_%g262068262129%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g262068262129%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262077262354%_))
                                    (_%__kont266384266385%_
                                     _%hd262076262351%_
                                     _%hd262073262341%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262068262129%_))))))
                        (let () (declare (not safe)) (_%g262068262129%_)))))
                (let () (declare (not safe)) (_%g262068262129%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx262388%_)
        (let* ((_%g262392262421%_
                (lambda (_%g262393262417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262393262417%_))))
               (_%g262391262526%_
                (lambda (_%g262393262425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262393262425%_))
                      (let ((_%e262395262428%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262393262425%_))))
                        (let ((_%hd262396262432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262395262428%_)))
                              (_%tl262397262435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262395262428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262397262435%_))
                              (let ((_g267007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262397262435%_
                                        '0))))
                                (begin
                                  (let ((_g267008_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267007_)
                                               (##values-length _g267007_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267008_ 2)))
                                        (error "Context expects 2 values"
                                               _g267008_)))
                                  (let ((_%target262398262438%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267007_ 0)))
                                        (_%tl262400262441%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267007_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262400262441%_))
                                        (letrec ((_%loop262401262444%_
                                                  (lambda (_%hd262399262448%_
                                                           _%clause262405262451%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262399262448%_))
                                                        (let ((_%e262402262453%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262399262448%_))))
                  (let ((_%lp-hd262403262457%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262402262453%_)))
                        (_%lp-tl262404262460%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262402262453%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd262403262457%_))
                        (let ((_g267009_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd262403262457%_
                                  '0))))
                          (begin
                            (let ((_g267010_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g267009_)
                                         (##values-length _g267009_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g267010_ 2)))
                                  (error "Context expects 2 values"
                                         _g267010_)))
                            (let ((_%target262407262463%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267009_ 0)))
                                  (_%tl262409262466%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267009_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262409262466%_))
                                  (letrec ((_%loop262410262469%_
                                            (lambda (_%hd262408262473%_
                                                     _%clause262414262476%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd262408262473%_))
                                                  (let ((_%e262411262478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd262408262473%_))))
                                                    (let ((_%lp-hd262412262482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262411262478%_)))
                                                          (_%lp-tl262413262485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262411262478%_))))
                                                      (_%loop262410262469%_
                                                       _%lp-tl262413262485%_
                                                       (cons _%lp-hd262412262482%_
                                                             _%clause262414262476%_))))
                                                  (let ((_%clause262415262488%_
                                                         (reverse _%clause262414262476%_)))
                                                    (_%loop262401262444%_
                                                     _%lp-tl262404262460%_
                                                     (cons _%clause262415262488%_
                                                           _%clause262405262451%_)))))))
                                    (_%loop262410262469%_
                                     _%target262407262463%_
                                     '()))
                                  (_%g262392262421%_ _%g262393262425%_)))))
                        (_%g262392262421%_ _%g262393262425%_))))
                (let ((_%clause262406262491%_
                       (reverse _%clause262405262451%_)))
                  ((lambda (_%g262394262494%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp267011
                                              (lambda (_%g262509262514%_
                                                       _%g262510262517%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp267012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g262511262520%_ _%g262512262523%_)
                             (cons _%g262511262520%_ _%g262512262523%_))))
                      (declare (not safe))
                      (foldr__0 __tmp267012 '() _%g262509262514%_)))
              _%g262510262517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp267011
                                          '()
                                          _%g262394262494%_)))
                                 '())))
                   _%clause262406262491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262401262444%_
                                           _%target262398262438%_
                                           '()))
                                        (_%g262392262421%_
                                         _%g262393262425%_)))))
                              (_%g262392262421%_ _%g262393262425%_))))
                      (_%g262392262421%_ _%g262393262425%_)))))
          (_%g262391262526%_ _%$stx262388%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx262532%_)
        (let* ((_%g262536262554%_
                (lambda (_%g262537262550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262537262550%_))))
               (_%g262535262609%_
                (lambda (_%g262537262558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262537262558%_))
                      (let ((_%e262540262561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262537262558%_))))
                        (let ((_%hd262541262565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262540262561%_)))
                              (_%tl262542262568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262540262561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262542262568%_))
                              (let ((_%e262543262571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262542262568%_))))
                                (let ((_%hd262544262575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262543262571%_)))
                                      (_%tl262545262578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262543262571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262545262578%_))
                                      (let ((_%e262546262581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262545262578%_))))
                                        (let ((_%hd262547262585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262546262581%_)))
                                              (_%tl262548262588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262546262581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262548262588%_))
                                              ((lambda (_%g262538262591%_
                                                        _%g262539262593%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262539262593%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262538262591%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262547262585%_
                                               _%hd262544262575%_)
                                              (_%g262536262554%_
                                               _%g262537262558%_))))
                                      (_%g262536262554%_ _%g262537262558%_))))
                              (_%g262536262554%_ _%g262537262558%_))))
                      (_%g262536262554%_ _%g262537262558%_)))))
          (_%g262535262609%_ _%$stx262532%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx262613%_)
        (let* ((_%g262617262635%_
                (lambda (_%g262618262631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262618262631%_))))
               (_%g262616262690%_
                (lambda (_%g262618262639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262618262639%_))
                      (let ((_%e262621262642%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262618262639%_))))
                        (let ((_%hd262622262646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262621262642%_)))
                              (_%tl262623262649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262621262642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262623262649%_))
                              (let ((_%e262624262652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262623262649%_))))
                                (let ((_%hd262625262656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262624262652%_)))
                                      (_%tl262626262659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262624262652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262626262659%_))
                                      (let ((_%e262627262662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262626262659%_))))
                                        (let ((_%hd262628262666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262627262662%_)))
                                              (_%tl262629262669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262627262662%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262629262669%_))
                                              ((lambda (_%g262619262672%_
                                                        _%g262620262674%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262620262674%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262619262672%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262628262666%_
                                               _%hd262625262656%_)
                                              (_%g262617262635%_
                                               _%g262618262639%_))))
                                      (_%g262617262635%_ _%g262618262639%_))))
                              (_%g262617262635%_ _%g262618262639%_))))
                      (_%g262617262635%_ _%g262618262639%_)))))
          (_%g262616262690%_ _%$stx262613%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx262694%_)
        (let* ((_%g262698262727%_
                (lambda (_%g262699262723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262699262723%_))))
               (_%g262697262823%_
                (lambda (_%g262699262731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262699262731%_))
                      (let ((_%e262702262734%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262699262731%_))))
                        (let ((_%hd262703262738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262702262734%_)))
                              (_%tl262704262741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262702262734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262704262741%_))
                              (let ((_g267013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262704262741%_
                                        '0))))
                                (begin
                                  (let ((_g267014_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267013_)
                                               (##values-length _g267013_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267014_ 2)))
                                        (error "Context expects 2 values"
                                               _g267014_)))
                                  (let ((_%target262705262744%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267013_ 0)))
                                        (_%tl262707262747%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267013_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262707262747%_))
                                        (letrec ((_%loop262708262750%_
                                                  (lambda (_%hd262706262754%_
                                                           _%rule262712262757%_
                                                           _%proc262713262758%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262706262754%_))
                                                        (let ((_%e262709262760%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262706262754%_))))
                  (let ((_%lp-hd262710262764%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262709262760%_)))
                        (_%lp-tl262711262767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262709262760%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd262710262764%_))
                        (let ((_%e262716262770%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd262710262764%_))))
                          (let ((_%hd262717262774%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262716262770%_)))
                                (_%tl262718262777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262716262770%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262718262777%_))
                                (let ((_%e262719262780%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262718262777%_))))
                                  (let ((_%hd262720262784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262719262780%_)))
                                        (_%tl262721262787%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262719262780%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262721262787%_))
                                        (_%loop262708262750%_
                                         _%lp-tl262711262767%_
                                         (cons _%hd262720262784%_
                                               _%rule262712262757%_)
                                         (cons _%hd262717262774%_
                                               _%proc262713262758%_))
                                        (_%g262698262727%_
                                         _%g262699262731%_))))
                                (_%g262698262727%_ _%g262699262731%_))))
                        (_%g262698262727%_ _%g262699262731%_))))
                (let ((_%rule262714262790%_ (reverse _%rule262712262757%_))
                      (_%proc262715262792%_ (reverse _%proc262713262758%_)))
                  ((lambda (_%g262700262794%_ _%g262701262796%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g262700262794%_
                                _%g262701262796%_))
                             (let ((__tmp267015
                                    (lambda (_%g262811262815%_
                                             _%g262812262818%_
                                             _%g262813262820%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g262812262818%_
                                                        (cons _%g262811262815%_
                                                              '())))
                                            _%g262813262820%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267015
                                '()
                                _%g262700262794%_
                                _%g262701262796%_)))))
                   _%rule262714262790%_
                   _%proc262715262792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262708262750%_
                                           _%target262705262744%_
                                           '()
                                           '()))
                                        (_%g262698262727%_
                                         _%g262699262731%_)))))
                              (_%g262698262727%_ _%g262699262731%_))))
                      (_%g262698262727%_ _%g262699262731%_)))))
          (_%g262697262823%_ _%$stx262694%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx262828%_)
        (let* ((_%g262832262850%_
                (lambda (_%g262833262846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262833262846%_))))
               (_%g262831262905%_
                (lambda (_%g262833262854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262833262854%_))
                      (let ((_%e262836262857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262833262854%_))))
                        (let ((_%hd262837262861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262836262857%_)))
                              (_%tl262838262864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262836262857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262838262864%_))
                              (let ((_%e262839262867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262838262864%_))))
                                (let ((_%hd262840262871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262839262867%_)))
                                      (_%tl262841262874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262839262867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262841262874%_))
                                      (let ((_%e262842262877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262841262874%_))))
                                        (let ((_%hd262843262881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262842262877%_)))
                                              (_%tl262844262884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262842262877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262844262884%_))
                                              ((lambda (_%g262834262887%_
                                                        _%g262835262889%_)
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
                                                   (cons _%g262835262889%_
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
                 (cons _%g262834262887%_ '())))
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
                                   (cons _%g262835262889%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262843262881%_
                                               _%hd262840262871%_)
                                              (_%g262832262850%_
                                               _%g262833262854%_))))
                                      (_%g262832262850%_ _%g262833262854%_))))
                              (_%g262832262850%_ _%g262833262854%_))))
                      (_%g262832262850%_ _%g262833262854%_)))))
          (_%g262831262905%_ _%$stx262828%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx262909%_)
        (let* ((_%__stx266495266496%_ _%$stx262909%_)
               (_%g262914262939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266495266496%_)))))
          (let ((_%__kont266498266499%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266500266501%_
                 (lambda (_%g262919262986%_
                          _%g262920262988%_
                          _%g262921262989%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g262921262989%_
                                           (cons _%g262920262988%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g262919262986%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266495266496%_))
                (let ((_%e262916263015%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266495266496%_))))
                  (let ((_%tl262918263022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262916263015%_)))
                        (_%hd262917263019%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262916263015%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262918263022%_))
                        (_%__kont266498266499%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262918263022%_))
                            (let ((_%e262925262956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262918263022%_))))
                              (let ((_%tl262927262963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262925262956%_)))
                                    (_%hd262926262960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262925262956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd262926262960%_))
                                    (let ((_%e262928262966%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd262926262960%_))))
                                      (let ((_%tl262930262973%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262928262966%_)))
                                            (_%hd262929262970%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262928262966%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262930262973%_))
                                            (let ((_%e262931262976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262930262973%_))))
                                              (let ((_%tl262933262983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262931262976%_)))
                                                    (_%hd262932262980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262931262976%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl262933262983%_))
                                                    (_%__kont266500266501%_
                                                     _%tl262927262963%_
                                                     _%hd262932262980%_
                                                     _%hd262929262970%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g262914262939%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g262914262939%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262914262939%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262914262939%_))))))
                (let () (declare (not safe)) (_%g262914262939%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx263033%_)
        (let* ((_%__stx266539266540%_ _%$stx263033%_)
               (_%g263038263069%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266539266540%_)))))
          (let ((_%__kont266542266543%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266544266545%_
                 (lambda (_%g263043263134%_
                          _%g263044263136%_
                          _%g263045263137%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g263045263137%_
                                           (let ((__tmp267016
                                                  (lambda (_%g263157263160%_
                                                           _%g263158263163%_)
                                                    (cons _%g263157263160%_
                                                          _%g263158263163%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp267016
                                              '()
                                              _%g263044263136%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g263043263134%_)
                                     '()))))))
            (let ((_%__match266582266583%_
                   (lambda (_%e263046263076%_
                            _%hd263047263080%_
                            _%tl263048263083%_
                            _%e263049263086%_
                            _%hd263050263090%_
                            _%tl263051263093%_
                            _%e263052263096%_
                            _%hd263053263100%_
                            _%tl263054263103%_
                            _%__splice266546266547%_
                            _%target263055263106%_
                            _%tl263057263109%_)
                     (letrec ((_%loop263058263112%_
                               (lambda (_%hd263056263116%_ _%sig263062263119%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd263056263116%_))
                                     (let ((_%e263059263121%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd263056263116%_))))
                                       (let ((_%lp-tl263061263128%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e263059263121%_)))
                                             (_%lp-hd263060263125%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e263059263121%_))))
                                         (_%loop263058263112%_
                                          _%lp-tl263061263128%_
                                          (cons _%lp-hd263060263125%_
                                                _%sig263062263119%_))))
                                     (let ((_%sig263063263131%_
                                            (reverse _%sig263062263119%_)))
                                       (_%__kont266544266545%_
                                        _%tl263051263093%_
                                        _%sig263063263131%_
                                        _%hd263053263100%_))))))
                       (_%loop263058263112%_ _%target263055263106%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266539266540%_))
                  (let ((_%e263040263173%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266539266540%_))))
                    (let ((_%tl263042263180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263040263173%_)))
                          (_%hd263041263177%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263040263173%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263042263180%_))
                          (_%__kont266542266543%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263042263180%_))
                              (let ((_%e263049263086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263042263180%_))))
                                (let ((_%tl263051263093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263049263086%_)))
                                      (_%hd263050263090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263049263086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263050263090%_))
                                      (let ((_%e263052263096%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263050263090%_))))
                                        (let ((_%tl263054263103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263052263096%_)))
                                              (_%hd263053263100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263052263096%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263054263103%_))
                                              (let ((_%__splice266546266547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263054263103%_
                                                        '0))))
                                                (let ((_%tl263057263109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266546266547%_
                                                          '1)))
                                                      (_%target263055263106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266546266547%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263057263109%_))
                                                      (_%__match266582266583%_
                                                       _%e263040263173%_
                                                       _%hd263041263177%_
                                                       _%tl263042263180%_
                                                       _%e263049263086%_
                                                       _%hd263050263090%_
                                                       _%tl263051263093%_
                                                       _%e263052263096%_
                                                       _%hd263053263100%_
                                                       _%tl263054263103%_
                                                       _%__splice266546266547%_
                                                       _%target263055263106%_
                                                       _%tl263057263109%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263038263069%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263038263069%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263038263069%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263038263069%_))))))
                  (let () (declare (not safe)) (_%g263038263069%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx263192%_)
        (let* ((_%__stx266585266586%_ _%$stx263192%_)
               (_%g263197263244%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266585266586%_)))))
          (let ((_%__kont266588266589%_
                 (lambda (_%g263199263402%_ _%g263200263404%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g263200263404%_
                               (let ((__tmp267017
                                      (lambda (_%g263424263427%_
                                               _%g263425263430%_)
                                        (cons _%g263424263427%_
                                              _%g263425263430%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267017
                                  '()
                                  _%g263199263402%_))))))
                (_%__kont266592266593%_
                 (lambda (_%g263222263299%_ _%g263223263301%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g263223263301%_
                               (let ((__tmp267018
                                      (lambda (_%g263318263321%_
                                               _%g263319263324%_)
                                        (cons _%g263318263321%_
                                              _%g263319263324%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267018
                                  '()
                                  _%g263222263299%_)))))))
            (let* ((_%__match266652266653%_
                    (lambda (_%e263224263251%_
                             _%hd263225263255%_
                             _%tl263226263258%_
                             _%e263227263261%_
                             _%hd263228263265%_
                             _%tl263229263268%_
                             _%__splice266594266595%_
                             _%target263230263271%_
                             _%tl263232263274%_)
                      (letrec ((_%loop263233263277%_
                                (lambda (_%hd263231263281%_
                                         _%sig263237263284%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263231263281%_))
                                      (let ((_%e263234263286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263231263281%_))))
                                        (let ((_%lp-tl263236263293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263234263286%_)))
                                              (_%lp-hd263235263290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263234263286%_))))
                                          (_%loop263233263277%_
                                           _%lp-tl263236263293%_
                                           (cons _%lp-hd263235263290%_
                                                 _%sig263237263284%_))))
                                      (let ((_%sig263238263296%_
                                             (reverse _%sig263237263284%_)))
                                        (_%__kont266592266593%_
                                         _%sig263238263296%_
                                         _%hd263228263265%_))))))
                        (_%loop263233263277%_ _%target263230263271%_ '()))))
                   (_%__match266644266645%_
                    (lambda (_%e263224263251%_
                             _%hd263225263255%_
                             _%tl263226263258%_
                             _%e263227263261%_
                             _%hd263228263265%_
                             _%tl263229263268%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl263229263268%_))
                          (let ((_%__splice266594266595%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl263229263268%_
                                    '0))))
                            (let ((_%tl263232263274%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266594266595%_
                                      '1)))
                                  (_%target263230263271%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266594266595%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263232263274%_))
                                  (_%__match266652266653%_
                                   _%e263224263251%_
                                   _%hd263225263255%_
                                   _%tl263226263258%_
                                   _%e263227263261%_
                                   _%hd263228263265%_
                                   _%tl263229263268%_
                                   _%__splice266594266595%_
                                   _%target263230263271%_
                                   _%tl263232263274%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263197263244%_)))))
                          (let () (declare (not safe)) (_%g263197263244%_)))))
                   (_%__match266632266633%_
                    (lambda (_%e263201263334%_
                             _%hd263202263338%_
                             _%tl263203263341%_
                             _%e263204263344%_
                             _%hd263205263348%_
                             _%tl263206263351%_
                             _%e263207263354%_
                             _%hd263208263358%_
                             _%tl263209263361%_
                             _%e263210263364%_
                             _%hd263211263368%_
                             _%tl263212263371%_
                             _%__splice266590266591%_
                             _%target263213263374%_
                             _%tl263215263377%_)
                      (letrec ((_%loop263216263380%_
                                (lambda (_%hd263214263384%_
                                         _%sig263220263387%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263214263384%_))
                                      (let ((_%e263217263389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263214263384%_))))
                                        (let ((_%lp-tl263219263396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263217263389%_)))
                                              (_%lp-hd263218263393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263217263389%_))))
                                          (_%loop263216263380%_
                                           _%lp-tl263219263396%_
                                           (cons _%lp-hd263218263393%_
                                                 _%sig263220263387%_))))
                                      (let ((_%sig263221263399%_
                                             (reverse _%sig263220263387%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl263209263361%_))
                                            (_%__kont266588266589%_
                                             _%sig263221263399%_
                                             _%hd263205263348%_)
                                            (_%__match266644266645%_
                                             _%e263201263334%_
                                             _%hd263202263338%_
                                             _%tl263203263341%_
                                             _%e263204263344%_
                                             _%hd263205263348%_
                                             _%tl263206263351%_)))))))
                        (_%loop263216263380%_ _%target263213263374%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266585266586%_))
                  (let ((_%e263201263334%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266585266586%_))))
                    (let ((_%tl263203263341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263201263334%_)))
                          (_%hd263202263338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263201263334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263203263341%_))
                          (let ((_%e263204263344%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263203263341%_))))
                            (let ((_%tl263206263351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263204263344%_)))
                                  (_%hd263205263348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263204263344%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263206263351%_))
                                  (let ((_%e263207263354%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263206263351%_))))
                                    (let ((_%tl263209263361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263207263354%_)))
                                          (_%hd263208263358%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263207263354%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd263208263358%_))
                                          (let ((_%e263210263364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd263208263358%_))))
                                            (let ((_%tl263212263371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263210263364%_)))
                                                  (_%hd263211263368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263210263364%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263211263368%_))
                                                  (if (let ((__tmp267019
                                                             |gxc[1]#_g267020_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp267019
                                                         _%hd263211263368%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl263212263371%_))
                                                          (let ((_%__splice266590266591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263212263371%_
                            '0))))
                    (let ((_%tl263215263377%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266590266591%_ '1)))
                          (_%target263213263374%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266590266591%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263215263377%_))
                          (_%__match266632266633%_
                           _%e263201263334%_
                           _%hd263202263338%_
                           _%tl263203263341%_
                           _%e263204263344%_
                           _%hd263205263348%_
                           _%tl263206263351%_
                           _%e263207263354%_
                           _%hd263208263358%_
                           _%tl263209263361%_
                           _%e263210263364%_
                           _%hd263211263368%_
                           _%tl263212263371%_
                           _%__splice266590266591%_
                           _%target263213263374%_
                           _%tl263215263377%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263206263351%_))
                              (let ((_%__splice266594266595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl263206263351%_
                                        '0))))
                                (let ((_%tl263232263274%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266594266595%_
                                          '1)))
                                      (_%target263230263271%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266594266595%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263232263274%_))
                                      (_%__match266652266653%_
                                       _%e263201263334%_
                                       _%hd263202263338%_
                                       _%tl263203263341%_
                                       _%e263204263344%_
                                       _%hd263205263348%_
                                       _%tl263206263351%_
                                       _%__splice266594266595%_
                                       _%target263230263271%_
                                       _%tl263232263274%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g263197263244%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263197263244%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl263206263351%_))
                      (let ((_%__splice266594266595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl263206263351%_
                                '0))))
                        (let ((_%tl263232263274%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266594266595%_ '1)))
                              (_%target263230263271%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266594266595%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263232263274%_))
                              (_%__match266652266653%_
                               _%e263201263334%_
                               _%hd263202263338%_
                               _%tl263203263341%_
                               _%e263204263344%_
                               _%hd263205263348%_
                               _%tl263206263351%_
                               _%__splice266594266595%_
                               _%target263230263271%_
                               _%tl263232263274%_)
                              (let ()
                                (declare (not safe))
                                (_%g263197263244%_)))))
                      (let () (declare (not safe)) (_%g263197263244%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl263206263351%_))
                  (let ((_%__splice266594266595%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263206263351%_
                            '0))))
                    (let ((_%tl263232263274%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266594266595%_ '1)))
                          (_%target263230263271%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266594266595%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263232263274%_))
                          (_%__match266652266653%_
                           _%e263201263334%_
                           _%hd263202263338%_
                           _%tl263203263341%_
                           _%e263204263344%_
                           _%hd263205263348%_
                           _%tl263206263351%_
                           _%__splice266594266595%_
                           _%target263230263271%_
                           _%tl263232263274%_)
                          (let () (declare (not safe)) (_%g263197263244%_)))))
                  (let () (declare (not safe)) (_%g263197263244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl263206263351%_))
                                                      (let ((_%__splice266594266595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl263206263351%_
                        '0))))
                (let ((_%tl263232263274%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266594266595%_ '1)))
                      (_%target263230263271%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266594266595%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl263232263274%_))
                      (_%__match266652266653%_
                       _%e263201263334%_
                       _%hd263202263338%_
                       _%tl263203263341%_
                       _%e263204263344%_
                       _%hd263205263348%_
                       _%tl263206263351%_
                       _%__splice266594266595%_
                       _%target263230263271%_
                       _%tl263232263274%_)
                      (let () (declare (not safe)) (_%g263197263244%_)))))
              (let () (declare (not safe)) (_%g263197263244%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263206263351%_))
                                              (let ((_%__splice266594266595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263206263351%_
                                                        '0))))
                                                (let ((_%tl263232263274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266594266595%_
                                                          '1)))
                                                      (_%target263230263271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266594266595%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263232263274%_))
                                                      (_%__match266652266653%_
                                                       _%e263201263334%_
                                                       _%hd263202263338%_
                                                       _%tl263203263341%_
                                                       _%e263204263344%_
                                                       _%hd263205263348%_
                                                       _%tl263206263351%_
                                                       _%__splice266594266595%_
                                                       _%target263230263271%_
                                                       _%tl263232263274%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263197263244%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263197263244%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263206263351%_))
                                      (let ((_%__splice266594266595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl263206263351%_
                                                '0))))
                                        (let ((_%tl263232263274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266594266595%_
                                                  '1)))
                                              (_%target263230263271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266594266595%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263232263274%_))
                                              (_%__match266652266653%_
                                               _%e263201263334%_
                                               _%hd263202263338%_
                                               _%tl263203263341%_
                                               _%e263204263344%_
                                               _%hd263205263348%_
                                               _%tl263206263351%_
                                               _%__splice266594266595%_
                                               _%target263230263271%_
                                               _%tl263232263274%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g263197263244%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263197263244%_))))))
                          (let () (declare (not safe)) (_%g263197263244%_)))))
                  (let () (declare (not safe)) (_%g263197263244%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx264587%_ _%id264589%_)
        (let ((_%proc264593%_
               (let ((__tmp267021
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264589%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267021))))
          (if (procedure? _%proc264593%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx264587%_
                 _%id264589%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx264578%_ _%id264580%_)
        (let ((_%klass264584%_
               (let ((__tmp267022
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264580%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267022))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass264584%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx264578%_
                 _%id264580%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx263828%_ _%proc263830%_ _%sig263831%_)
        (letrec ((_%signature-arity263833%_
                  (lambda (_%args264510%_)
                    (let _%loop264513%_ ((_%rest264516%_ _%args264510%_)
                                         (_%count264518%_ '0))
                      (let* ((_%rest264519264530%_ _%rest264516%_)
                             (_%E264523264536%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest264519264530%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K264526264567%_
                               (lambda (_%rest264564%_)
                                 (_%loop264513%_
                                  _%rest264564%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count264518%_ '1)))))
                              (_%K264525264556%_ (lambda () _%count264518%_))
                              (_%K264524264544%_
                               (lambda () (cons _%count264518%_ '()))))
                          (let ((_%try-match264521264560%_
                                 (lambda ()
                                   (if (null? _%rest264519264530%_)
                                       (_%K264525264556%_)
                                       (_%K264524264544%_)))))
                            (if (pair? _%rest264519264530%_)
                                (let* ((_%tl264528264571%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest264519264530%_)))
                                       (_%rest264575%_ _%tl264528264571%_))
                                  (_%K264526264567%_ _%rest264575%_))
                                (_%try-match264521264560%_))))))))
                 (_%make-signature263835%_
                  (lambda (_%args264392%_
                           _%return264394%_
                           _%effect264395%_
                           _%unchecked264396%_)
                    (let ((__tmp267023
                           (lambda (_%g264397264399%_)
                             (|gxc[1]#verify-class!|
                              _%ctx263828%_
                              _%g264397264399%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp267023 _%args264392%_))
                    (|gxc[1]#verify-class!| _%ctx263828%_ _%return264394%_)
                    (if _%unchecked264396%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx263828%_
                         _%unchecked264396%_)
                        '#!void)
                    (let ((_%arity264403%_
                           (_%signature-arity263833%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args264392%_)))))
                      (if _%effect264395%_
                          (let ((_%effect264406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect264395%_))))
                            (if (and (list? _%effect264406%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect264406%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx263828%_
                                   _%proc263830%_
                                   _%effect264406%_))))
                          '#!void)
                      (cons _%arity264403%_
                            (cons (let* ((_%g264409264432%_
                                          (lambda (_%g264410264428%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g264410264428%_))))
                                         (_%g264408264506%_
                                          (lambda (_%g264410264436%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g264410264436%_))
                                                (let ((_%e264415264439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g264410264436%_))))
                                                  (let ((_%hd264416264443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264415264439%_)))
                                                        (_%tl264417264446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264415264439%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264417264446%_))
                                                        (let ((_%e264418264449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264417264446%_))))
                  (let ((_%hd264419264453%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264418264449%_)))
                        (_%tl264420264456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264418264449%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264420264456%_))
                        (let ((_%e264421264459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264420264456%_))))
                          (let ((_%hd264422264463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264421264459%_)))
                                (_%tl264423264466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264421264459%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264423264466%_))
                                (let ((_%e264424264469%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264423264466%_))))
                                  (let ((_%hd264425264473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264424264469%_)))
                                        (_%tl264426264476%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264424264469%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264426264476%_))
                                        ((lambda (_%g264411264479%_
                                                  _%g264412264481%_
                                                  _%g264413264482%_
                                                  _%g264414264483%_)
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
                           (cons _%g264414264483%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g264413264482%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264412264481%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264411264479%_ '()))
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
                                         _%hd264425264473%_
                                         _%hd264422264463%_
                                         _%hd264419264453%_
                                         _%hd264416264443%_)
                                        (_%g264409264432%_
                                         _%g264410264436%_))))
                                (_%g264409264432%_ _%g264410264436%_))))
                        (_%g264409264432%_ _%g264410264436%_))))
                (_%g264409264432%_ _%g264410264436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264409264432%_
                                                 _%g264410264436%_)))))
                                    (_%g264408264506%_
                                     (list _%args264392%_
                                           _%return264394%_
                                           _%effect264395%_
                                           _%unchecked264396%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx263828%_ _%proc263830%_)
          (let* ((_%__stx266663266664%_ _%sig263831%_)
                 (_%g263842263945%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266663266664%_)))))
            (let ((_%__kont266666266667%_
                   (lambda (_%g263844264373%_ _%g263845264375%_)
                     (_%make-signature263835%_
                      _%g263845264375%_
                      _%g263844264373%_
                      '#f
                      '#f)))
                  (_%__kont266668266669%_
                   (lambda (_%g263852264324%_
                            _%g263853264326%_
                            _%g263854264327%_)
                     (_%make-signature263835%_
                      _%g263854264327%_
                      _%g263853264326%_
                      _%g263852264324%_
                      '#f)))
                  (_%__kont266670266671%_
                   (lambda (_%g263868264248%_
                            _%g263869264250%_
                            _%g263870264251%_)
                     (_%make-signature263835%_
                      _%g263870264251%_
                      _%g263869264250%_
                      _%g263868264248%_
                      (let ((__tmp267024
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263830%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267024)))))
                  (_%__kont266672266673%_
                   (lambda (_%g263888264154%_
                            _%g263889264156%_
                            _%g263890264157%_
                            _%g263891264158%_)
                     (_%make-signature263835%_
                      _%g263891264158%_
                      _%g263890264157%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263888264154%_)))))
                  (_%__kont266674266675%_
                   (lambda (_%g263912264061%_ _%g263913264063%_)
                     (_%make-signature263835%_
                      _%g263913264063%_
                      _%g263912264061%_
                      '#f
                      (let ((__tmp267025
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263830%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267025)))))
                  (_%__kont266676266677%_
                   (lambda (_%g263924263996%_
                            _%g263925263998%_
                            _%g263926263999%_)
                     (_%make-signature263835%_
                      _%g263926263999%_
                      _%g263925263998%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263924263996%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266663266664%_))
                  (let ((_%e263846264353%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266663266664%_))))
                    (let ((_%tl263848264360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263846264353%_)))
                          (_%hd263847264357%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263846264353%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263848264360%_))
                          (let ((_%e263849264363%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263848264360%_))))
                            (let ((_%tl263851264370%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263849264363%_)))
                                  (_%hd263850264367%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263849264363%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263851264370%_))
                                  (_%__kont266666266667%_
                                   _%hd263850264367%_
                                   _%hd263847264357%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263851264370%_))
                                      (let ((_%e263861264300%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263851264370%_))))
                                        (let ((_%tl263863264307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263861264300%_)))
                                              (_%hd263862264304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263861264300%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd263862264304%_))
                                              (let ((_%e263864264310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd263862264304%_))))
                                                (if (equal? _%e263864264310%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263863264307%_))
                                                        (let ((_%e263865264314%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263863264307%_))))
                  (let ((_%tl263867264321%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263865264314%_)))
                        (_%hd263866264318%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263865264314%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263867264321%_))
                        (_%__kont266668266669%_
                         _%hd263866264318%_
                         _%hd263850264367%_
                         _%hd263847264357%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263867264321%_))
                            (let ((_%e263884264234%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263867264321%_))))
                              (let ((_%tl263886264241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263884264234%_)))
                                    (_%hd263885264238%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263884264234%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd263885264238%_))
                                    (let ((_%e263887264244%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd263885264238%_))))
                                      (if (equal? _%e263887264244%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263886264241%_))
                                              (_%__kont266670266671%_
                                               _%hd263866264318%_
                                               _%hd263850264367%_
                                               _%hd263847264357%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263886264241%_))
                                                  (let ((_%e263909264144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263886264241%_))))
                                                    (let ((_%tl263911264151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263909264144%_)))
                                                          (_%hd263910264148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263909264144%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263911264151%_))
                                                          (_%__kont266672266673%_
                                                           _%hd263910264148%_
                                                           _%hd263866264318%_
                                                           _%hd263850264367%_
                                                           _%hd263847264357%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263842263945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263842263945%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263842263945%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263842263945%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263842263945%_))))))
                (let () (declare (not safe)) (_%g263842263945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e263864264310%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263863264307%_))
                                                            (_%__kont266674266675%_
                                                             _%hd263850264367%_
                                                             _%hd263847264357%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl263863264307%_))
                        (let ((_%e263937263986%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263863264307%_))))
                          (let ((_%tl263939263993%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263937263986%_)))
                                (_%hd263938263990%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263937263986%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263939263993%_))
                                (_%__kont266676266677%_
                                 _%hd263938263990%_
                                 _%hd263850264367%_
                                 _%hd263847264357%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263842263945%_)))))
                        (let () (declare (not safe)) (_%g263842263945%_))))
                (let () (declare (not safe)) (_%g263842263945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263842263945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263842263945%_))))))
                          (let () (declare (not safe)) (_%g263842263945%_)))))
                  (let () (declare (not safe)) (_%g263842263945%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig263439%_)
        (let* ((_%g263442263522%_
                (lambda (_%g263443263518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263443263518%_))))
               (_%g263441263824%_
                (lambda (_%g263443263526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263443263526%_))
                      (let ((_%e263449263529%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263443263526%_))))
                        (let ((_%hd263450263533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263449263529%_)))
                              (_%tl263451263536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263449263529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263451263536%_))
                              (let ((_%e263452263539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263451263536%_))))
                                (let ((_%hd263453263543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263452263539%_)))
                                      (_%tl263454263546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263452263539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd263453263543%_))
                                      (let ((_%e263455263549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd263453263543%_))))
                                        (if (equal? _%e263455263549%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263454263546%_))
                                                (let ((_%e263456263553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263454263546%_))))
                                                  (let ((_%hd263457263557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263456263553%_)))
                                                        (_%tl263458263560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263456263553%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263457263557%_))
                                                        (let ((_%e263459263563%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263457263557%_))))
                  (let ((_%hd263460263567%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263459263563%_)))
                        (_%tl263461263570%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263459263563%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd263460263567%_))
                        (if (let ((__tmp267026 |gxc[1]#_g267027_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp267026
                               _%hd263460263567%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263461263570%_))
                                (let ((_%e263462263573%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263461263570%_))))
                                  (let ((_%hd263463263577%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263462263573%_)))
                                        (_%tl263464263580%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263462263573%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263464263580%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263458263560%_))
                                            (let ((_%e263465263583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263458263560%_))))
                                              (let ((_%hd263466263587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263465263583%_)))
                                                    (_%tl263467263590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263465263583%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263466263587%_))
                                                    (let ((_%e263468263593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263466263587%_))))
                                                      (if (equal? _%e263468263593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263467263590%_))
                      (let ((_%e263469263597%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263467263590%_))))
                        (let ((_%hd263470263601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263469263597%_)))
                              (_%tl263471263604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263469263597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd263470263601%_))
                              (let ((_%e263472263607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd263470263601%_))))
                                (let ((_%hd263473263611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263472263607%_)))
                                      (_%tl263474263614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263472263607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd263473263611%_))
                                      (if (let ((__tmp267028
                                                 |gxc[1]#_g267029_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp267028
                                             _%hd263473263611%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263474263614%_))
                                              (let ((_%e263475263617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263474263614%_))))
                                                (let ((_%hd263476263621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263475263617%_)))
                                                      (_%tl263477263624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263475263617%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263477263624%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263471263604%_))
                                                          (let ((_%e263478263627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263471263604%_))))
                    (let ((_%hd263479263631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263478263627%_)))
                          (_%tl263480263634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263478263627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd263479263631%_))
                          (let ((_%e263481263637%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd263479263631%_))))
                            (if (equal? _%e263481263637%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl263480263634%_))
                                    (let ((_%e263482263641%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl263480263634%_))))
                                      (let ((_%hd263483263645%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263482263641%_)))
                                            (_%tl263484263648%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263482263641%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd263483263645%_))
                                            (let ((_%e263485263651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd263483263645%_))))
                                              (let ((_%hd263486263655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263485263651%_)))
                                                    (_%tl263487263658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263485263651%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd263486263655%_))
                                                    (if (let ((__tmp267030
                                                               |gxc[1]#_g267031_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp267030
                                                           _%hd263486263655%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl263487263658%_))
                                                            (let ((_%e263488263661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl263487263658%_))))
                      (let ((_%hd263489263665%_
                             (let ()
                               (declare (not safe))
                               (##car _%e263488263661%_)))
                            (_%tl263490263668%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e263488263661%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl263490263668%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263484263648%_))
                                (let ((_%e263491263671%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263484263648%_))))
                                  (let ((_%hd263492263675%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263491263671%_)))
                                        (_%tl263493263678%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263491263671%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd263492263675%_))
                                        (let ((_%e263494263681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd263492263675%_))))
                                          (if (equal? _%e263494263681%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263493263678%_))
                                                  (let ((_%e263495263685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263493263678%_))))
                                                    (let ((_%hd263496263689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263495263685%_)))
                                                          (_%tl263497263692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263495263685%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd263496263689%_))
                                                          (let ((_%e263498263695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd263496263689%_))))
                    (let ((_%hd263499263699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263498263695%_)))
                          (_%tl263500263702%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263498263695%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd263499263699%_))
                          (if (let ((__tmp267032 |gxc[1]#_g267033_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp267032
                                 _%hd263499263699%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263500263702%_))
                                  (let ((_%e263501263705%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263500263702%_))))
                                    (let ((_%hd263502263709%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263501263705%_)))
                                          (_%tl263503263712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263501263705%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl263503263712%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263497263692%_))
                                              (let ((_%e263504263715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263497263692%_))))
                                                (let ((_%hd263505263719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263504263715%_)))
                                                      (_%tl263506263722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263504263715%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd263505263719%_))
                                                      (let ((_%e263507263725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd263505263719%_))))
                (if (equal? _%e263507263725%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263506263722%_))
                        (let ((_%e263508263729%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263506263722%_))))
                          (let ((_%hd263509263733%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263508263729%_)))
                                (_%tl263510263736%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263508263729%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd263509263733%_))
                                (let ((_%e263511263739%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd263509263733%_))))
                                  (let ((_%hd263512263743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263511263739%_)))
                                        (_%tl263513263746%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263511263739%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd263512263743%_))
                                        (if (let ((__tmp267034
                                                   |gxc[1]#_g267035_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp267034
                                               _%hd263512263743%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263513263746%_))
                                                (let ((_%e263514263749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263513263746%_))))
                                                  (let ((_%hd263515263753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263514263749%_)))
                                                        (_%tl263516263756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263514263749%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl263516263756%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263510263736%_))
                                                            ((lambda (_%g263444263759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g263445263761%_
                              _%g263446263762%_
                              _%g263447263763%_
                              _%g263448263764%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g263445263761%_))
                           (cons _%g263445263761%_
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
                       (cons _%g263447263763%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263444263759%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd263515263753%_
                     _%hd263502263709%_
                     _%hd263489263665%_
                     _%hd263476263621%_
                     _%hd263463263577%_)
                    (_%g263442263522%_ _%g263443263526%_))
                (_%g263442263522%_ _%g263443263526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263442263522%_
                                                 _%g263443263526%_))
                                            (_%g263442263522%_
                                             _%g263443263526%_))
                                        (_%g263442263522%_
                                         _%g263443263526%_))))
                                (_%g263442263522%_ _%g263443263526%_))))
                        (_%g263442263522%_ _%g263443263526%_))
                    (_%g263442263522%_ _%g263443263526%_)))
              (_%g263442263522%_ _%g263443263526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263442263522%_
                                               _%g263443263526%_))
                                          (_%g263442263522%_
                                           _%g263443263526%_))))
                                  (_%g263442263522%_ _%g263443263526%_))
                              (_%g263442263522%_ _%g263443263526%_))
                          (_%g263442263522%_ _%g263443263526%_))))
                  (_%g263442263522%_ _%g263443263526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263442263522%_
                                                   _%g263443263526%_))
                                              (_%g263442263522%_
                                               _%g263443263526%_)))
                                        (_%g263442263522%_
                                         _%g263443263526%_))))
                                (_%g263442263522%_ _%g263443263526%_))
                            (_%g263442263522%_ _%g263443263526%_))))
                    (_%g263442263522%_ _%g263443263526%_))
                (_%g263442263522%_ _%g263443263526%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263442263522%_
                                                     _%g263443263526%_))))
                                            (_%g263442263522%_
                                             _%g263443263526%_))))
                                    (_%g263442263522%_ _%g263443263526%_))
                                (_%g263442263522%_ _%g263443263526%_)))
                          (_%g263442263522%_ _%g263443263526%_))))
                  (_%g263442263522%_ _%g263443263526%_))
              (_%g263442263522%_ _%g263443263526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263442263522%_
                                               _%g263443263526%_))
                                          (_%g263442263522%_
                                           _%g263443263526%_))
                                      (_%g263442263522%_ _%g263443263526%_))))
                              (_%g263442263522%_ _%g263443263526%_))))
                      (_%g263442263522%_ _%g263443263526%_))
                  (_%g263442263522%_ _%g263443263526%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263442263522%_
                                                     _%g263443263526%_))))
                                            (_%g263442263522%_
                                             _%g263443263526%_))
                                        (_%g263442263522%_
                                         _%g263443263526%_))))
                                (_%g263442263522%_ _%g263443263526%_))
                            (_%g263442263522%_ _%g263443263526%_))
                        (_%g263442263522%_ _%g263443263526%_))))
                (_%g263442263522%_ _%g263443263526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263442263522%_
                                                 _%g263443263526%_))
                                            (_%g263442263522%_
                                             _%g263443263526%_)))
                                      (_%g263442263522%_ _%g263443263526%_))))
                              (_%g263442263522%_ _%g263443263526%_))))
                      (_%g263442263522%_ _%g263443263526%_)))))
          (_%g263441263824%_ _%sig263439%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx264596%_)
        (let* ((_%g264599264617%_
                (lambda (_%g264600264613%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264600264613%_))))
               (_%g264598264672%_
                (lambda (_%g264600264621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264600264621%_))
                      (let ((_%e264603264624%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264600264621%_))))
                        (let ((_%hd264604264628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264603264624%_)))
                              (_%tl264605264631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264603264624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264605264631%_))
                              (let ((_%e264606264634%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264605264631%_))))
                                (let ((_%hd264607264638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264606264634%_)))
                                      (_%tl264608264641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264606264634%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264608264641%_))
                                      (let ((_%e264609264644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264608264641%_))))
                                        (let ((_%hd264610264648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264609264644%_)))
                                              (_%tl264611264651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264609264644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264611264651%_))
                                              ((lambda (_%g264601264654%_
                                                        _%g264602264656%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264602264656%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264601264654%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx264596%_
                                                        _%g264602264656%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx264596%_
                                                        _%g264601264654%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g264602264656%_
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
                                                   (cons _%g264601264654%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264599264617%_
                                                      _%g264600264621%_)))
                                               _%hd264610264648%_
                                               _%hd264607264638%_)
                                              (_%g264599264617%_
                                               _%g264600264621%_))))
                                      (_%g264599264617%_ _%g264600264621%_))))
                              (_%g264599264617%_ _%g264600264621%_))))
                      (_%g264599264617%_ _%g264600264621%_)))))
          (_%g264598264672%_ _%stx264596%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx264676%_)
        (let* ((_%g264679264703%_
                (lambda (_%g264680264699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264680264699%_))))
               (_%g264678264984%_
                (lambda (_%g264680264707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264680264707%_))
                      (let ((_%e264683264710%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264680264707%_))))
                        (let ((_%hd264684264714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264683264710%_)))
                              (_%tl264685264717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264683264710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264685264717%_))
                              (let ((_%e264686264720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264685264717%_))))
                                (let ((_%hd264687264724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264686264720%_)))
                                      (_%tl264688264727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264686264720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264688264727%_))
                                      (let ((_g267036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264688264727%_
                                                '0))))
                                        (begin
                                          (let ((_g267037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267036_)
                                                       (##values-length
                                                        _g267036_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267037_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267037_)))
                                          (let ((_%target264689264730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267036_ 0)))
                                                (_%tl264691264733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267036_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264691264733%_))
                                                (letrec ((_%loop264692264736%_
                                                          (lambda (_%hd264690264740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature264696264743%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264690264740%_))
                        (let ((_%e264693264745%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264690264740%_))))
                          (let ((_%lp-hd264694264749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264693264745%_)))
                                (_%lp-tl264695264752%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264693264745%_))))
                            (_%loop264692264736%_
                             _%lp-tl264695264752%_
                             (cons _%lp-hd264694264749%_
                                   _%signature264696264743%_))))
                        (let ((_%signature264697264755%_
                               (reverse _%signature264696264743%_)))
                          ((lambda (_%g264681264758%_ _%g264682264760%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264682264760%_))
                                 (let* ((_%g264778264793%_
                                         (lambda (_%g264779264789%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264779264789%_))))
                                        (_%g264777264972%_
                                         (lambda (_%g264779264797%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264779264797%_))
                                               (let ((_%e264782264800%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264779264797%_))))
                                                 (let ((_%hd264783264804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264782264800%_)))
                                                       (_%tl264784264807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264782264800%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264784264807%_))
                                                       (let ((_%e264785264810%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264784264807%_))))
                 (let ((_%hd264786264814%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264785264810%_)))
                       (_%tl264787264817%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264785264810%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl264787264817%_))
                       ((lambda (_%g264780264820%_ _%g264781264822%_)
                          (let* ((_%g264838264846%_
                                  (lambda (_%g264839264842%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g264839264842%_))))
                                 (_%g264837264968%_
                                  (lambda (_%g264839264850%_)
                                    ((lambda (_%g264840264853%_)
                                       (let* ((_%unchecked264866%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g264780264820%_))
                                              (_%g264869264877%_
                                               (lambda (_%g264870264873%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g264870264873%_))))
                                              (_%g264868264900%_
                                               (lambda (_%g264870264881%_)
                                                 ((lambda (_%g264871264884%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g264840264853%_
                                                                (cons _%g264871264884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g264870264881%_))))
                                         (_%g264868264900%_
                                          (if _%unchecked264866%_
                                              (let* ((_%g264904264919%_
                                                      (lambda (_%g264905264915%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g264905264915%_))))
                                                     (_%g264903264964%_
                                                      (lambda (_%g264905264923%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g264905264923%_))
                                                            (let ((_%e264908264926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g264905264923%_))))
                      (let ((_%hd264909264930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264908264926%_)))
                            (_%tl264910264933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264908264926%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264910264933%_))
                            (let ((_%e264911264936%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264910264933%_))))
                              (let ((_%hd264912264940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264911264936%_)))
                                    (_%tl264913264943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264911264936%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264913264943%_))
                                    ((lambda (_%g264906264946%_
                                              _%g264907264948%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g264907264948%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264781264822%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g264906264946%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd264912264940%_
                                     _%hd264909264930%_)
                                    (_%g264904264919%_ _%g264905264923%_))))
                            (_%g264904264919%_ _%g264905264923%_))))
                    (_%g264904264919%_ _%g264905264923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264903264964%_
                                                 _%unchecked264866%_))
                                              '(begin)))))
                                     _%g264839264850%_))))
                            (_%g264837264968%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g264682264760%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g264781264822%_ '()))
                   (cons '#f (cons 'signature: (cons _%g264780264820%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd264786264814%_
                        _%hd264783264804%_)
                       (_%g264778264793%_ _%g264779264797%_))))
               (_%g264778264793%_ _%g264779264797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264778264793%_
                                                _%g264779264797%_)))))
                                   (_%g264777264972%_
                                    (|gxc[1]#parse-signature|
                                     _%stx264676%_
                                     _%g264682264760%_
                                     (let ((__tmp267038
                                            (lambda (_%g264975264978%_
                                                     _%g264976264981%_)
                                              (cons _%g264975264978%_
                                                    _%g264976264981%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp267038
                                        '()
                                        _%g264681264758%_)))))
                                 (_%g264679264703%_ _%g264680264707%_)))
                           _%signature264697264755%_
                           _%hd264687264724%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264692264736%_
                                                   _%target264689264730%_
                                                   '()))
                                                (_%g264679264703%_
                                                 _%g264680264707%_)))))
                                      (_%g264679264703%_ _%g264680264707%_))))
                              (_%g264679264703%_ _%g264680264707%_))))
                      (_%g264679264703%_ _%g264680264707%_)))))
          (_%g264678264984%_ _%stx264676%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx264989%_)
        (let* ((_%g264992265016%_
                (lambda (_%g264993265012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264993265012%_))))
               (_%g264991265891%_
                (lambda (_%g264993265020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264993265020%_))
                      (let ((_%e264996265023%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264993265020%_))))
                        (let ((_%hd264997265027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264996265023%_)))
                              (_%tl264998265030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264996265023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264998265030%_))
                              (let ((_%e264999265033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264998265030%_))))
                                (let ((_%hd265000265037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264999265033%_)))
                                      (_%tl265001265040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264999265033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265001265040%_))
                                      (let ((_g267039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265001265040%_
                                                '0))))
                                        (begin
                                          (let ((_g267040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267039_)
                                                       (##values-length
                                                        _g267039_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267040_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267040_)))
                                          (let ((_%target265002265043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267039_ 0)))
                                                (_%tl265004265046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267039_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265004265046%_))
                                                (letrec ((_%loop265005265049%_
                                                          (lambda (_%hd265003265053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature265009265056%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265003265053%_))
                        (let ((_%e265006265058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265003265053%_))))
                          (let ((_%lp-hd265007265062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265006265058%_)))
                                (_%lp-tl265008265065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265006265058%_))))
                            (_%loop265005265049%_
                             _%lp-tl265008265065%_
                             (cons _%lp-hd265007265062%_
                                   _%case-signature265009265056%_))))
                        (let ((_%case-signature265010265068%_
                               (reverse _%case-signature265009265056%_)))
                          ((lambda (_%g264994265071%_ _%g264995265073%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264995265073%_))
                                 (let* ((_%signatures265104%_
                                         (map (lambda (_%g265090265092%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx264989%_
                                                 _%g264995265073%_
                                                 _%g265090265092%_))
                                              (let ((__tmp267041
                                                     (lambda (_%g265095265098%_
                                                              _%g265096265101%_)
                                                       (cons _%g265095265098%_
                                                             _%g265096265101%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp267041
                                                 '()
                                                 _%g264994265071%_))))
                                        (_%g265107265133%_
                                         (lambda (_%g265108265129%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265108265129%_))))
                                        (_%g265106265887%_
                                         (lambda (_%g265108265137%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g265108265137%_))
                                               (let ((_g267042_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g265108265137%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g267043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g267042_)
                        (##values-length _g267042_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g267043_ 2)))
                 (error "Context expects 2 values" _g267043_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target265111265140%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267042_
                                                             0)))
                                                         (_%tl265113265143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267042_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265113265143%_))
                                                         (letrec ((_%loop265114265146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd265112265150%_
                                    _%sig265118265153%_
                                    _%arity265119265154%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265112265150%_))
                                 (let ((_%e265115265156%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265112265150%_))))
                                   (let ((_%lp-hd265116265160%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265115265156%_)))
                                         (_%lp-tl265117265163%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265115265156%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd265116265160%_))
                                         (let ((_%e265122265166%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd265116265160%_))))
                                           (let ((_%hd265123265170%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e265122265166%_)))
                                                 (_%tl265124265173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e265122265166%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265124265173%_))
                                                 (let ((_%e265125265176%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265124265173%_))))
                                                   (let ((_%hd265126265180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265125265176%_)))
                                                         (_%tl265127265183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265125265176%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265127265183%_))
                                                         (_%loop265114265146%_
                                                          _%lp-tl265117265163%_
                                                          (cons _%hd265126265180%_
                                                                _%sig265118265153%_)
                                                          (cons _%hd265123265170%_
                                                                _%arity265119265154%_))
                                                         (_%g265107265133%_
                                                          _%g265108265137%_))))
                                                 (_%g265107265133%_
                                                  _%g265108265137%_))))
                                         (_%g265107265133%_
                                          _%g265108265137%_))))
                                 (let ((_%sig265120265186%_
                                        (reverse _%sig265118265153%_))
                                       (_%arity265121265188%_
                                        (reverse _%arity265119265154%_)))
                                   ((lambda (_%g265109265190%_
                                             _%g265110265192%_)
                                      (let* ((_%g265209265217%_
                                              (lambda (_%g265210265213%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g265210265213%_))))
                                             (_%g265208265872%_
                                              (lambda (_%g265210265221%_)
                                                ((lambda (_%g265211265224%_)
                                                   (let* ((_%g265237265245%_
                                                           (lambda (_%g265238265241%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g265238265241%_))))
                  (_%g265236265267%_
                   (lambda (_%g265238265249%_)
                     ((lambda (_%g265239265252%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g265211265224%_
                                    (cons _%g265239265252%_ '()))))
                      _%g265238265249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265236265267%_
                                                      (let ((_g267044_
                                                             (let _%loop265271%_ ((_%rest265274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures265104%_)
                                          (_%unchecked-proc265276%_ '#f)
                                          (_%unchecked-clauses265277%_ '()))
                       (let* ((_%rest265278265286%_ _%rest265274%_)
                              (_%else265280265298%_
                               (lambda ()
                                 (values _%unchecked-proc265276%_
                                         (reverse!
                                          _%unchecked-clauses265277%_))))
                              (_%K265282265739%_
                               (lambda (_%rest265302%_ _%hd265304%_)
                                 (let* ((_%g265306265393%_
                                         (lambda (_%g265307265389%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265307265389%_))))
                                        (_%g265305265735%_
                                         (lambda (_%g265307265397%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265307265397%_))
                                               (let ((_%e265314265400%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265307265397%_))))
                                                 (let ((_%hd265315265404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265314265400%_)))
                                                       (_%tl265316265407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265314265400%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265316265407%_))
                                                       (let ((_%e265317265410%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265316265407%_))))
                 (let ((_%hd265318265414%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265317265410%_)))
                       (_%tl265319265417%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265317265410%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd265318265414%_))
                       (let ((_%e265320265420%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd265318265414%_))))
                         (let ((_%hd265321265424%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265320265420%_)))
                               (_%tl265322265427%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265320265420%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl265322265427%_))
                               (let ((_%e265323265430%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl265322265427%_))))
                                 (let ((_%hd265324265434%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265323265430%_)))
                                       (_%tl265325265437%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265323265430%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd265324265434%_))
                                       (let ((_%e265326265440%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd265324265434%_))))
                                         (if (equal? _%e265326265440%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265325265437%_))
                                                 (let ((_%e265327265444%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265325265437%_))))
                                                   (let ((_%hd265328265448%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265327265444%_)))
                                                         (_%tl265329265451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265327265444%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd265328265448%_))
                                                         (let ((_%e265330265454%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd265328265448%_))))
                   (let ((_%hd265331265458%_
                          (let ()
                            (declare (not safe))
                            (##car _%e265330265454%_)))
                         (_%tl265332265461%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e265330265454%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd265331265458%_))
                         (if (let ((__tmp267046 |gxc[1]#_g267047_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp267046
                                _%hd265331265458%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265332265461%_))
                                 (let ((_%e265333265464%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265332265461%_))))
                                   (let ((_%hd265334265468%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265333265464%_)))
                                         (_%tl265335265471%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265333265464%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl265335265471%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl265329265451%_))
                                             (let ((_%e265336265474%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl265329265451%_))))
                                               (let ((_%hd265337265478%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265336265474%_)))
                                                     (_%tl265338265481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265336265474%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd265337265478%_))
                                                     (let ((_%e265339265484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd265337265478%_))))
                                                       (if (equal? _%e265339265484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl265338265481%_))
                       (let ((_%e265340265488%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl265338265481%_))))
                         (let ((_%hd265341265492%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265340265488%_)))
                               (_%tl265342265495%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265340265488%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd265341265492%_))
                               (let ((_%e265343265498%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd265341265492%_))))
                                 (let ((_%hd265344265502%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265343265498%_)))
                                       (_%tl265345265505%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265343265498%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd265344265502%_))
                                       (if (let ((__tmp267048
                                                  |gxc[1]#_g267049_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp267048
                                              _%hd265344265502%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265345265505%_))
                                               (let ((_%e265346265508%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265345265505%_))))
                                                 (let ((_%hd265347265512%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265346265508%_)))
                                                       (_%tl265348265515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265346265508%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl265348265515%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl265342265495%_))
                                                           (let ((_%e265349265518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl265342265495%_))))
                     (let ((_%hd265350265522%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265349265518%_)))
                           (_%tl265351265525%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265349265518%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd265350265522%_))
                           (let ((_%e265352265528%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd265350265522%_))))
                             (if (equal? _%e265352265528%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl265351265525%_))
                                     (let ((_%e265353265532%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl265351265525%_))))
                                       (let ((_%hd265354265536%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265353265532%_)))
                                             (_%tl265355265539%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265353265532%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd265354265536%_))
                                             (let ((_%e265356265542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd265354265536%_))))
                                               (let ((_%hd265357265546%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265356265542%_)))
                                                     (_%tl265358265549%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265356265542%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd265357265546%_))
                                                     (if (let ((__tmp267050
                                                                |gxc[1]#_g267051_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp267050
                                                            _%hd265357265546%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl265358265549%_))
                     (let ((_%e265359265552%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl265358265549%_))))
                       (let ((_%hd265360265556%_
                              (let ()
                                (declare (not safe))
                                (##car _%e265359265552%_)))
                             (_%tl265361265559%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e265359265552%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl265361265559%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265355265539%_))
                                 (let ((_%e265362265562%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265355265539%_))))
                                   (let ((_%hd265363265566%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265362265562%_)))
                                         (_%tl265364265569%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265362265562%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd265363265566%_))
                                         (let ((_%e265365265572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd265363265566%_))))
                                           (if (equal? _%e265365265572%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl265364265569%_))
                                                   (let ((_%e265366265576%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl265364265569%_))))
                                                     (let ((_%hd265367265580%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e265366265576%_)))
                                                           (_%tl265368265583%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e265366265576%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd265367265580%_))
                                                           (let ((_%e265369265586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd265367265580%_))))
                     (let ((_%hd265370265590%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265369265586%_)))
                           (_%tl265371265593%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265369265586%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd265370265590%_))
                           (if (let ((__tmp267052 |gxc[1]#_g267053_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp267052
                                  _%hd265370265590%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl265371265593%_))
                                   (let ((_%e265372265596%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl265371265593%_))))
                                     (let ((_%hd265373265600%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e265372265596%_)))
                                           (_%tl265374265603%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e265372265596%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl265374265603%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265368265583%_))
                                               (let ((_%e265375265606%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265368265583%_))))
                                                 (let ((_%hd265376265610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265375265606%_)))
                                                       (_%tl265377265613%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265375265606%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd265376265610%_))
                                                       (let ((_%e265378265616%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd265376265610%_))))
                 (if (equal? _%e265378265616%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl265377265613%_))
                         (let ((_%e265379265620%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl265377265613%_))))
                           (let ((_%hd265380265624%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e265379265620%_)))
                                 (_%tl265381265627%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e265379265620%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265380265624%_))
                                 (let ((_%e265382265630%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265380265624%_))))
                                   (let ((_%hd265383265634%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265382265630%_)))
                                         (_%tl265384265637%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265382265630%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd265383265634%_))
                                         (if (let ((__tmp267054
                                                    |gxc[1]#_g267055_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp267054
                                                _%hd265383265634%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265384265637%_))
                                                 (let ((_%e265385265640%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265384265637%_))))
                                                   (let ((_%hd265386265644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265385265640%_)))
                                                         (_%tl265387265647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265385265640%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265387265647%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl265381265627%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl265319265417%_))
                         ((lambda (_%g265308265650%_
                                   _%g265309265652%_
                                   _%g265310265653%_
                                   _%g265311265654%_
                                   _%g265312265655%_
                                   _%g265313265656%_)
                            (let ((_%clause265727%_
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
                                                     (cons _%g265313265656%_
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
                                                 (cons _%g265311265654%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265308265650%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked265729%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g265309265652%_))))
                              (_%loop265271%_
                               _%rest265302%_
                               (let ((_%$e265731%_ _%unchecked265729%_))
                                 (if _%$e265731%_
                                     _%$e265731%_
                                     _%unchecked-proc265276%_))
                               (cons _%clause265727%_
                                     _%unchecked-clauses265277%_))))
                          _%hd265386265644%_
                          _%hd265373265600%_
                          _%hd265360265556%_
                          _%hd265347265512%_
                          _%hd265334265468%_
                          _%hd265315265404%_)
                         (_%g265306265393%_ _%g265307265397%_))
                     (_%g265306265393%_ _%g265307265397%_))
                 (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265306265393%_
                                                  _%g265307265397%_))
                                             (_%g265306265393%_
                                              _%g265307265397%_))
                                         (_%g265306265393%_
                                          _%g265307265397%_))))
                                 (_%g265306265393%_ _%g265307265397%_))))
                         (_%g265306265393%_ _%g265307265397%_))
                     (_%g265306265393%_ _%g265307265397%_)))
               (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265306265393%_
                                                _%g265307265397%_))
                                           (_%g265306265393%_
                                            _%g265307265397%_))))
                                   (_%g265306265393%_ _%g265307265397%_))
                               (_%g265306265393%_ _%g265307265397%_))
                           (_%g265306265393%_ _%g265307265397%_))))
                   (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g265306265393%_
                                                    _%g265307265397%_))
                                               (_%g265306265393%_
                                                _%g265307265397%_)))
                                         (_%g265306265393%_
                                          _%g265307265397%_))))
                                 (_%g265306265393%_ _%g265307265397%_))
                             (_%g265306265393%_ _%g265307265397%_))))
                     (_%g265306265393%_ _%g265307265397%_))
                 (_%g265306265393%_ _%g265307265397%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265306265393%_
                                                      _%g265307265397%_))))
                                             (_%g265306265393%_
                                              _%g265307265397%_))))
                                     (_%g265306265393%_ _%g265307265397%_))
                                 (_%g265306265393%_ _%g265307265397%_)))
                           (_%g265306265393%_ _%g265307265397%_))))
                   (_%g265306265393%_ _%g265307265397%_))
               (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265306265393%_
                                                _%g265307265397%_))
                                           (_%g265306265393%_
                                            _%g265307265397%_))
                                       (_%g265306265393%_ _%g265307265397%_))))
                               (_%g265306265393%_ _%g265307265397%_))))
                       (_%g265306265393%_ _%g265307265397%_))
                   (_%g265306265393%_ _%g265307265397%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265306265393%_
                                                      _%g265307265397%_))))
                                             (_%g265306265393%_
                                              _%g265307265397%_))
                                         (_%g265306265393%_
                                          _%g265307265397%_))))
                                 (_%g265306265393%_ _%g265307265397%_))
                             (_%g265306265393%_ _%g265307265397%_))
                         (_%g265306265393%_ _%g265307265397%_))))
                 (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265306265393%_
                                                  _%g265307265397%_))
                                             (_%g265306265393%_
                                              _%g265307265397%_)))
                                       (_%g265306265393%_ _%g265307265397%_))))
                               (_%g265306265393%_ _%g265307265397%_))))
                       (_%g265306265393%_ _%g265307265397%_))))
               (_%g265306265393%_ _%g265307265397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265306265393%_
                                                _%g265307265397%_)))))
                                   (_%g265305265735%_ _%hd265304%_)))))
                         (if (pair? _%rest265278265286%_)
                             (let ((_%hd265283265743%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest265278265286%_)))
                                   (_%tl265284265746%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest265278265286%_))))
                               (let* ((_%hd265749%_ _%hd265283265743%_)
                                      (_%rest265752%_ _%tl265284265746%_))
                                 (_%K265282265739%_
                                  _%rest265752%_
                                  _%hd265749%_)))
                             (_%else265280265298%_))))))
                (begin
                  (let ((_g267045_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267044_)
                               (##values-length _g267044_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267045_ 2)))
                        (error "Context expects 2 values" _g267045_)))
                  (let ((_%unchecked-proc265755%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267044_ 0)))
                        (_%unchecked-clauses265757%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267044_ 1))))
                    (if _%unchecked-proc265755%_
                        (let* ((_%g265759265783%_
                                (lambda (_%g265760265779%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g265760265779%_))))
                               (_%g265758265868%_
                                (lambda (_%g265760265787%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g265760265787%_))
                                      (let ((_%e265763265790%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g265760265787%_))))
                                        (let ((_%hd265764265794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265763265790%_)))
                                              (_%tl265765265797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265763265790%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265765265797%_))
                                              (let ((_%e265766265800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265765265797%_))))
                                                (let ((_%hd265767265804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265766265800%_)))
                                                      (_%tl265768265807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265766265800%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd265767265804%_))
                                                      (let ((_g267056_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd265767265804%_ '0))))
                (begin
                  (let ((_g267057_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267056_)
                               (##values-length _g267056_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267057_ 2)))
                        (error "Context expects 2 values" _g267057_)))
                  (let ((_%target265769265810%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267056_ 0)))
                        (_%tl265771265813%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267056_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265771265813%_))
                        (letrec ((_%loop265772265816%_
                                  (lambda (_%hd265770265820%_
                                           _%clause265776265823%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd265770265820%_))
                                        (let ((_%e265773265825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd265770265820%_))))
                                          (let ((_%lp-hd265774265829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e265773265825%_)))
                                                (_%lp-tl265775265832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e265773265825%_))))
                                            (_%loop265772265816%_
                                             _%lp-tl265775265832%_
                                             (cons _%lp-hd265774265829%_
                                                   _%clause265776265823%_))))
                                        (let ((_%clause265777265835%_
                                               (reverse _%clause265776265823%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265768265807%_))
                                              ((lambda (_%g265761265838%_
                                                        _%g265762265840%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g265762265840%_
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
                                             (let ((__tmp267058
                                                    (lambda (_%g265859265862%_
                                                             _%g265860265865%_)
                                                      (cons _%g265859265862%_
                                                            _%g265860265865%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp267058
                                                '()
                                                _%g265761265838%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause265777265835%_
                                               _%hd265764265794%_)
                                              (_%g265759265783%_
                                               _%g265760265787%_)))))))
                          (_%loop265772265816%_ _%target265769265810%_ '()))
                        (_%g265759265783%_ _%g265760265787%_)))))
              (_%g265759265783%_ _%g265760265787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265759265783%_
                                               _%g265760265787%_))))
                                      (_%g265759265783%_ _%g265760265787%_)))))
                          (_%g265758265868%_
                           (list _%unchecked-proc265755%_
                                 _%unchecked-clauses265757%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g265210265221%_))))
                                        (_%g265208265872%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g264995265073%_
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
                                          _%g265109265190%_
                                          _%g265110265192%_))
                                       (let ((__tmp267059
                                              (lambda (_%g265875265879%_
                                                       _%g265876265882%_
                                                       _%g265877265884%_)
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
                                (cons _%g265876265882%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g265875265879%_ '())))))
              _%g265877265884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp267059
                                          '()
                                          _%g265109265190%_
                                          _%g265110265192%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig265120265186%_
                                    _%arity265121265188%_))))))
                   (_%loop265114265146%_ _%target265111265140%_ '() '()))
                 (_%g265107265133%_ _%g265108265137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265107265133%_
                                                _%g265108265137%_)))))
                                   (_%g265106265887%_ _%signatures265104%_))
                                 (_%g264992265016%_ _%g264993265020%_)))
                           _%case-signature265010265068%_
                           _%hd265000265037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265005265049%_
                                                   _%target265002265043%_
                                                   '()))
                                                (_%g264992265016%_
                                                 _%g264993265020%_)))))
                                      (_%g264992265016%_ _%g264993265020%_))))
                              (_%g264992265016%_ _%g264993265020%_))))
                      (_%g264992265016%_ _%g264993265020%_)))))
          (_%g264991265891%_ _%stx264989%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx265899%_)
        (let* ((_%__stx266879266880%_ _%$stx265899%_)
               (_%g265905265965%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266879266880%_)))))
          (let ((_%__kont266882266883%_
                 (lambda (_%g265907266187%_ _%g265908266189%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265908266189%_ '()))
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
                                                       (cons _%g265908266189%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265907266187%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266884266885%_
                 (lambda (_%g265922266112%_
                          _%g265923266114%_
                          _%g265924266115%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265924266115%_ '()))
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
                                                       (cons _%g265924266115%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265923266114%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265922266112%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266886266887%_
                 (lambda (_%g265941266026%_
                          _%g265942266028%_
                          _%g265943266029%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265943266029%_ '()))
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
                                                       (cons _%g265943266029%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265942266028%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265941266026%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266879266880%_))
                (let ((_%e265909266143%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266879266880%_))))
                  (let ((_%tl265911266150%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265909266143%_)))
                        (_%hd265910266147%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265909266143%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265911266150%_))
                        (let ((_%e265912266153%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265911266150%_))))
                          (let ((_%tl265914266160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265912266153%_)))
                                (_%hd265913266157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265912266153%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd265913266157%_))
                                (let ((_%e265915266163%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265913266157%_))))
                                  (if (equal? _%e265915266163%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265914266160%_))
                                          (let ((_%e265916266167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl265914266160%_))))
                                            (let ((_%tl265918266174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265916266167%_)))
                                                  (_%hd265917266171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265916266167%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265918266174%_))
                                                  (let ((_%e265919266177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265918266174%_))))
                                                    (let ((_%tl265921266184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265919266177%_)))
                                                          (_%hd265920266181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265919266177%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265921266184%_))
                                                          (_%__kont266882266883%_
                                                           _%hd265920266181%_
                                                           _%hd265917266171%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g265905265965%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265905265965%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g265905265965%_)))
                                      (if (equal? _%e265915266163%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265914266160%_))
                                              (let ((_%e265932266082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265914266160%_))))
                                                (let ((_%tl265934266089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265932266082%_)))
                                                      (_%hd265933266086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265932266082%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265934266089%_))
                                                      (let ((_%e265935266092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl265934266089%_))))
                (let ((_%tl265937266099%_
                       (let () (declare (not safe)) (##cdr _%e265935266092%_)))
                      (_%hd265936266096%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265935266092%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265937266099%_))
                      (let ((_%e265938266102%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265937266099%_))))
                        (let ((_%tl265940266109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265938266102%_)))
                              (_%hd265939266106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265938266102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265940266109%_))
                              (_%__kont266884266885%_
                               _%hd265939266106%_
                               _%hd265936266096%_
                               _%hd265933266086%_)
                              (let ()
                                (declare (not safe))
                                (_%g265905265965%_)))))
                      (let () (declare (not safe)) (_%g265905265965%_)))))
              (let () (declare (not safe)) (_%g265905265965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g265905265965%_)))
                                          (if (equal? _%e265915266163%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265914266160%_))
                                                  (let ((_%e265951265996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265914266160%_))))
                                                    (let ((_%tl265953266003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265951265996%_)))
                                                          (_%hd265952266000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265951265996%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265953266003%_))
                                                          (let ((_%e265954266006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265953266003%_))))
                    (let ((_%tl265956266013%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265954266006%_)))
                          (_%hd265955266010%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265954266006%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265956266013%_))
                          (let ((_%e265957266016%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265956266013%_))))
                            (let ((_%tl265959266023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265957266016%_)))
                                  (_%hd265958266020%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265957266016%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265959266023%_))
                                  (_%__kont266886266887%_
                                   _%hd265958266020%_
                                   _%hd265955266010%_
                                   _%hd265952266000%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265905265965%_)))))
                          (let () (declare (not safe)) (_%g265905265965%_)))))
                  (let () (declare (not safe)) (_%g265905265965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265905265965%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265905265965%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g265905265965%_)))))
                        (let () (declare (not safe)) (_%g265905265965%_)))))
                (let () (declare (not safe)) (_%g265905265965%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx266211%_)
        (let* ((_%g266215266235%_
                (lambda (_%g266216266231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266216266231%_))))
               (_%g266214266304%_
                (lambda (_%g266216266239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266216266239%_))
                      (let ((_%e266218266242%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266216266239%_))))
                        (let ((_%hd266219266246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266218266242%_)))
                              (_%tl266220266249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266218266242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266220266249%_))
                              (let ((_g267060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl266220266249%_
                                        '0))))
                                (begin
                                  (let ((_g267061_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267060_)
                                               (##values-length _g267060_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267061_ 2)))
                                        (error "Context expects 2 values"
                                               _g267061_)))
                                  (let ((_%target266221266252%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267060_ 0)))
                                        (_%tl266223266255%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267060_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266223266255%_))
                                        (letrec ((_%loop266224266258%_
                                                  (lambda (_%hd266222266262%_
                                                           _%decl266228266265%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266222266262%_))
                                                        (let ((_%e266225266267%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266222266262%_))))
                  (let ((_%lp-hd266226266271%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266225266267%_)))
                        (_%lp-tl266227266274%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266225266267%_))))
                    (_%loop266224266258%_
                     _%lp-tl266227266274%_
                     (cons _%lp-hd266226266271%_ _%decl266228266265%_))))
                (let ((_%decl266229266277%_ (reverse _%decl266228266265%_)))
                  ((lambda (_%g266217266280%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp267062
                                  (lambda (_%g266295266298%_ _%g266296266301%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g266295266298%_)
                                          _%g266296266301%_))))
                             (declare (not safe))
                             (foldr__0 __tmp267062 '() _%g266217266280%_))))
                   _%decl266229266277%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop266224266258%_
                                           _%target266221266252%_
                                           '()))
                                        (_%g266215266235%_
                                         _%g266216266239%_)))))
                              (_%g266215266235%_ _%g266216266239%_))))
                      (_%g266215266235%_ _%g266216266239%_)))))
          (_%g266214266304%_ _%$stx266211%_))))))

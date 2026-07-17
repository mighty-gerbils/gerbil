(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g276996_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277003_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277005_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277007_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277009_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277011_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277023_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277025_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277027_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277029_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277031_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx270454%_)
        (let* ((_%$%g270458270476%_
                (lambda (_%$%g270459270472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270459270472%_))))
               (_%$%g270457270531%_
                (lambda (_%$%g270459270480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270459270480%_))
                      (let ((_%$%e270462270483%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270459270480%_))))
                        (let ((_%$%hd270463270487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270462270483%_)))
                              (_%$%tl270464270490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270462270483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270464270490%_))
                              (let ((_%$%e270465270493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270464270490%_))))
                                (let ((_%$%hd270466270497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270465270493%_)))
                                      (_%$%tl270467270500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270465270493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270467270500%_))
                                      (let ((_%$%e270468270503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270467270500%_))))
                                        (let ((_%$%hd270469270507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270468270503%_)))
                                              (_%$%tl270470270510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270468270503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270470270510%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270466270497%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd270466270497%_ '()))
                      (cons _%$%hd270469270507%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270458270476%_
                                                   _%$%g270459270480%_))
                                              (_%$%g270458270476%_
                                               _%$%g270459270480%_))))
                                      (_%$%g270458270476%_
                                       _%$%g270459270480%_))))
                              (_%$%g270458270476%_ _%$%g270459270480%_))))
                      (_%$%g270458270476%_ _%$%g270459270480%_)))))
          (_%$%g270457270531%_ _%$stx270454%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx270535%_)
        (let* ((_%$%g270539270557%_
                (lambda (_%$%g270540270553%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270540270553%_))))
               (_%$%g270538270612%_
                (lambda (_%$%g270540270561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270540270561%_))
                      (let ((_%$%e270543270564%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270540270561%_))))
                        (let ((_%$%hd270544270568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270543270564%_)))
                              (_%$%tl270545270571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270543270564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270545270571%_))
                              (let ((_%$%e270546270574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270545270571%_))))
                                (let ((_%$%hd270547270578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270546270574%_)))
                                      (_%$%tl270548270581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270546270574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270548270581%_))
                                      (let ((_%$%e270549270584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270548270581%_))))
                                        (let ((_%$%hd270550270588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270549270584%_)))
                                              (_%$%tl270551270591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270549270584%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270551270591%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270547270578%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd270547270578%_ '()))
                      (cons _%$%hd270550270588%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270539270557%_
                                                   _%$%g270540270561%_))
                                              (_%$%g270539270557%_
                                               _%$%g270540270561%_))))
                                      (_%$%g270539270557%_
                                       _%$%g270540270561%_))))
                              (_%$%g270539270557%_ _%$%g270540270561%_))))
                      (_%$%g270539270557%_ _%$%g270540270561%_)))))
          (_%$%g270538270612%_ _%$stx270535%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx270616%_)
        (let* ((_%$%g270620270649%_
                (lambda (_%$%g270621270645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270621270645%_))))
               (_%$%g270619270745%_
                (lambda (_%$%g270621270653%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270621270653%_))
                      (let ((_%$%e270624270656%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270621270653%_))))
                        (let ((_%$%hd270625270660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270624270656%_)))
                              (_%$%tl270626270663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270624270656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270626270663%_))
                              (let ((_g276974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl270626270663%_
                                        '0))))
                                (begin
                                  (let ((_g276975_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g276974_)
                                               (##values-length _g276974_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g276975_ 2)))
                                        (error "Context expects 2 values"
                                               _g276975_)))
                                  (let ((_%$%target270627270666%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276974_ 0)))
                                        (_%$%tl270629270669%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276974_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270629270669%_))
                                        (letrec ((_%$%loop270630270672%_
                                                  (lambda (_%$%hd270628270676%_
                                                           _%$%type270634270679%_
                                                           _%$%symbol270635270680%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270628270676%_))
                                                        (let ((_%$%e270631270682%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270628270676%_))))
                  (let ((_%$%lp-hd270632270686%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270631270682%_)))
                        (_%$%lp-tl270633270689%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270631270682%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd270632270686%_))
                        (let ((_%$%e270638270692%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd270632270686%_))))
                          (let ((_%$%hd270639270696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270638270692%_)))
                                (_%$%tl270640270699%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270638270692%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270640270699%_))
                                (let ((_%$%e270641270702%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270640270699%_))))
                                  (let ((_%$%hd270642270706%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270641270702%_)))
                                        (_%$%tl270643270709%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270641270702%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270643270709%_))
                                        (_%$%loop270630270672%_
                                         _%$%lp-tl270633270689%_
                                         (cons _%$%hd270642270706%_
                                               _%$%type270634270679%_)
                                         (cons _%$%hd270639270696%_
                                               _%$%symbol270635270680%_))
                                        (_%$%g270620270649%_
                                         _%$%g270621270653%_))))
                                (_%$%g270620270649%_ _%$%g270621270653%_))))
                        (_%$%g270620270649%_ _%$%g270621270653%_))))
                (let ((_%$%type270636270712%_ (reverse _%$%type270634270679%_))
                      (_%$%symbol270637270714%_
                       (reverse _%$%symbol270635270680%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type270636270712%_
                             _%$%symbol270637270714%_))
                          (let ((__tmp276976
                                 (lambda (_%$%g270733270737%_
                                          _%$%g270734270740%_
                                          _%$%g270735270742%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g270734270740%_
                                                     (cons _%$%g270733270737%_
                                                           '())))
                                         _%$%g270735270742%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp276976
                             '()
                             _%$%type270636270712%_
                             _%$%symbol270637270714%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop270630270672%_
                                           _%$%target270627270666%_
                                           '()
                                           '()))
                                        (_%$%g270620270649%_
                                         _%$%g270621270653%_)))))
                              (_%$%g270620270649%_ _%$%g270621270653%_))))
                      (_%$%g270620270649%_ _%$%g270621270653%_)))))
          (_%$%g270619270745%_ _%$stx270616%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx270750%_)
        (let* ((_%__stx276285276286%_ _%$stx270750%_)
               (_%$%g270755270797%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276285276286%_)))))
          (let ((_%__kont276288276289%_
                 (lambda (_%$%g270757270925%_
                          _%$%g270758270927%_
                          _%$%g270759270928%_
                          _%$%g270760270929%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g270760270929%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g270759270928%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g270758270927%_
                                                       '()))
                                           (cons _%$%g270757270925%_ '())))))))
                (_%__kont276290276291%_
                 (lambda (_%$%g270776270844%_
                          _%$%g270777270846%_
                          _%$%g270778270847%_
                          _%$%g270779270848%_)
                   (cons _%$%g270779270848%_
                         (cons _%$%g270778270847%_
                               (cons _%$%g270777270846%_
                                     (cons _%$%g270776270844%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match276324276325%_
                   (lambda (_%$%e270761270875%_
                            _%$%hd270762270879%_
                            _%$%tl270763270882%_
                            _%$%e270764270885%_
                            _%$%hd270765270889%_
                            _%$%tl270766270892%_
                            _%$%e270767270895%_
                            _%$%hd270768270899%_
                            _%$%tl270769270902%_
                            _%$%e270770270905%_
                            _%$%hd270771270909%_
                            _%$%tl270772270912%_
                            _%$%e270773270915%_
                            _%$%hd270774270919%_
                            _%$%tl270775270922%_)
                     (let ((_%$%g270757270925%_ _%$%hd270774270919%_)
                           (_%$%g270758270927%_ _%$%hd270771270909%_)
                           (_%$%g270759270928%_ _%$%hd270768270899%_)
                           (_%$%g270760270929%_ _%$%hd270765270889%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270760270929%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270759270928%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270758270927%_)))
                           (_%__kont276288276289%_
                            _%$%g270757270925%_
                            _%$%g270758270927%_
                            _%$%g270759270928%_
                            _%$%g270760270929%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g270755270797%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276285276286%_))
                  (let ((_%$%e270761270875%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276285276286%_))))
                    (let ((_%$%tl270763270882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270761270875%_)))
                          (_%$%hd270762270879%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270761270875%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270763270882%_))
                          (let ((_%$%e270764270885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl270763270882%_))))
                            (let ((_%$%tl270766270892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270764270885%_)))
                                  (_%$%hd270765270889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270764270885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270766270892%_))
                                  (let ((_%$%e270767270895%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl270766270892%_))))
                                    (let ((_%$%tl270769270902%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270767270895%_)))
                                          (_%$%hd270768270899%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270767270895%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl270769270902%_))
                                          (let ((_%$%e270770270905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl270769270902%_))))
                                            (let ((_%$%tl270772270912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270770270905%_)))
                                                  (_%$%hd270771270909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270770270905%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270772270912%_))
                                                  (let ((_%$%e270773270915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl270772270912%_))))
                                                    (let ((_%$%tl270775270922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270773270915%_)))
                                                          (_%$%hd270774270919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270773270915%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl270775270922%_))
                                                          (_%__match276324276325%_
                                                           _%$%e270761270875%_
                                                           _%$%hd270762270879%_
                                                           _%$%tl270763270882%_
                                                           _%$%e270764270885%_
                                                           _%$%hd270765270889%_
                                                           _%$%tl270766270892%_
                                                           _%$%e270767270895%_
                                                           _%$%hd270768270899%_
                                                           _%$%tl270769270902%_
                                                           _%$%e270770270905%_
                                                           _%$%hd270771270909%_
                                                           _%$%tl270772270912%_
                                                           _%$%e270773270915%_
                                                           _%$%hd270774270919%_
                                                           _%$%tl270775270922%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g270755270797%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270772270912%_))
                                                      (_%__kont276290276291%_
                                                       _%$%hd270771270909%_
                                                       _%$%hd270768270899%_
                                                       _%$%hd270765270889%_
                                                       _%$%hd270762270879%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270755270797%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g270755270797%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g270755270797%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270755270797%_)))))
                  (let () (declare (not safe)) (_%$%g270755270797%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx270954%_)
        (let* ((_%$%g270958270993%_
                (lambda (_%$%g270959270989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270959270989%_))))
               (_%$%g270957271106%_
                (lambda (_%$%g270959270997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270959270997%_))
                      (let ((_%$%e270963271000%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270959270997%_))))
                        (let ((_%$%hd270964271004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270963271000%_)))
                              (_%$%tl270965271007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270963271000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270965271007%_))
                              (let ((_g276977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl270965271007%_
                                        '0))))
                                (begin
                                  (let ((_g276978_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g276977_)
                                               (##values-length _g276977_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g276978_ 2)))
                                        (error "Context expects 2 values"
                                               _g276978_)))
                                  (let ((_%$%target270966271010%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276977_ 0)))
                                        (_%$%tl270968271013%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276977_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270968271013%_))
                                        (letrec ((_%$%loop270969271016%_
                                                  (lambda (_%$%hd270967271020%_
                                                           _%$%symbol270973271023%_
                                                           _%$%method270974271024%_
                                                           _%$%type-t270975271025%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270967271020%_))
                                                        (let ((_%$%e270970271027%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270967271020%_))))
                  (let ((_%$%lp-hd270971271031%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270970271027%_)))
                        (_%$%lp-tl270972271034%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270970271027%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd270971271031%_))
                        (let ((_%$%e270979271037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd270971271031%_))))
                          (let ((_%$%hd270980271041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270979271037%_)))
                                (_%$%tl270981271044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270979271037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270981271044%_))
                                (let ((_%$%e270982271047%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270981271044%_))))
                                  (let ((_%$%hd270983271051%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270982271047%_)))
                                        (_%$%tl270984271054%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270982271047%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl270984271054%_))
                                        (let ((_%$%e270985271057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl270984271054%_))))
                                          (let ((_%$%hd270986271061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e270985271057%_)))
                                                (_%$%tl270987271064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e270985271057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270987271064%_))
                                                (_%$%loop270969271016%_
                                                 _%$%lp-tl270972271034%_
                                                 (cons _%$%hd270986271061%_
                                                       _%$%symbol270973271023%_)
                                                 (cons _%$%hd270983271051%_
                                                       _%$%method270974271024%_)
                                                 (cons _%$%hd270980271041%_
                                                       _%$%type-t270975271025%_))
                                                (_%$%g270958270993%_
                                                 _%$%g270959270997%_))))
                                        (_%$%g270958270993%_
                                         _%$%g270959270997%_))))
                                (_%$%g270958270993%_ _%$%g270959270997%_))))
                        (_%$%g270958270993%_ _%$%g270959270997%_))))
                (let ((_%$%symbol270976271067%_
                       (reverse _%$%symbol270973271023%_))
                      (_%$%method270977271069%_
                       (reverse _%$%method270974271024%_))
                      (_%$%type-t270978271070%_
                       (reverse _%$%type-t270975271025%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol270976271067%_
                             _%$%method270977271069%_
                             _%$%type-t270978271070%_))
                          (let ((__tmp276979
                                 (lambda (_%$%g271091271096%_
                                          _%$%g271092271099%_
                                          _%$%g271093271101%_
                                          _%$%g271094271103%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g271093271101%_
                                                     (cons _%$%g271092271099%_
                                                           (cons _%$%g271091271096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g271094271103%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp276979
                             '()
                             _%$%symbol270976271067%_
                             _%$%method270977271069%_
                             _%$%type-t270978271070%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop270969271016%_
                                           _%$%target270966271010%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g270958270993%_
                                         _%$%g270959270997%_)))))
                              (_%$%g270958270993%_ _%$%g270959270997%_))))
                      (_%$%g270958270993%_ _%$%g270959270997%_)))))
          (_%$%g270957271106%_ _%$stx270954%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx271111%_)
        (let* ((_%$%g271115271148%_
                (lambda (_%$%g271116271144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271116271144%_))))
               (_%$%g271114271258%_
                (lambda (_%$%g271116271152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271116271152%_))
                      (let ((_%$%e271120271155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271116271152%_))))
                        (let ((_%$%hd271121271159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271120271155%_)))
                              (_%$%tl271122271162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271120271155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271122271162%_))
                              (let ((_%$%e271123271165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271122271162%_))))
                                (let ((_%$%hd271124271169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271123271165%_)))
                                      (_%$%tl271125271172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271123271165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl271125271172%_))
                                      (let ((_g276980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl271125271172%_
                                                '0))))
                                        (begin
                                          (let ((_g276981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g276980_)
                                                       (##values-length
                                                        _g276980_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g276981_ 2)))
                                                (error "Context expects 2 values"
                                                       _g276981_)))
                                          (let ((_%$%target271126271175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g276980_ 0)))
                                                (_%$%tl271128271178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g276980_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271128271178%_))
                                                (letrec ((_%$%loop271129271181%_
                                                          (lambda (_%$%hd271127271185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol271133271188%_
                           _%$%method271134271189%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd271127271185%_))
                        (let ((_%$%e271130271191%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd271127271185%_))))
                          (let ((_%$%lp-hd271131271195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271130271191%_)))
                                (_%$%lp-tl271132271198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271130271191%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd271131271195%_))
                                (let ((_%$%e271137271201%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd271131271195%_))))
                                  (let ((_%$%hd271138271205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271137271201%_)))
                                        (_%$%tl271139271208%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271137271201%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl271139271208%_))
                                        (let ((_%$%e271140271211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl271139271208%_))))
                                          (let ((_%$%hd271141271215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e271140271211%_)))
                                                (_%$%tl271142271218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e271140271211%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271142271218%_))
                                                (_%$%loop271129271181%_
                                                 _%$%lp-tl271132271198%_
                                                 (cons _%$%hd271141271215%_
                                                       _%$%symbol271133271188%_)
                                                 (cons _%$%hd271138271205%_
                                                       _%$%method271134271189%_))
                                                (_%$%g271115271148%_
                                                 _%$%g271116271152%_))))
                                        (_%$%g271115271148%_
                                         _%$%g271116271152%_))))
                                (_%$%g271115271148%_ _%$%g271116271152%_))))
                        (let ((_%$%symbol271135271221%_
                               (reverse _%$%symbol271133271188%_))
                              (_%$%method271136271223%_
                               (reverse _%$%method271134271189%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol271135271221%_
                                     _%$%method271136271223%_))
                                  (let ((__tmp276982
                                         (lambda (_%$%g271246271250%_
                                                  _%$%g271247271253%_
                                                  _%$%g271248271255%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd271124271169%_
                                                             (cons _%$%g271247271253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g271246271250%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g271248271255%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp276982
                                     '()
                                     _%$%symbol271135271221%_
                                     _%$%method271136271223%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop271129271181%_
                                                   _%$%target271126271175%_
                                                   '()
                                                   '()))
                                                (_%$%g271115271148%_
                                                 _%$%g271116271152%_)))))
                                      (_%$%g271115271148%_
                                       _%$%g271116271152%_))))
                              (_%$%g271115271148%_ _%$%g271116271152%_))))
                      (_%$%g271115271148%_ _%$%g271116271152%_)))))
          (_%$%g271114271258%_ _%$stx271111%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx271263%_)
        (let* ((_%$%g271267271281%_
                (lambda (_%$%g271268271277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271268271277%_))))
               (_%$%g271266271322%_
                (lambda (_%$%g271268271285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271268271285%_))
                      (let ((_%$%e271270271288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271268271285%_))))
                        (let ((_%$%hd271271271292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271270271288%_)))
                              (_%$%tl271272271295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271270271288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271272271295%_))
                              (let ((_%$%e271273271298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271272271295%_))))
                                (let ((_%$%hd271274271302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271273271298%_)))
                                      (_%$%tl271275271305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271273271298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271275271305%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd271274271302%_
                                                              '()))
                                                  '()))
                                      (_%$%g271267271281%_
                                       _%$%g271268271285%_))))
                              (_%$%g271267271281%_ _%$%g271268271285%_))))
                      (_%$%g271267271281%_ _%$%g271268271285%_)))))
          (_%$%g271266271322%_ _%$stx271263%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx271326%_)
        (let* ((_%$%g271330271384%_
                (lambda (_%$%g271331271380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271331271380%_))))
               (_%$%g271329271565%_
                (lambda (_%$%g271331271388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271331271388%_))
                      (let ((_%$%e271343271391%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271331271388%_))))
                        (let ((_%$%hd271344271395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271343271391%_)))
                              (_%$%tl271345271398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271343271391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271345271398%_))
                              (let ((_%$%e271346271401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271345271398%_))))
                                (let ((_%$%hd271347271405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271346271401%_)))
                                      (_%$%tl271348271408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271346271401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271348271408%_))
                                      (let ((_%$%e271349271411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271348271408%_))))
                                        (let ((_%$%hd271350271415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271349271411%_)))
                                              (_%$%tl271351271418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271349271411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271351271418%_))
                                              (let ((_%$%e271352271421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271351271418%_))))
                                                (let ((_%$%hd271353271425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271352271421%_)))
                                                      (_%$%tl271354271428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271352271421%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271354271428%_))
                                                      (let ((_%$%e271355271431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271354271428%_))))
                (let ((_%$%hd271356271435%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271355271431%_)))
                      (_%$%tl271357271438%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271355271431%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271357271438%_))
                      (let ((_%$%e271358271441%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271357271438%_))))
                        (let ((_%$%hd271359271445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271358271441%_)))
                              (_%$%tl271360271448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271358271441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271360271448%_))
                              (let ((_%$%e271361271451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271360271448%_))))
                                (let ((_%$%hd271362271455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271361271451%_)))
                                      (_%$%tl271363271458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271361271451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271363271458%_))
                                      (let ((_%$%e271364271461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271363271458%_))))
                                        (let ((_%$%hd271365271465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271364271461%_)))
                                              (_%$%tl271366271468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271364271461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271366271468%_))
                                              (let ((_%$%e271367271471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271366271468%_))))
                                                (let ((_%$%hd271368271475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271367271471%_)))
                                                      (_%$%tl271369271478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271367271471%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271369271478%_))
                                                      (let ((_%$%e271370271481%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271369271478%_))))
                (let ((_%$%hd271371271485%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271370271481%_)))
                      (_%$%tl271372271488%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271370271481%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271372271488%_))
                      (let ((_%$%e271373271491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271372271488%_))))
                        (let ((_%$%hd271374271495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271373271491%_)))
                              (_%$%tl271375271498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271373271491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271375271498%_))
                              (let ((_%$%e271376271501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271375271498%_))))
                                (let ((_%$%hd271377271505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271376271501%_)))
                                      (_%$%tl271378271508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271376271501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271378271508%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd271347271405%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd271350271415%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd271353271425%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd271356271435%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd271359271445%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd271362271455%_ '()))
                                        (cons _%$%hd271365271465%_
                                              (cons _%$%hd271368271475%_
                                                    (cons _%$%hd271371271485%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd271374271495%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd271377271505%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g271330271384%_
                                       _%$%g271331271388%_))))
                              (_%$%g271330271384%_ _%$%g271331271388%_))))
                      (_%$%g271330271384%_ _%$%g271331271388%_))))
              (_%$%g271330271384%_ _%$%g271331271388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271330271384%_
                                               _%$%g271331271388%_))))
                                      (_%$%g271330271384%_
                                       _%$%g271331271388%_))))
                              (_%$%g271330271384%_ _%$%g271331271388%_))))
                      (_%$%g271330271384%_ _%$%g271331271388%_))))
              (_%$%g271330271384%_ _%$%g271331271388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271330271384%_
                                               _%$%g271331271388%_))))
                                      (_%$%g271330271384%_
                                       _%$%g271331271388%_))))
                              (_%$%g271330271384%_ _%$%g271331271388%_))))
                      (_%$%g271330271384%_ _%$%g271331271388%_)))))
          (_%$%g271329271565%_ _%$stx271326%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx271569%_)
        (let* ((_%$%g271573271587%_
                (lambda (_%$%g271574271583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271574271583%_))))
               (_%$%g271572271628%_
                (lambda (_%$%g271574271591%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271574271591%_))
                      (let ((_%$%e271576271594%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271574271591%_))))
                        (let ((_%$%hd271577271598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271576271594%_)))
                              (_%$%tl271578271601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271576271594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271578271601%_))
                              (let ((_%$%e271579271604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271578271601%_))))
                                (let ((_%$%hd271580271608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271579271604%_)))
                                      (_%$%tl271581271611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271579271604%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271581271611%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd271580271608%_
                                                              '()))
                                                  '()))
                                      (_%$%g271573271587%_
                                       _%$%g271574271591%_))))
                              (_%$%g271573271587%_ _%$%g271574271591%_))))
                      (_%$%g271573271587%_ _%$%g271574271591%_)))))
          (_%$%g271572271628%_ _%$stx271569%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx271632%_)
        (let* ((_%$%g271636271650%_
                (lambda (_%$%g271637271646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271637271646%_))))
               (_%$%g271635271691%_
                (lambda (_%$%g271637271654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271637271654%_))
                      (let ((_%$%e271639271657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271637271654%_))))
                        (let ((_%$%hd271640271661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271639271657%_)))
                              (_%$%tl271641271664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271639271657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271641271664%_))
                              (let ((_%$%e271642271667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271641271664%_))))
                                (let ((_%$%hd271643271671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271642271667%_)))
                                      (_%$%tl271644271674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271642271667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271644271674%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd271643271671%_
                                                              '()))
                                                  '()))
                                      (_%$%g271636271650%_
                                       _%$%g271637271654%_))))
                              (_%$%g271636271650%_ _%$%g271637271654%_))))
                      (_%$%g271636271650%_ _%$%g271637271654%_)))))
          (_%$%g271635271691%_ _%$stx271632%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx271695%_)
        (let* ((_%$%g271699271721%_
                (lambda (_%$%g271700271717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271700271717%_))))
               (_%$%g271698271790%_
                (lambda (_%$%g271700271725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271700271725%_))
                      (let ((_%$%e271704271728%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271700271725%_))))
                        (let ((_%$%hd271705271732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271704271728%_)))
                              (_%$%tl271706271735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271704271728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271706271735%_))
                              (let ((_%$%e271707271738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271706271735%_))))
                                (let ((_%$%hd271708271742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271707271738%_)))
                                      (_%$%tl271709271745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271707271738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271709271745%_))
                                      (let ((_%$%e271710271748%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271709271745%_))))
                                        (let ((_%$%hd271711271752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271710271748%_)))
                                              (_%$%tl271712271755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271710271748%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271712271755%_))
                                              (let ((_%$%e271713271758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271712271755%_))))
                                                (let ((_%$%hd271714271762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271713271758%_)))
                                                      (_%$%tl271715271765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271713271758%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl271715271765%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd271708271742%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd271711271752%_ '()))
                                (cons _%$%hd271714271762%_ '()))))
              (_%$%g271699271721%_ _%$%g271700271725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271699271721%_
                                               _%$%g271700271725%_))))
                                      (_%$%g271699271721%_
                                       _%$%g271700271725%_))))
                              (_%$%g271699271721%_ _%$%g271700271725%_))))
                      (_%$%g271699271721%_ _%$%g271700271725%_)))))
          (_%$%g271698271790%_ _%$stx271695%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx271794%_)
        (let* ((_%$%g271798271820%_
                (lambda (_%$%g271799271816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271799271816%_))))
               (_%$%g271797271889%_
                (lambda (_%$%g271799271824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271799271824%_))
                      (let ((_%$%e271803271827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271799271824%_))))
                        (let ((_%$%hd271804271831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271803271827%_)))
                              (_%$%tl271805271834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271803271827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271805271834%_))
                              (let ((_%$%e271806271837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271805271834%_))))
                                (let ((_%$%hd271807271841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271806271837%_)))
                                      (_%$%tl271808271844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271806271837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271808271844%_))
                                      (let ((_%$%e271809271847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271808271844%_))))
                                        (let ((_%$%hd271810271851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271809271847%_)))
                                              (_%$%tl271811271854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271809271847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271811271854%_))
                                              (let ((_%$%e271812271857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271811271854%_))))
                                                (let ((_%$%hd271813271861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271812271857%_)))
                                                      (_%$%tl271814271864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271812271857%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl271814271864%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd271807271841%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd271810271851%_ '()))
                                (cons _%$%hd271813271861%_ '()))))
              (_%$%g271798271820%_ _%$%g271799271824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271798271820%_
                                               _%$%g271799271824%_))))
                                      (_%$%g271798271820%_
                                       _%$%g271799271824%_))))
                              (_%$%g271798271820%_ _%$%g271799271824%_))))
                      (_%$%g271798271820%_ _%$%g271799271824%_)))))
          (_%$%g271797271889%_ _%$stx271794%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx271893%_)
        (let* ((_%$%g271897271911%_
                (lambda (_%$%g271898271907%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271898271907%_))))
               (_%$%g271896271952%_
                (lambda (_%$%g271898271915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271898271915%_))
                      (let ((_%$%e271900271918%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271898271915%_))))
                        (let ((_%$%hd271901271922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271900271918%_)))
                              (_%$%tl271902271925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271900271918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271902271925%_))
                              (let ((_%$%e271903271928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271902271925%_))))
                                (let ((_%$%hd271904271932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271903271928%_)))
                                      (_%$%tl271905271935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271903271928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271905271935%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd271904271932%_
                                                              '()))
                                                  '()))
                                      (_%$%g271897271911%_
                                       _%$%g271898271915%_))))
                              (_%$%g271897271911%_ _%$%g271898271915%_))))
                      (_%$%g271897271911%_ _%$%g271898271915%_)))))
          (_%$%g271896271952%_ _%$stx271893%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx271956%_)
        (let* ((_%$%g271960271978%_
                (lambda (_%$%g271961271974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271961271974%_))))
               (_%$%g271959272033%_
                (lambda (_%$%g271961271982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271961271982%_))
                      (let ((_%$%e271964271985%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271961271982%_))))
                        (let ((_%$%hd271965271989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271964271985%_)))
                              (_%$%tl271966271992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271964271985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271966271992%_))
                              (let ((_%$%e271967271995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271966271992%_))))
                                (let ((_%$%hd271968271999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271967271995%_)))
                                      (_%$%tl271969272002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271967271995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271969272002%_))
                                      (let ((_%$%e271970272005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271969272002%_))))
                                        (let ((_%$%hd271971272009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271970272005%_)))
                                              (_%$%tl271972272012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271970272005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl271972272012%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd271968271999%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd271971272009%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271960271978%_
                                               _%$%g271961271982%_))))
                                      (_%$%g271960271978%_
                                       _%$%g271961271982%_))))
                              (_%$%g271960271978%_ _%$%g271961271982%_))))
                      (_%$%g271960271978%_ _%$%g271961271982%_)))))
          (_%$%g271959272033%_ _%$stx271956%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx272037%_)
        (let* ((_%__stx276353276354%_ _%$stx272037%_)
               (_%$%g272044272105%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276353276354%_)))))
          (let ((_%__kont276356276357%_
                 (lambda (_%$%g272046272343%_ _%$%g272047272345%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g272047272345%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g272046272343%_ '()))
                                     '())))))
                (_%__kont276358276359%_
                 (lambda (_%$%g272057272282%_
                          _%$%g272058272284%_
                          _%$%g272059272285%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g272059272285%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g272058272284%_ '()))
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
                                 (cons _%$%g272057272282%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont276360276361%_
                 (lambda (_%$%g272076272206%_ _%$%g272077272208%_)
                   (cons _%$%g272077272208%_
                         (cons _%$%g272076272206%_ (cons '#f '())))))
                (_%__kont276362276363%_
                 (lambda (_%$%g272084272156%_
                          _%$%g272085272158%_
                          _%$%g272086272159%_)
                   (cons _%$%g272086272159%_
                         (cons _%$%g272085272158%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g272084272156%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276353276354%_))
                (let ((_%$%e272048272313%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276353276354%_))))
                  (let ((_%$%tl272050272320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272048272313%_)))
                        (_%$%hd272049272317%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272048272313%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272050272320%_))
                        (let ((_%$%e272051272323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl272050272320%_))))
                          (let ((_%$%tl272053272330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272051272323%_)))
                                (_%$%hd272052272327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272051272323%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl272053272330%_))
                                (let ((_%$%e272054272333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl272053272330%_))))
                                  (let ((_%$%tl272056272340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272054272333%_)))
                                        (_%$%hd272055272337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272054272333%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272056272340%_))
                                        (_%__kont276356276357%_
                                         _%$%hd272055272337%_
                                         _%$%hd272052272327%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272056272340%_))
                                            (let ((_%$%e272069272258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl272056272340%_))))
                                              (let ((_%$%tl272071272265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272069272258%_)))
                                                    (_%$%hd272070272262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272069272258%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd272070272262%_))
                                                    (let ((_%$%e272072272268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd272070272262%_))))
                                                      (if (equal? _%$%e272072272268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl272071272265%_))
                      (let ((_%$%e272073272272%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl272071272265%_))))
                        (let ((_%$%tl272075272279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272073272272%_)))
                              (_%$%hd272074272276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272073272272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl272075272279%_))
                              (_%__kont276358276359%_
                               _%$%hd272074272276%_
                               _%$%hd272055272337%_
                               _%$%hd272052272327%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd272055272337%_))
                                  (let ((_%$%e272096272142%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd272055272337%_))))
                                    (declare (not safe))
                                    (_%$%g272044272105%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g272044272105%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd272055272337%_))
                          (let ((_%$%e272096272142%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd272055272337%_))))
                            (if (equal? _%$%e272096272142%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl272071272265%_))
                                    (_%__kont276362276363%_
                                     _%$%hd272070272262%_
                                     _%$%hd272052272327%_
                                     _%$%hd272049272317%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272044272105%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272044272105%_))))
                          (let () (declare (not safe)) (_%$%g272044272105%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd272055272337%_))
                      (let ((_%$%e272096272142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd272055272337%_))))
                        (if (equal? _%$%e272096272142%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272071272265%_))
                                (_%__kont276362276363%_
                                 _%$%hd272070272262%_
                                 _%$%hd272052272327%_
                                 _%$%hd272049272317%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272044272105%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g272044272105%_))))
                      (let () (declare (not safe)) (_%$%g272044272105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd272055272337%_))
                                                        (let ((_%$%e272096272142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd272055272337%_))))
                  (if (equal? _%$%e272096272142%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl272071272265%_))
                          (_%__kont276362276363%_
                           _%$%hd272070272262%_
                           _%$%hd272052272327%_
                           _%$%hd272049272317%_)
                          (let () (declare (not safe)) (_%$%g272044272105%_)))
                      (let () (declare (not safe)) (_%$%g272044272105%_))))
                (let () (declare (not safe)) (_%$%g272044272105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd272055272337%_))
                                                (let ((_%$%e272096272142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd272055272337%_))))
                                                  (declare (not safe))
                                                  (_%$%g272044272105%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272044272105%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl272053272330%_))
                                    (_%__kont276360276361%_
                                     _%$%hd272052272327%_
                                     _%$%hd272049272317%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272044272105%_))))))
                        (let () (declare (not safe)) (_%$%g272044272105%_)))))
                (let () (declare (not safe)) (_%$%g272044272105%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx272364%_)
        (let* ((_%$%g272368272397%_
                (lambda (_%$%g272369272393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272369272393%_))))
               (_%$%g272367272502%_
                (lambda (_%$%g272369272401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272369272401%_))
                      (let ((_%$%e272371272404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272369272401%_))))
                        (let ((_%$%hd272372272408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272371272404%_)))
                              (_%$%tl272373272411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272371272404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl272373272411%_))
                              (let ((_g276983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl272373272411%_
                                        '0))))
                                (begin
                                  (let ((_g276984_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g276983_)
                                               (##values-length _g276983_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g276984_ 2)))
                                        (error "Context expects 2 values"
                                               _g276984_)))
                                  (let ((_%$%target272374272414%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276983_ 0)))
                                        (_%$%tl272376272417%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276983_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272376272417%_))
                                        (letrec ((_%$%loop272377272420%_
                                                  (lambda (_%$%hd272375272424%_
                                                           _%$%clause272381272427%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd272375272424%_))
                                                        (let ((_%$%e272378272429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd272375272424%_))))
                  (let ((_%$%lp-hd272379272433%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272378272429%_)))
                        (_%$%lp-tl272380272436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272378272429%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd272379272433%_))
                        (let ((_g276985_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd272379272433%_
                                  '0))))
                          (begin
                            (let ((_g276986_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g276985_)
                                         (##values-length _g276985_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g276986_ 2)))
                                  (error "Context expects 2 values"
                                         _g276986_)))
                            (let ((_%$%target272383272439%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g276985_ 0)))
                                  (_%$%tl272385272442%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g276985_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl272385272442%_))
                                  (letrec ((_%$%loop272386272445%_
                                            (lambda (_%$%hd272384272449%_
                                                     _%$%clause272390272452%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd272384272449%_))
                                                  (let ((_%$%e272387272454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd272384272449%_))))
                                                    (let ((_%$%lp-hd272388272458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272387272454%_)))
                                                          (_%$%lp-tl272389272461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272387272454%_))))
                                                      (_%$%loop272386272445%_
                                                       _%$%lp-tl272389272461%_
                                                       (cons _%$%lp-hd272388272458%_
                                                             _%$%clause272390272452%_))))
                                                  (let ((_%$%clause272391272464%_
                                                         (reverse _%$%clause272390272452%_)))
                                                    (_%$%loop272377272420%_
                                                     _%$%lp-tl272380272436%_
                                                     (cons _%$%clause272391272464%_
                                                           _%$%clause272381272427%_)))))))
                                    (_%$%loop272386272445%_
                                     _%$%target272383272439%_
                                     '()))
                                  (_%$%g272368272397%_ _%$%g272369272401%_)))))
                        (_%$%g272368272397%_ _%$%g272369272401%_))))
                (let ((_%$%clause272382272467%_
                       (reverse _%$%clause272381272427%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp276987
                                           (lambda (_%$%g272485272490%_
                                                    _%$%g272486272493%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp276988
                                                                (lambda (_%$%g272487272496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g272488272499%_)
                          (cons _%$%g272487272496%_ _%$%g272488272499%_))))
                   (declare (not safe))
                   (foldr__0 __tmp276988 '() _%$%g272485272490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g272486272493%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp276987
                                       '()
                                       _%$%clause272382272467%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop272377272420%_
                                           _%$%target272374272414%_
                                           '()))
                                        (_%$%g272368272397%_
                                         _%$%g272369272401%_)))))
                              (_%$%g272368272397%_ _%$%g272369272401%_))))
                      (_%$%g272368272397%_ _%$%g272369272401%_)))))
          (_%$%g272367272502%_ _%$stx272364%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx272508%_)
        (let* ((_%$%g272512272530%_
                (lambda (_%$%g272513272526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272513272526%_))))
               (_%$%g272511272585%_
                (lambda (_%$%g272513272534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272513272534%_))
                      (let ((_%$%e272516272537%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272513272534%_))))
                        (let ((_%$%hd272517272541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272516272537%_)))
                              (_%$%tl272518272544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272516272537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272518272544%_))
                              (let ((_%$%e272519272547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272518272544%_))))
                                (let ((_%$%hd272520272551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272519272547%_)))
                                      (_%$%tl272521272554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272519272547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272521272554%_))
                                      (let ((_%$%e272522272557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272521272554%_))))
                                        (let ((_%$%hd272523272561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272522272557%_)))
                                              (_%$%tl272524272564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272522272557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272524272564%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272520272551%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd272523272561%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272512272530%_
                                               _%$%g272513272534%_))))
                                      (_%$%g272512272530%_
                                       _%$%g272513272534%_))))
                              (_%$%g272512272530%_ _%$%g272513272534%_))))
                      (_%$%g272512272530%_ _%$%g272513272534%_)))))
          (_%$%g272511272585%_ _%$stx272508%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx272589%_)
        (let* ((_%$%g272593272611%_
                (lambda (_%$%g272594272607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272594272607%_))))
               (_%$%g272592272666%_
                (lambda (_%$%g272594272615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272594272615%_))
                      (let ((_%$%e272597272618%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272594272615%_))))
                        (let ((_%$%hd272598272622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272597272618%_)))
                              (_%$%tl272599272625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272597272618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272599272625%_))
                              (let ((_%$%e272600272628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272599272625%_))))
                                (let ((_%$%hd272601272632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272600272628%_)))
                                      (_%$%tl272602272635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272600272628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272602272635%_))
                                      (let ((_%$%e272603272638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272602272635%_))))
                                        (let ((_%$%hd272604272642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272603272638%_)))
                                              (_%$%tl272605272645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272603272638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272605272645%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272601272632%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd272604272642%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272593272611%_
                                               _%$%g272594272615%_))))
                                      (_%$%g272593272611%_
                                       _%$%g272594272615%_))))
                              (_%$%g272593272611%_ _%$%g272594272615%_))))
                      (_%$%g272593272611%_ _%$%g272594272615%_)))))
          (_%$%g272592272666%_ _%$stx272589%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx272670%_)
        (let* ((_%$%g272674272703%_
                (lambda (_%$%g272675272699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272675272699%_))))
               (_%$%g272673272799%_
                (lambda (_%$%g272675272707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272675272707%_))
                      (let ((_%$%e272678272710%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272675272707%_))))
                        (let ((_%$%hd272679272714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272678272710%_)))
                              (_%$%tl272680272717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272678272710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl272680272717%_))
                              (let ((_g276989_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl272680272717%_
                                        '0))))
                                (begin
                                  (let ((_g276990_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g276989_)
                                               (##values-length _g276989_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g276990_ 2)))
                                        (error "Context expects 2 values"
                                               _g276990_)))
                                  (let ((_%$%target272681272720%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276989_ 0)))
                                        (_%$%tl272683272723%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g276989_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272683272723%_))
                                        (letrec ((_%$%loop272684272726%_
                                                  (lambda (_%$%hd272682272730%_
                                                           _%$%rule272688272733%_
                                                           _%$%proc272689272734%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd272682272730%_))
                                                        (let ((_%$%e272685272736%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd272682272730%_))))
                  (let ((_%$%lp-hd272686272740%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272685272736%_)))
                        (_%$%lp-tl272687272743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272685272736%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd272686272740%_))
                        (let ((_%$%e272692272746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd272686272740%_))))
                          (let ((_%$%hd272693272750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272692272746%_)))
                                (_%$%tl272694272753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272692272746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl272694272753%_))
                                (let ((_%$%e272695272756%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl272694272753%_))))
                                  (let ((_%$%hd272696272760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272695272756%_)))
                                        (_%$%tl272697272763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272695272756%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272697272763%_))
                                        (_%$%loop272684272726%_
                                         _%$%lp-tl272687272743%_
                                         (cons _%$%hd272696272760%_
                                               _%$%rule272688272733%_)
                                         (cons _%$%hd272693272750%_
                                               _%$%proc272689272734%_))
                                        (_%$%g272674272703%_
                                         _%$%g272675272707%_))))
                                (_%$%g272674272703%_ _%$%g272675272707%_))))
                        (_%$%g272674272703%_ _%$%g272675272707%_))))
                (let ((_%$%rule272690272766%_ (reverse _%$%rule272688272733%_))
                      (_%$%proc272691272768%_
                       (reverse _%$%proc272689272734%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule272690272766%_
                             _%$%proc272691272768%_))
                          (let ((__tmp276991
                                 (lambda (_%$%g272787272791%_
                                          _%$%g272788272794%_
                                          _%$%g272789272796%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g272788272794%_
                                                     (cons _%$%g272787272791%_
                                                           '())))
                                         _%$%g272789272796%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp276991
                             '()
                             _%$%rule272690272766%_
                             _%$%proc272691272768%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop272684272726%_
                                           _%$%target272681272720%_
                                           '()
                                           '()))
                                        (_%$%g272674272703%_
                                         _%$%g272675272707%_)))))
                              (_%$%g272674272703%_ _%$%g272675272707%_))))
                      (_%$%g272674272703%_ _%$%g272675272707%_)))))
          (_%$%g272673272799%_ _%$stx272670%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx272804%_)
        (let* ((_%$%g272808272826%_
                (lambda (_%$%g272809272822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272809272822%_))))
               (_%$%g272807272881%_
                (lambda (_%$%g272809272830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272809272830%_))
                      (let ((_%$%e272812272833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272809272830%_))))
                        (let ((_%$%hd272813272837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272812272833%_)))
                              (_%$%tl272814272840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272812272833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272814272840%_))
                              (let ((_%$%e272815272843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272814272840%_))))
                                (let ((_%$%hd272816272847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272815272843%_)))
                                      (_%$%tl272817272850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272815272843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272817272850%_))
                                      (let ((_%$%e272818272853%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272817272850%_))))
                                        (let ((_%$%hd272819272857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272818272853%_)))
                                              (_%$%tl272820272860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272818272853%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272820272860%_))
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
                                                (cons _%$%hd272816272847%_
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
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd272819272857%_ '())))
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
                                (cons _%$%hd272816272847%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272808272826%_
                                               _%$%g272809272830%_))))
                                      (_%$%g272808272826%_
                                       _%$%g272809272830%_))))
                              (_%$%g272808272826%_ _%$%g272809272830%_))))
                      (_%$%g272808272826%_ _%$%g272809272830%_)))))
          (_%$%g272807272881%_ _%$stx272804%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx272885%_)
        (let* ((_%__stx276471276472%_ _%$stx272885%_)
               (_%$%g272890272915%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276471276472%_)))))
          (let ((_%__kont276474276475%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont276476276477%_
                 (lambda (_%$%g272895272962%_
                          _%$%g272896272964%_
                          _%$%g272897272965%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g272897272965%_
                                           (cons _%$%g272896272964%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g272895272962%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276471276472%_))
                (let ((_%$%e272892272991%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276471276472%_))))
                  (let ((_%$%tl272894272998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272892272991%_)))
                        (_%$%hd272893272995%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272892272991%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl272894272998%_))
                        (_%__kont276474276475%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl272894272998%_))
                            (let ((_%$%e272901272932%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl272894272998%_))))
                              (let ((_%$%tl272903272939%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e272901272932%_)))
                                    (_%$%hd272902272936%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e272901272932%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd272902272936%_))
                                    (let ((_%$%e272904272942%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd272902272936%_))))
                                      (let ((_%$%tl272906272949%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272904272942%_)))
                                            (_%$%hd272905272946%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272904272942%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272906272949%_))
                                            (let ((_%$%e272907272952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl272906272949%_))))
                                              (let ((_%$%tl272909272959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272907272952%_)))
                                                    (_%$%hd272908272956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272907272952%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272909272959%_))
                                                    (_%__kont276476276477%_
                                                     _%$%tl272903272939%_
                                                     _%$%hd272908272956%_
                                                     _%$%hd272905272946%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272890272915%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272890272915%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272890272915%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g272890272915%_))))))
                (let () (declare (not safe)) (_%$%g272890272915%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx273009%_)
        (let* ((_%__stx276515276516%_ _%$stx273009%_)
               (_%$%g273014273045%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276515276516%_)))))
          (let ((_%__kont276518276519%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont276520276521%_
                 (lambda (_%$%g273019273110%_
                          _%$%g273020273112%_
                          _%$%g273021273113%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g273021273113%_
                                           (let ((__tmp276992
                                                  (lambda (_%$%g273133273136%_
                                                           _%$%g273134273139%_)
                                                    (cons _%$%g273133273136%_
                                                          _%$%g273134273139%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp276992
                                              '()
                                              _%$%g273020273112%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g273019273110%_)
                                     '()))))))
            (let ((_%__match276558276559%_
                   (lambda (_%$%e273022273052%_
                            _%$%hd273023273056%_
                            _%$%tl273024273059%_
                            _%$%e273025273062%_
                            _%$%hd273026273066%_
                            _%$%tl273027273069%_
                            _%$%e273028273072%_
                            _%$%hd273029273076%_
                            _%$%tl273030273079%_
                            _%__splice276522276523%_
                            _%$%target273031273082%_
                            _%$%tl273033273085%_)
                     (letrec ((_%$%loop273034273088%_
                               (lambda (_%$%hd273032273092%_
                                        _%$%sig273038273095%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd273032273092%_))
                                     (let ((_%$%e273035273097%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd273032273092%_))))
                                       (let ((_%$%lp-tl273037273104%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e273035273097%_)))
                                             (_%$%lp-hd273036273101%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e273035273097%_))))
                                         (_%$%loop273034273088%_
                                          _%$%lp-tl273037273104%_
                                          (cons _%$%lp-hd273036273101%_
                                                _%$%sig273038273095%_))))
                                     (let ((_%$%sig273039273107%_
                                            (reverse _%$%sig273038273095%_)))
                                       (_%__kont276520276521%_
                                        _%$%tl273027273069%_
                                        _%$%sig273039273107%_
                                        _%$%hd273029273076%_))))))
                       (_%$%loop273034273088%_
                        _%$%target273031273082%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276515276516%_))
                  (let ((_%$%e273016273149%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276515276516%_))))
                    (let ((_%$%tl273018273156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273016273149%_)))
                          (_%$%hd273017273153%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273016273149%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273018273156%_))
                          (_%__kont276518276519%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273018273156%_))
                              (let ((_%$%e273025273062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl273018273156%_))))
                                (let ((_%$%tl273027273069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273025273062%_)))
                                      (_%$%hd273026273066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273025273062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273026273066%_))
                                      (let ((_%$%e273028273072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273026273066%_))))
                                        (let ((_%$%tl273030273079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273028273072%_)))
                                              (_%$%hd273029273076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273028273072%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl273030273079%_))
                                              (let ((_%__splice276522276523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl273030273079%_
                                                        '0))))
                                                (let ((_%$%tl273033273085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276522276523%_
                                                          '1)))
                                                      (_%$%target273031273082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276522276523%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273033273085%_))
                                                      (_%__match276558276559%_
                                                       _%$%e273016273149%_
                                                       _%$%hd273017273153%_
                                                       _%$%tl273018273156%_
                                                       _%$%e273025273062%_
                                                       _%$%hd273026273066%_
                                                       _%$%tl273027273069%_
                                                       _%$%e273028273072%_
                                                       _%$%hd273029273076%_
                                                       _%$%tl273030273079%_
                                                       _%__splice276522276523%_
                                                       _%$%target273031273082%_
                                                       _%$%tl273033273085%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g273014273045%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273014273045%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273014273045%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g273014273045%_))))))
                  (let () (declare (not safe)) (_%$%g273014273045%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx273168%_)
        (let* ((_%__stx276561276562%_ _%$stx273168%_)
               (_%$%g273173273220%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276561276562%_)))))
          (let ((_%__kont276564276565%_
                 (lambda (_%$%g273175273378%_ _%$%g273176273380%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g273176273380%_
                               (let ((__tmp276993
                                      (lambda (_%$%g273400273403%_
                                               _%$%g273401273406%_)
                                        (cons _%$%g273400273403%_
                                              _%$%g273401273406%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp276993
                                  '()
                                  _%$%g273175273378%_))))))
                (_%__kont276568276569%_
                 (lambda (_%$%g273198273275%_ _%$%g273199273277%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g273199273277%_
                               (let ((__tmp276994
                                      (lambda (_%$%g273294273297%_
                                               _%$%g273295273300%_)
                                        (cons _%$%g273294273297%_
                                              _%$%g273295273300%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp276994
                                  '()
                                  _%$%g273198273275%_)))))))
            (let* ((_%__match276628276629%_
                    (lambda (_%$%e273200273227%_
                             _%$%hd273201273231%_
                             _%$%tl273202273234%_
                             _%$%e273203273237%_
                             _%$%hd273204273241%_
                             _%$%tl273205273244%_
                             _%__splice276570276571%_
                             _%$%target273206273247%_
                             _%$%tl273208273250%_)
                      (letrec ((_%$%loop273209273253%_
                                (lambda (_%$%hd273207273257%_
                                         _%$%sig273213273260%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273207273257%_))
                                      (let ((_%$%e273210273262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273207273257%_))))
                                        (let ((_%$%lp-tl273212273269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273210273262%_)))
                                              (_%$%lp-hd273211273266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273210273262%_))))
                                          (_%$%loop273209273253%_
                                           _%$%lp-tl273212273269%_
                                           (cons _%$%lp-hd273211273266%_
                                                 _%$%sig273213273260%_))))
                                      (let ((_%$%sig273214273272%_
                                             (reverse _%$%sig273213273260%_)))
                                        (_%__kont276568276569%_
                                         _%$%sig273214273272%_
                                         _%$%hd273204273241%_))))))
                        (_%$%loop273209273253%_
                         _%$%target273206273247%_
                         '()))))
                   (_%__match276620276621%_
                    (lambda (_%$%e273200273227%_
                             _%$%hd273201273231%_
                             _%$%tl273202273234%_
                             _%$%e273203273237%_
                             _%$%hd273204273241%_
                             _%$%tl273205273244%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl273205273244%_))
                          (let ((_%__splice276570276571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl273205273244%_
                                    '0))))
                            (let ((_%$%tl273208273250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276570276571%_
                                      '1)))
                                  (_%$%target273206273247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276570276571%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273208273250%_))
                                  (_%__match276628276629%_
                                   _%$%e273200273227%_
                                   _%$%hd273201273231%_
                                   _%$%tl273202273234%_
                                   _%$%e273203273237%_
                                   _%$%hd273204273241%_
                                   _%$%tl273205273244%_
                                   _%__splice276570276571%_
                                   _%$%target273206273247%_
                                   _%$%tl273208273250%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g273173273220%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273173273220%_)))))
                   (_%__match276608276609%_
                    (lambda (_%$%e273177273310%_
                             _%$%hd273178273314%_
                             _%$%tl273179273317%_
                             _%$%e273180273320%_
                             _%$%hd273181273324%_
                             _%$%tl273182273327%_
                             _%$%e273183273330%_
                             _%$%hd273184273334%_
                             _%$%tl273185273337%_
                             _%$%e273186273340%_
                             _%$%hd273187273344%_
                             _%$%tl273188273347%_
                             _%__splice276566276567%_
                             _%$%target273189273350%_
                             _%$%tl273191273353%_)
                      (letrec ((_%$%loop273192273356%_
                                (lambda (_%$%hd273190273360%_
                                         _%$%sig273196273363%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273190273360%_))
                                      (let ((_%$%e273193273365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273190273360%_))))
                                        (let ((_%$%lp-tl273195273372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273193273365%_)))
                                              (_%$%lp-hd273194273369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273193273365%_))))
                                          (_%$%loop273192273356%_
                                           _%$%lp-tl273195273372%_
                                           (cons _%$%lp-hd273194273369%_
                                                 _%$%sig273196273363%_))))
                                      (let ((_%$%sig273197273375%_
                                             (reverse _%$%sig273196273363%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl273185273337%_))
                                            (_%__kont276564276565%_
                                             _%$%sig273197273375%_
                                             _%$%hd273181273324%_)
                                            (_%__match276620276621%_
                                             _%$%e273177273310%_
                                             _%$%hd273178273314%_
                                             _%$%tl273179273317%_
                                             _%$%e273180273320%_
                                             _%$%hd273181273324%_
                                             _%$%tl273182273327%_)))))))
                        (_%$%loop273192273356%_
                         _%$%target273189273350%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276561276562%_))
                  (let ((_%$%e273177273310%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276561276562%_))))
                    (let ((_%$%tl273179273317%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273177273310%_)))
                          (_%$%hd273178273314%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273177273310%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273179273317%_))
                          (let ((_%$%e273180273320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273179273317%_))))
                            (let ((_%$%tl273182273327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273180273320%_)))
                                  (_%$%hd273181273324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273180273320%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl273182273327%_))
                                  (let ((_%$%e273183273330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl273182273327%_))))
                                    (let ((_%$%tl273185273337%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e273183273330%_)))
                                          (_%$%hd273184273334%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e273183273330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd273184273334%_))
                                          (let ((_%$%e273186273340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd273184273334%_))))
                                            (let ((_%$%tl273188273347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e273186273340%_)))
                                                  (_%$%hd273187273344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e273186273340%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd273187273344%_))
                                                  (if (let ((__tmp276995
                                                             |gxc[1]#_g276996_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp276995
                                                         _%$%hd273187273344%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl273188273347%_))
                                                          (let ((_%__splice276566276567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl273188273347%_
                            '0))))
                    (let ((_%$%tl273191273353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276566276567%_ '1)))
                          (_%$%target273189273350%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276566276567%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273191273353%_))
                          (_%__match276608276609%_
                           _%$%e273177273310%_
                           _%$%hd273178273314%_
                           _%$%tl273179273317%_
                           _%$%e273180273320%_
                           _%$%hd273181273324%_
                           _%$%tl273182273327%_
                           _%$%e273183273330%_
                           _%$%hd273184273334%_
                           _%$%tl273185273337%_
                           _%$%e273186273340%_
                           _%$%hd273187273344%_
                           _%$%tl273188273347%_
                           _%__splice276566276567%_
                           _%$%target273189273350%_
                           _%$%tl273191273353%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl273182273327%_))
                              (let ((_%__splice276570276571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl273182273327%_
                                        '0))))
                                (let ((_%$%tl273208273250%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276570276571%_
                                          '1)))
                                      (_%$%target273206273247%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276570276571%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl273208273250%_))
                                      (_%__match276628276629%_
                                       _%$%e273177273310%_
                                       _%$%hd273178273314%_
                                       _%$%tl273179273317%_
                                       _%$%e273180273320%_
                                       _%$%hd273181273324%_
                                       _%$%tl273182273327%_
                                       _%__splice276570276571%_
                                       _%$%target273206273247%_
                                       _%$%tl273208273250%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273173273220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g273173273220%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl273182273327%_))
                      (let ((_%__splice276570276571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl273182273327%_
                                '0))))
                        (let ((_%$%tl273208273250%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276570276571%_ '1)))
                              (_%$%target273206273247%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276570276571%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl273208273250%_))
                              (_%__match276628276629%_
                               _%$%e273177273310%_
                               _%$%hd273178273314%_
                               _%$%tl273179273317%_
                               _%$%e273180273320%_
                               _%$%hd273181273324%_
                               _%$%tl273182273327%_
                               _%__splice276570276571%_
                               _%$%target273206273247%_
                               _%$%tl273208273250%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g273173273220%_)))))
                      (let () (declare (not safe)) (_%$%g273173273220%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl273182273327%_))
                  (let ((_%__splice276570276571%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl273182273327%_
                            '0))))
                    (let ((_%$%tl273208273250%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276570276571%_ '1)))
                          (_%$%target273206273247%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276570276571%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273208273250%_))
                          (_%__match276628276629%_
                           _%$%e273177273310%_
                           _%$%hd273178273314%_
                           _%$%tl273179273317%_
                           _%$%e273180273320%_
                           _%$%hd273181273324%_
                           _%$%tl273182273327%_
                           _%__splice276570276571%_
                           _%$%target273206273247%_
                           _%$%tl273208273250%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g273173273220%_)))))
                  (let () (declare (not safe)) (_%$%g273173273220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl273182273327%_))
                                                      (let ((_%__splice276570276571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl273182273327%_
                        '0))))
                (let ((_%$%tl273208273250%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276570276571%_ '1)))
                      (_%$%target273206273247%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276570276571%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl273208273250%_))
                      (_%__match276628276629%_
                       _%$%e273177273310%_
                       _%$%hd273178273314%_
                       _%$%tl273179273317%_
                       _%$%e273180273320%_
                       _%$%hd273181273324%_
                       _%$%tl273182273327%_
                       _%__splice276570276571%_
                       _%$%target273206273247%_
                       _%$%tl273208273250%_)
                      (let () (declare (not safe)) (_%$%g273173273220%_)))))
              (let () (declare (not safe)) (_%$%g273173273220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl273182273327%_))
                                              (let ((_%__splice276570276571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl273182273327%_
                                                        '0))))
                                                (let ((_%$%tl273208273250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276570276571%_
                                                          '1)))
                                                      (_%$%target273206273247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276570276571%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273208273250%_))
                                                      (_%__match276628276629%_
                                                       _%$%e273177273310%_
                                                       _%$%hd273178273314%_
                                                       _%$%tl273179273317%_
                                                       _%$%e273180273320%_
                                                       _%$%hd273181273324%_
                                                       _%$%tl273182273327%_
                                                       _%__splice276570276571%_
                                                       _%$%target273206273247%_
                                                       _%$%tl273208273250%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g273173273220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273173273220%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl273182273327%_))
                                      (let ((_%__splice276570276571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl273182273327%_
                                                '0))))
                                        (let ((_%$%tl273208273250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276570276571%_
                                                  '1)))
                                              (_%$%target273206273247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276570276571%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl273208273250%_))
                                              (_%__match276628276629%_
                                               _%$%e273177273310%_
                                               _%$%hd273178273314%_
                                               _%$%tl273179273317%_
                                               _%$%e273180273320%_
                                               _%$%hd273181273324%_
                                               _%$%tl273182273327%_
                                               _%__splice276570276571%_
                                               _%$%target273206273247%_
                                               _%$%tl273208273250%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273173273220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273173273220%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273173273220%_)))))
                  (let () (declare (not safe)) (_%$%g273173273220%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx274563%_ _%id274565%_)
        (let ((_%proc274569%_
               (let ((__tmp276997
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id274565%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp276997))))
          (if (procedure? _%proc274569%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx274563%_
                 _%id274565%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx274554%_ _%id274556%_)
        (let ((_%klass274560%_
               (let ((__tmp276998
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id274556%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp276998))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass274560%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx274554%_
                 _%id274556%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx273804%_ _%proc273806%_ _%sig273807%_)
        (letrec ((_%signature-arity273809%_
                  (lambda (_%args274486%_)
                    (let _%loop274489%_ ((_%rest274492%_ _%args274486%_)
                                         (_%count274494%_ '0))
                      (let* ((_%$%rest274495274506%_ _%rest274492%_)
                             (_%$%E274499274512%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest274495274506%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K274502274543%_
                               (lambda (_%rest274540%_)
                                 (_%loop274489%_
                                  _%rest274540%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count274494%_ '1)))))
                              (_%$%K274501274532%_ (lambda () _%count274494%_))
                              (_%$%K274500274520%_
                               (lambda () (cons _%count274494%_ '()))))
                          (let ((_%$%try-match274497274536%_
                                 (lambda ()
                                   (if (null? _%$%rest274495274506%_)
                                       (_%$%K274501274532%_)
                                       (_%$%K274500274520%_)))))
                            (if (pair? _%$%rest274495274506%_)
                                (let* ((_%$%tl274504274547%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest274495274506%_)))
                                       (_%rest274551%_ _%$%tl274504274547%_))
                                  (_%$%K274502274543%_ _%rest274551%_))
                                (_%$%try-match274497274536%_))))))))
                 (_%make-signature273811%_
                  (lambda (_%args274368%_
                           _%return274370%_
                           _%effect274371%_
                           _%unchecked274372%_)
                    (let ((__tmp276999
                           (lambda (_%$%g274373274375%_)
                             (|gxc[1]#verify-class!|
                              _%ctx273804%_
                              _%$%g274373274375%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp276999 _%args274368%_))
                    (|gxc[1]#verify-class!| _%ctx273804%_ _%return274370%_)
                    (if _%unchecked274372%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx273804%_
                         _%unchecked274372%_)
                        '#!void)
                    (let ((_%arity274379%_
                           (_%signature-arity273809%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args274368%_)))))
                      (if _%effect274371%_
                          (let ((_%effect274382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect274371%_))))
                            (if (and (list? _%effect274382%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect274382%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx273804%_
                                   _%proc273806%_
                                   _%effect274382%_))))
                          '#!void)
                      (cons _%arity274379%_
                            (cons (let* ((_%$%g274385274408%_
                                          (lambda (_%$%g274386274404%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g274386274404%_))))
                                         (_%$%g274384274482%_
                                          (lambda (_%$%g274386274412%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g274386274412%_))
                                                (let ((_%$%e274391274415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g274386274412%_))))
                                                  (let ((_%$%hd274392274419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e274391274415%_)))
                                                        (_%$%tl274393274422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e274391274415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl274393274422%_))
                                                        (let ((_%$%e274394274425%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl274393274422%_))))
                  (let ((_%$%hd274395274429%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274394274425%_)))
                        (_%$%tl274396274432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274394274425%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl274396274432%_))
                        (let ((_%$%e274397274435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl274396274432%_))))
                          (let ((_%$%hd274398274439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274397274435%_)))
                                (_%$%tl274399274442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274397274435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274399274442%_))
                                (let ((_%$%e274400274445%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274399274442%_))))
                                  (let ((_%$%hd274401274449%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274400274445%_)))
                                        (_%$%tl274402274452%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274400274445%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274402274452%_))
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
                        (cons _%$%hd274392274419%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd274395274429%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd274398274439%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd274401274449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g274385274408%_
                                         _%$%g274386274412%_))))
                                (_%$%g274385274408%_ _%$%g274386274412%_))))
                        (_%$%g274385274408%_ _%$%g274386274412%_))))
                (_%$%g274385274408%_ _%$%g274386274412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g274385274408%_
                                                 _%$%g274386274412%_)))))
                                    (_%$%g274384274482%_
                                     (list _%args274368%_
                                           _%return274370%_
                                           _%effect274371%_
                                           _%unchecked274372%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx273804%_ _%proc273806%_)
          (let* ((_%__stx276639276640%_ _%sig273807%_)
                 (_%$%g273818273921%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx276639276640%_)))))
            (let ((_%__kont276642276643%_
                   (lambda (_%$%g273820274349%_ _%$%g273821274351%_)
                     (_%make-signature273811%_
                      _%$%g273821274351%_
                      _%$%g273820274349%_
                      '#f
                      '#f)))
                  (_%__kont276644276645%_
                   (lambda (_%$%g273828274300%_
                            _%$%g273829274302%_
                            _%$%g273830274303%_)
                     (_%make-signature273811%_
                      _%$%g273830274303%_
                      _%$%g273829274302%_
                      _%$%g273828274300%_
                      '#f)))
                  (_%__kont276646276647%_
                   (lambda (_%$%g273844274224%_
                            _%$%g273845274226%_
                            _%$%g273846274227%_)
                     (_%make-signature273811%_
                      _%$%g273846274227%_
                      _%$%g273845274226%_
                      _%$%g273844274224%_
                      (let ((__tmp277000
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc273806%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp277000)))))
                  (_%__kont276648276649%_
                   (lambda (_%$%g273864274130%_
                            _%$%g273865274132%_
                            _%$%g273866274133%_
                            _%$%g273867274134%_)
                     (_%make-signature273811%_
                      _%$%g273867274134%_
                      _%$%g273866274133%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g273864274130%_)))))
                  (_%__kont276650276651%_
                   (lambda (_%$%g273888274037%_ _%$%g273889274039%_)
                     (_%make-signature273811%_
                      _%$%g273889274039%_
                      _%$%g273888274037%_
                      '#f
                      (let ((__tmp277001
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc273806%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp277001)))))
                  (_%__kont276652276653%_
                   (lambda (_%$%g273900273972%_
                            _%$%g273901273974%_
                            _%$%g273902273975%_)
                     (_%make-signature273811%_
                      _%$%g273902273975%_
                      _%$%g273901273974%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g273900273972%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276639276640%_))
                  (let ((_%$%e273822274329%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276639276640%_))))
                    (let ((_%$%tl273824274336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273822274329%_)))
                          (_%$%hd273823274333%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273822274329%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273824274336%_))
                          (let ((_%$%e273825274339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273824274336%_))))
                            (let ((_%$%tl273827274346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273825274339%_)))
                                  (_%$%hd273826274343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273825274339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273827274346%_))
                                  (_%__kont276642276643%_
                                   _%$%hd273826274343%_
                                   _%$%hd273823274333%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl273827274346%_))
                                      (let ((_%$%e273837274276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl273827274346%_))))
                                        (let ((_%$%tl273839274283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273837274276%_)))
                                              (_%$%hd273838274280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273837274276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd273838274280%_))
                                              (let ((_%$%e273840274286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd273838274280%_))))
                                                (if (equal? _%$%e273840274286%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl273839274283%_))
                                                        (let ((_%$%e273841274290%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl273839274283%_))))
                  (let ((_%$%tl273843274297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273841274290%_)))
                        (_%$%hd273842274294%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273841274290%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl273843274297%_))
                        (_%__kont276644276645%_
                         _%$%hd273842274294%_
                         _%$%hd273826274343%_
                         _%$%hd273823274333%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273843274297%_))
                            (let ((_%$%e273860274210%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl273843274297%_))))
                              (let ((_%$%tl273862274217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273860274210%_)))
                                    (_%$%hd273861274214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273860274210%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd273861274214%_))
                                    (let ((_%$%e273863274220%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd273861274214%_))))
                                      (if (equal? _%$%e273863274220%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl273862274217%_))
                                              (_%__kont276646276647%_
                                               _%$%hd273842274294%_
                                               _%$%hd273826274343%_
                                               _%$%hd273823274333%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273862274217%_))
                                                  (let ((_%$%e273885274120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273862274217%_))))
                                                    (let ((_%$%tl273887274127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273885274120%_)))
                                                          (_%$%hd273886274124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273885274120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl273887274127%_))
                                                          (_%__kont276648276649%_
                                                           _%$%hd273886274124%_
                                                           _%$%hd273842274294%_
                                                           _%$%hd273826274343%_
                                                           _%$%hd273823274333%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g273818273921%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273818273921%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g273818273921%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g273818273921%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273818273921%_))))))
                (let () (declare (not safe)) (_%$%g273818273921%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e273840274286%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl273839274283%_))
                                                            (_%__kont276650276651%_
                                                             _%$%hd273826274343%_
                                                             _%$%hd273823274333%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273839274283%_))
                        (let ((_%$%e273913273962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273839274283%_))))
                          (let ((_%$%tl273915273969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273913273962%_)))
                                (_%$%hd273914273966%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273913273962%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl273915273969%_))
                                (_%__kont276652276653%_
                                 _%$%hd273914273966%_
                                 _%$%hd273826274343%_
                                 _%$%hd273823274333%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g273818273921%_)))))
                        (let () (declare (not safe)) (_%$%g273818273921%_))))
                (let () (declare (not safe)) (_%$%g273818273921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273818273921%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273818273921%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273818273921%_)))))
                  (let () (declare (not safe)) (_%$%g273818273921%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig273415%_)
        (let* ((_%$%g273418273498%_
                (lambda (_%$%g273419273494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273419273494%_))))
               (_%$%g273417273800%_
                (lambda (_%$%g273419273502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273419273502%_))
                      (let ((_%$%e273425273505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g273419273502%_))))
                        (let ((_%$%hd273426273509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273425273505%_)))
                              (_%$%tl273427273512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273425273505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273427273512%_))
                              (let ((_%$%e273428273515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl273427273512%_))))
                                (let ((_%$%hd273429273519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273428273515%_)))
                                      (_%$%tl273430273522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273428273515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd273429273519%_))
                                      (let ((_%$%e273431273525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd273429273519%_))))
                                        (if (equal? _%$%e273431273525%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273430273522%_))
                                                (let ((_%$%e273432273529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl273430273522%_))))
                                                  (let ((_%$%hd273433273533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273432273529%_)))
                                                        (_%$%tl273434273536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273432273529%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd273433273533%_))
                                                        (let ((_%$%e273435273539%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd273433273533%_))))
                  (let ((_%$%hd273436273543%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273435273539%_)))
                        (_%$%tl273437273546%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273435273539%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd273436273543%_))
                        (if (let ((__tmp277002 |gxc[1]#_g277003_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp277002
                               _%$%hd273436273543%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl273437273546%_))
                                (let ((_%$%e273438273549%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl273437273546%_))))
                                  (let ((_%$%hd273439273553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273438273549%_)))
                                        (_%$%tl273440273556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273438273549%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl273440273556%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl273434273536%_))
                                            (let ((_%$%e273441273559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl273434273536%_))))
                                              (let ((_%$%hd273442273563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e273441273559%_)))
                                                    (_%$%tl273443273566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e273441273559%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd273442273563%_))
                                                    (let ((_%$%e273444273569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd273442273563%_))))
                                                      (if (equal? _%$%e273444273569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl273443273566%_))
                      (let ((_%$%e273445273573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl273443273566%_))))
                        (let ((_%$%hd273446273577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273445273573%_)))
                              (_%$%tl273447273580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273445273573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd273446273577%_))
                              (let ((_%$%e273448273583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd273446273577%_))))
                                (let ((_%$%hd273449273587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273448273583%_)))
                                      (_%$%tl273450273590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273448273583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd273449273587%_))
                                      (if (let ((__tmp277004
                                                 |gxc[1]#_g277005_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp277004
                                             _%$%hd273449273587%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273450273590%_))
                                              (let ((_%$%e273451273593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273450273590%_))))
                                                (let ((_%$%hd273452273597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273451273593%_)))
                                                      (_%$%tl273453273600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273451273593%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273453273600%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl273447273580%_))
                                                          (let ((_%$%e273454273603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl273447273580%_))))
                    (let ((_%$%hd273455273607%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273454273603%_)))
                          (_%$%tl273456273610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273454273603%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd273455273607%_))
                          (let ((_%$%e273457273613%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd273455273607%_))))
                            (if (equal? _%$%e273457273613%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl273456273610%_))
                                    (let ((_%$%e273458273617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl273456273610%_))))
                                      (let ((_%$%hd273459273621%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273458273617%_)))
                                            (_%$%tl273460273624%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273458273617%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd273459273621%_))
                                            (let ((_%$%e273461273627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd273459273621%_))))
                                              (let ((_%$%hd273462273631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e273461273627%_)))
                                                    (_%$%tl273463273634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e273461273627%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd273462273631%_))
                                                    (if (let ((__tmp277006
                                                               |gxc[1]#_g277007_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp277006
                                                           _%$%hd273462273631%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl273463273634%_))
                                                            (let ((_%$%e273464273637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl273463273634%_))))
                      (let ((_%$%hd273465273641%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e273464273637%_)))
                            (_%$%tl273466273644%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e273464273637%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl273466273644%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl273460273624%_))
                                (let ((_%$%e273467273647%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl273460273624%_))))
                                  (let ((_%$%hd273468273651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273467273647%_)))
                                        (_%$%tl273469273654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273467273647%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd273468273651%_))
                                        (let ((_%$%e273470273657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd273468273651%_))))
                                          (if (equal? _%$%e273470273657%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273469273654%_))
                                                  (let ((_%$%e273471273661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273469273654%_))))
                                                    (let ((_%$%hd273472273665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273471273661%_)))
                                                          (_%$%tl273473273668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273471273661%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd273472273665%_))
                                                          (let ((_%$%e273474273671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd273472273665%_))))
                    (let ((_%$%hd273475273675%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273474273671%_)))
                          (_%$%tl273476273678%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273474273671%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd273475273675%_))
                          (if (let ((__tmp277008 |gxc[1]#_g277009_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp277008
                                 _%$%hd273475273675%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl273476273678%_))
                                  (let ((_%$%e273477273681%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl273476273678%_))))
                                    (let ((_%$%hd273478273685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e273477273681%_)))
                                          (_%$%tl273479273688%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e273477273681%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl273479273688%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273473273668%_))
                                              (let ((_%$%e273480273691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273473273668%_))))
                                                (let ((_%$%hd273481273695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273480273691%_)))
                                                      (_%$%tl273482273698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273480273691%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd273481273695%_))
                                                      (let ((_%$%e273483273701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd273481273695%_))))
                (if (equal? _%$%e273483273701%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273482273698%_))
                        (let ((_%$%e273484273705%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273482273698%_))))
                          (let ((_%$%hd273485273709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273484273705%_)))
                                (_%$%tl273486273712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273484273705%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd273485273709%_))
                                (let ((_%$%e273487273715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd273485273709%_))))
                                  (let ((_%$%hd273488273719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273487273715%_)))
                                        (_%$%tl273489273722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273487273715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd273488273719%_))
                                        (if (let ((__tmp277010
                                                   |gxc[1]#_g277011_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp277010
                                               _%$%hd273488273719%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273489273722%_))
                                                (let ((_%$%e273490273725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl273489273722%_))))
                                                  (let ((_%$%hd273491273729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273490273725%_)))
                                                        (_%$%tl273492273732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273490273725%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273492273732%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl273486273712%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd273478273685%_))
                        (cons _%$%hd273478273685%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd273452273597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd273491273729%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g273418273498%_ _%$%g273419273502%_))
                (_%$%g273418273498%_ _%$%g273419273502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g273418273498%_
                                                 _%$%g273419273502%_))
                                            (_%$%g273418273498%_
                                             _%$%g273419273502%_))
                                        (_%$%g273418273498%_
                                         _%$%g273419273502%_))))
                                (_%$%g273418273498%_ _%$%g273419273502%_))))
                        (_%$%g273418273498%_ _%$%g273419273502%_))
                    (_%$%g273418273498%_ _%$%g273419273502%_)))
              (_%$%g273418273498%_ _%$%g273419273502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g273418273498%_
                                               _%$%g273419273502%_))
                                          (_%$%g273418273498%_
                                           _%$%g273419273502%_))))
                                  (_%$%g273418273498%_ _%$%g273419273502%_))
                              (_%$%g273418273498%_ _%$%g273419273502%_))
                          (_%$%g273418273498%_ _%$%g273419273502%_))))
                  (_%$%g273418273498%_ _%$%g273419273502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g273418273498%_
                                                   _%$%g273419273502%_))
                                              (_%$%g273418273498%_
                                               _%$%g273419273502%_)))
                                        (_%$%g273418273498%_
                                         _%$%g273419273502%_))))
                                (_%$%g273418273498%_ _%$%g273419273502%_))
                            (_%$%g273418273498%_ _%$%g273419273502%_))))
                    (_%$%g273418273498%_ _%$%g273419273502%_))
                (_%$%g273418273498%_ _%$%g273419273502%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273418273498%_
                                                     _%$%g273419273502%_))))
                                            (_%$%g273418273498%_
                                             _%$%g273419273502%_))))
                                    (_%$%g273418273498%_ _%$%g273419273502%_))
                                (_%$%g273418273498%_ _%$%g273419273502%_)))
                          (_%$%g273418273498%_ _%$%g273419273502%_))))
                  (_%$%g273418273498%_ _%$%g273419273502%_))
              (_%$%g273418273498%_ _%$%g273419273502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g273418273498%_
                                               _%$%g273419273502%_))
                                          (_%$%g273418273498%_
                                           _%$%g273419273502%_))
                                      (_%$%g273418273498%_
                                       _%$%g273419273502%_))))
                              (_%$%g273418273498%_ _%$%g273419273502%_))))
                      (_%$%g273418273498%_ _%$%g273419273502%_))
                  (_%$%g273418273498%_ _%$%g273419273502%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273418273498%_
                                                     _%$%g273419273502%_))))
                                            (_%$%g273418273498%_
                                             _%$%g273419273502%_))
                                        (_%$%g273418273498%_
                                         _%$%g273419273502%_))))
                                (_%$%g273418273498%_ _%$%g273419273502%_))
                            (_%$%g273418273498%_ _%$%g273419273502%_))
                        (_%$%g273418273498%_ _%$%g273419273502%_))))
                (_%$%g273418273498%_ _%$%g273419273502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g273418273498%_
                                                 _%$%g273419273502%_))
                                            (_%$%g273418273498%_
                                             _%$%g273419273502%_)))
                                      (_%$%g273418273498%_
                                       _%$%g273419273502%_))))
                              (_%$%g273418273498%_ _%$%g273419273502%_))))
                      (_%$%g273418273498%_ _%$%g273419273502%_)))))
          (_%$%g273417273800%_ _%sig273415%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx274572%_)
        (let* ((_%$%g274575274593%_
                (lambda (_%$%g274576274589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274576274589%_))))
               (_%$%g274574274648%_
                (lambda (_%$%g274576274597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274576274597%_))
                      (let ((_%$%e274579274600%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274576274597%_))))
                        (let ((_%$%hd274580274604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274579274600%_)))
                              (_%$%tl274581274607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274579274600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274581274607%_))
                              (let ((_%$%e274582274610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274581274607%_))))
                                (let ((_%$%hd274583274614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274582274610%_)))
                                      (_%$%tl274584274617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274582274610%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274584274617%_))
                                      (let ((_%$%e274585274620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274584274617%_))))
                                        (let ((_%$%hd274586274624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274585274620%_)))
                                              (_%$%tl274587274627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274585274620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274587274627%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd274583274614%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd274586274624%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx274572%_
                                                     _%$%hd274583274614%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx274572%_
                                                     _%$%hd274586274624%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd274583274614%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd274586274624%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274575274593%_
                                                   _%$%g274576274597%_))
                                              (_%$%g274575274593%_
                                               _%$%g274576274597%_))))
                                      (_%$%g274575274593%_
                                       _%$%g274576274597%_))))
                              (_%$%g274575274593%_ _%$%g274576274597%_))))
                      (_%$%g274575274593%_ _%$%g274576274597%_)))))
          (_%$%g274574274648%_ _%stx274572%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx274652%_)
        (let* ((_%$%g274655274679%_
                (lambda (_%$%g274656274675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274656274675%_))))
               (_%$%g274654274960%_
                (lambda (_%$%g274656274683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274656274683%_))
                      (let ((_%$%e274659274686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274656274683%_))))
                        (let ((_%$%hd274660274690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274659274686%_)))
                              (_%$%tl274661274693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274659274686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274661274693%_))
                              (let ((_%$%e274662274696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274661274693%_))))
                                (let ((_%$%hd274663274700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274662274696%_)))
                                      (_%$%tl274664274703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274662274696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274664274703%_))
                                      (let ((_g277012_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274664274703%_
                                                '0))))
                                        (begin
                                          (let ((_g277013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g277012_)
                                                       (##values-length
                                                        _g277012_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g277013_ 2)))
                                                (error "Context expects 2 values"
                                                       _g277013_)))
                                          (let ((_%$%target274665274706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g277012_ 0)))
                                                (_%$%tl274667274709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g277012_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274667274709%_))
                                                (letrec ((_%$%loop274668274712%_
                                                          (lambda (_%$%hd274666274716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature274672274719%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274666274716%_))
                        (let ((_%$%e274669274721%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274666274716%_))))
                          (let ((_%$%lp-hd274670274725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274669274721%_)))
                                (_%$%lp-tl274671274728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274669274721%_))))
                            (_%$%loop274668274712%_
                             _%$%lp-tl274671274728%_
                             (cons _%$%lp-hd274670274725%_
                                   _%$%signature274672274719%_))))
                        (let ((_%$%signature274673274731%_
                               (reverse _%$%signature274672274719%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd274663274700%_))
                              (let* ((_%$%g274754274769%_
                                      (lambda (_%$%g274755274765%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g274755274765%_))))
                                     (_%$%g274753274948%_
                                      (lambda (_%$%g274755274773%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g274755274773%_))
                                            (let ((_%$%e274758274776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g274755274773%_))))
                                              (let ((_%$%hd274759274780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e274758274776%_)))
                                                    (_%$%tl274760274783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e274758274776%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl274760274783%_))
                                                    (let ((_%$%e274761274786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl274760274783%_))))
                                                      (let ((_%$%hd274762274790%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e274761274786%_)))
                    (_%$%tl274763274793%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e274761274786%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl274763274793%_))
                    (let* ((_%$%g274814274822%_
                            (lambda (_%$%g274815274818%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g274815274818%_))))
                           (_%$%g274813274944%_
                            (lambda (_%$%g274815274826%_)
                              (let* ((_%unchecked274842%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd274762274790%_))
                                     (_%$%g274845274853%_
                                      (lambda (_%$%g274846274849%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g274846274849%_))))
                                     (_%$%g274844274876%_
                                      (lambda (_%$%g274846274857%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g274815274826%_
                                                    (cons _%$%g274846274857%_
                                                          '()))))))
                                (_%$%g274844274876%_
                                 (if _%unchecked274842%_
                                     (let* ((_%$%g274880274895%_
                                             (lambda (_%$%g274881274891%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g274881274891%_))))
                                            (_%$%g274879274940%_
                                             (lambda (_%$%g274881274899%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g274881274899%_))
                                                   (let ((_%$%e274884274902%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g274881274899%_))))
                                                     (let ((_%$%hd274885274906%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e274884274902%_)))
                                                           (_%$%tl274886274909%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e274884274902%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl274886274909%_))
                                                           (let ((_%$%e274887274912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl274886274909%_))))
                     (let ((_%$%hd274888274916%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e274887274912%_)))
                           (_%$%tl274889274919%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e274887274912%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl274889274919%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd274885274906%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd274759274780%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd274888274916%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g274880274895%_ _%$%g274881274899%_))))
                   (_%$%g274880274895%_ _%$%g274881274899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g274880274895%_
                                                    _%$%g274881274899%_)))))
                                       (_%$%g274879274940%_
                                        _%unchecked274842%_))
                                     '(begin)))))))
                      (_%$%g274813274944%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd274663274700%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd274759274780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd274762274790%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g274754274769%_ _%$%g274755274773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g274754274769%_
                                                     _%$%g274755274773%_))))
                                            (_%$%g274754274769%_
                                             _%$%g274755274773%_)))))
                                (_%$%g274753274948%_
                                 (|gxc[1]#parse-signature|
                                  _%stx274652%_
                                  _%$%hd274663274700%_
                                  (let ((__tmp277014
                                         (lambda (_%$%g274951274954%_
                                                  _%$%g274952274957%_)
                                           (cons _%$%g274951274954%_
                                                 _%$%g274952274957%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp277014
                                     '()
                                     _%$%signature274673274731%_)))))
                              (_%$%g274655274679%_ _%$%g274656274683%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274668274712%_
                                                   _%$%target274665274706%_
                                                   '()))
                                                (_%$%g274655274679%_
                                                 _%$%g274656274683%_)))))
                                      (_%$%g274655274679%_
                                       _%$%g274656274683%_))))
                              (_%$%g274655274679%_ _%$%g274656274683%_))))
                      (_%$%g274655274679%_ _%$%g274656274683%_)))))
          (_%$%g274654274960%_ _%stx274652%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx274965%_)
        (let* ((_%$%g274968274992%_
                (lambda (_%$%g274969274988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274969274988%_))))
               (_%$%g274967275867%_
                (lambda (_%$%g274969274996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274969274996%_))
                      (let ((_%$%e274972274999%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274969274996%_))))
                        (let ((_%$%hd274973275003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274972274999%_)))
                              (_%$%tl274974275006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274972274999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274974275006%_))
                              (let ((_%$%e274975275009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274974275006%_))))
                                (let ((_%$%hd274976275013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274975275009%_)))
                                      (_%$%tl274977275016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274975275009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274977275016%_))
                                      (let ((_g277015_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274977275016%_
                                                '0))))
                                        (begin
                                          (let ((_g277016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g277015_)
                                                       (##values-length
                                                        _g277015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g277016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g277016_)))
                                          (let ((_%$%target274978275019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g277015_ 0)))
                                                (_%$%tl274980275022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g277015_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274980275022%_))
                                                (letrec ((_%$%loop274981275025%_
                                                          (lambda (_%$%hd274979275029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature274985275032%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274979275029%_))
                        (let ((_%$%e274982275034%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274979275029%_))))
                          (let ((_%$%lp-hd274983275038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274982275034%_)))
                                (_%$%lp-tl274984275041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274982275034%_))))
                            (_%$%loop274981275025%_
                             _%$%lp-tl274984275041%_
                             (cons _%$%lp-hd274983275038%_
                                   _%$%case-signature274985275032%_))))
                        (let ((_%$%case-signature274986275044%_
                               (reverse _%$%case-signature274985275032%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd274976275013%_))
                              (let* ((_%signatures275080%_
                                      (map (lambda (_%$%g275066275068%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx274965%_
                                              _%$%hd274976275013%_
                                              _%$%g275066275068%_))
                                           (let ((__tmp277017
                                                  (lambda (_%$%g275071275074%_
                                                           _%$%g275072275077%_)
                                                    (cons _%$%g275071275074%_
                                                          _%$%g275072275077%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp277017
                                              '()
                                              _%$%case-signature274986275044%_))))
                                     (_%$%g275083275109%_
                                      (lambda (_%$%g275084275105%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g275084275105%_))))
                                     (_%$%g275082275863%_
                                      (lambda (_%$%g275084275113%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g275084275113%_))
                                            (let ((_g277018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g275084275113%_
                                                      '0))))
                                              (begin
                                                (let ((_g277019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g277018_)
                                                             (##values-length
                                                              _g277018_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g277019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g277019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target275087275116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g277018_
                                                          0)))
                                                      (_%$%tl275089275119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g277018_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275089275119%_))
                                                      (letrec ((_%$%loop275090275122%_
                                                                (lambda (_%$%hd275088275126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig275094275129%_
                                 _%$%arity275095275130%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd275088275126%_))
                              (let ((_%$%e275091275132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd275088275126%_))))
                                (let ((_%$%lp-hd275092275136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275091275132%_)))
                                      (_%$%lp-tl275093275139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275091275132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd275092275136%_))
                                      (let ((_%$%e275098275142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd275092275136%_))))
                                        (let ((_%$%hd275099275146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275098275142%_)))
                                              (_%$%tl275100275149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275098275142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275100275149%_))
                                              (let ((_%$%e275101275152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275100275149%_))))
                                                (let ((_%$%hd275102275156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275101275152%_)))
                                                      (_%$%tl275103275159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275101275152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275103275159%_))
                                                      (_%$%loop275090275122%_
                                                       _%$%lp-tl275093275139%_
                                                       (cons _%$%hd275102275156%_
                                                             _%$%sig275094275129%_)
                                                       (cons _%$%hd275099275146%_
                                                             _%$%arity275095275130%_))
                                                      (_%$%g275083275109%_
                                                       _%$%g275084275113%_))))
                                              (_%$%g275083275109%_
                                               _%$%g275084275113%_))))
                                      (_%$%g275083275109%_
                                       _%$%g275084275113%_))))
                              (let ((_%$%sig275096275162%_
                                     (reverse _%$%sig275094275129%_))
                                    (_%$%arity275097275164%_
                                     (reverse _%$%arity275095275130%_)))
                                (let* ((_%$%g275185275193%_
                                        (lambda (_%$%g275186275189%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g275186275189%_))))
                                       (_%$%g275184275848%_
                                        (lambda (_%$%g275186275197%_)
                                          (let* ((_%$%g275213275221%_
                                                  (lambda (_%$%g275214275217%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g275214275217%_))))
                                                 (_%$%g275212275243%_
                                                  (lambda (_%$%g275214275225%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g275186275197%_
                                                                (cons _%$%g275214275225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g275212275243%_
                                             (let ((_g277020_
                                                    (let _%loop275247%_ ((_%rest275250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures275080%_)
                                 (_%unchecked-proc275252%_ '#f)
                                 (_%unchecked-clauses275253%_ '()))
              (let* ((_%$%rest275254275262%_ _%rest275250%_)
                     (_%$%else275256275274%_
                      (lambda ()
                        (values _%unchecked-proc275252%_
                                (reverse! _%unchecked-clauses275253%_))))
                     (_%$%K275258275715%_
                      (lambda (_%rest275278%_ _%hd275280%_)
                        (let* ((_%$%g275282275369%_
                                (lambda (_%$%g275283275365%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g275283275365%_))))
                               (_%$%g275281275711%_
                                (lambda (_%$%g275283275373%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g275283275373%_))
                                      (let ((_%$%e275290275376%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g275283275373%_))))
                                        (let ((_%$%hd275291275380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275290275376%_)))
                                              (_%$%tl275292275383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275290275376%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275292275383%_))
                                              (let ((_%$%e275293275386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275292275383%_))))
                                                (let ((_%$%hd275294275390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275293275386%_)))
                                                      (_%$%tl275295275393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275293275386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd275294275390%_))
                                                      (let ((_%$%e275296275396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd275294275390%_))))
                (let ((_%$%hd275297275400%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275296275396%_)))
                      (_%$%tl275298275403%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275296275396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275298275403%_))
                      (let ((_%$%e275299275406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275298275403%_))))
                        (let ((_%$%hd275300275410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275299275406%_)))
                              (_%$%tl275301275413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275299275406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd275300275410%_))
                              (let ((_%$%e275302275416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd275300275410%_))))
                                (if (equal? _%$%e275302275416%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl275301275413%_))
                                        (let ((_%$%e275303275420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl275301275413%_))))
                                          (let ((_%$%hd275304275424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e275303275420%_)))
                                                (_%$%tl275305275427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e275303275420%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd275304275424%_))
                                                (let ((_%$%e275306275430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd275304275424%_))))
                                                  (let ((_%$%hd275307275434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e275306275430%_)))
                                                        (_%$%tl275308275437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e275306275430%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd275307275434%_))
                                                        (if (let ((__tmp277022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g277023_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp277022 _%$%hd275307275434%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275308275437%_))
                        (let ((_%$%e275309275440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275308275437%_))))
                          (let ((_%$%hd275310275444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275309275440%_)))
                                (_%$%tl275311275447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275309275440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl275311275447%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl275305275427%_))
                                    (let ((_%$%e275312275450%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl275305275427%_))))
                                      (let ((_%$%hd275313275454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e275312275450%_)))
                                            (_%$%tl275314275457%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e275312275450%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd275313275454%_))
                                            (let ((_%$%e275315275460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd275313275454%_))))
                                              (if (equal? _%$%e275315275460%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275314275457%_))
                                                      (let ((_%$%e275316275464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275314275457%_))))
                (let ((_%$%hd275317275468%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275316275464%_)))
                      (_%$%tl275318275471%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275316275464%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd275317275468%_))
                      (let ((_%$%e275319275474%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd275317275468%_))))
                        (let ((_%$%hd275320275478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275319275474%_)))
                              (_%$%tl275321275481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275319275474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd275320275478%_))
                              (if (let ((__tmp277024 |gxc[1]#_g277025_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp277024
                                     _%$%hd275320275478%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275321275481%_))
                                      (let ((_%$%e275322275484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275321275481%_))))
                                        (let ((_%$%hd275323275488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275322275484%_)))
                                              (_%$%tl275324275491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275322275484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl275324275491%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl275318275471%_))
                                                  (let ((_%$%e275325275494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl275318275471%_))))
                                                    (let ((_%$%hd275326275498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275325275494%_)))
                                                          (_%$%tl275327275501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275325275494%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd275326275498%_))
                                                          (let ((_%$%e275328275504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd275326275498%_))))
                    (if (equal? _%$%e275328275504%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl275327275501%_))
                            (let ((_%$%e275329275508%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl275327275501%_))))
                              (let ((_%$%hd275330275512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e275329275508%_)))
                                    (_%$%tl275331275515%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e275329275508%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd275330275512%_))
                                    (let ((_%$%e275332275518%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd275330275512%_))))
                                      (let ((_%$%hd275333275522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e275332275518%_)))
                                            (_%$%tl275334275525%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e275332275518%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd275333275522%_))
                                            (if (let ((__tmp277026
                                                       |gxc[1]#_g277027_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp277026
                                                   _%$%hd275333275522%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl275334275525%_))
                                                    (let ((_%$%e275335275528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl275334275525%_))))
                                                      (let ((_%$%hd275336275532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e275335275528%_)))
                    (_%$%tl275337275535%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e275335275528%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl275337275535%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275331275515%_))
                        (let ((_%$%e275338275538%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275331275515%_))))
                          (let ((_%$%hd275339275542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275338275538%_)))
                                (_%$%tl275340275545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275338275538%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd275339275542%_))
                                (let ((_%$%e275341275548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd275339275542%_))))
                                  (if (equal? _%$%e275341275548%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl275340275545%_))
                                          (let ((_%$%e275342275552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl275340275545%_))))
                                            (let ((_%$%hd275343275556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e275342275552%_)))
                                                  (_%$%tl275344275559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e275342275552%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd275343275556%_))
                                                  (let ((_%$%e275345275562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd275343275556%_))))
                                                    (let ((_%$%hd275346275566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275345275562%_)))
                                                          (_%$%tl275347275569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275345275562%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd275346275566%_))
                                                          (if (let ((__tmp277028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g277029_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp277028
                         _%$%hd275346275566%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl275347275569%_))
                          (let ((_%$%e275348275572%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl275347275569%_))))
                            (let ((_%$%hd275349275576%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e275348275572%_)))
                                  (_%$%tl275350275579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e275348275572%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl275350275579%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275344275559%_))
                                      (let ((_%$%e275351275582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275344275559%_))))
                                        (let ((_%$%hd275352275586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275351275582%_)))
                                              (_%$%tl275353275589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275351275582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd275352275586%_))
                                              (let ((_%$%e275354275592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd275352275586%_))))
                                                (if (equal? _%$%e275354275592%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl275353275589%_))
                                                        (let ((_%$%e275355275596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl275353275589%_))))
                  (let ((_%$%hd275356275600%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275355275596%_)))
                        (_%$%tl275357275603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275355275596%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd275356275600%_))
                        (let ((_%$%e275358275606%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd275356275600%_))))
                          (let ((_%$%hd275359275610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275358275606%_)))
                                (_%$%tl275360275613%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275358275606%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd275359275610%_))
                                (if (let ((__tmp277030 |gxc[1]#_g277031_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp277030
                                       _%$%hd275359275610%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl275360275613%_))
                                        (let ((_%$%e275361275616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl275360275613%_))))
                                          (let ((_%$%hd275362275620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e275361275616%_)))
                                                (_%$%tl275363275623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e275361275616%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl275363275623%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl275357275603%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl275295275393%_))
                                                        (let ((_%clause275703%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd275291275380%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd275323275488%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd275362275620%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked275705%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd275349275576%_))))
                  (_%loop275247%_
                   _%rest275278%_
                   (let ((_%$e275707%_ _%unchecked275705%_))
                     (if _%$e275707%_ _%$e275707%_ _%unchecked-proc275252%_))
                   (cons _%clause275703%_ _%unchecked-clauses275253%_)))
                (_%$%g275282275369%_ _%$%g275283275373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275282275369%_
                                                     _%$%g275283275373%_))
                                                (_%$%g275282275369%_
                                                 _%$%g275283275373%_))))
                                        (_%$%g275282275369%_
                                         _%$%g275283275373%_))
                                    (_%$%g275282275369%_ _%$%g275283275373%_))
                                (_%$%g275282275369%_ _%$%g275283275373%_))))
                        (_%$%g275282275369%_ _%$%g275283275373%_))))
                (_%$%g275282275369%_ _%$%g275283275373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275282275369%_
                                                     _%$%g275283275373%_)))
                                              (_%$%g275282275369%_
                                               _%$%g275283275373%_))))
                                      (_%$%g275282275369%_
                                       _%$%g275283275373%_))
                                  (_%$%g275282275369%_ _%$%g275283275373%_))))
                          (_%$%g275282275369%_ _%$%g275283275373%_))
                      (_%$%g275282275369%_ _%$%g275283275373%_))
                  (_%$%g275282275369%_ _%$%g275283275373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275282275369%_
                                                   _%$%g275283275373%_))))
                                          (_%$%g275282275369%_
                                           _%$%g275283275373%_))
                                      (_%$%g275282275369%_
                                       _%$%g275283275373%_)))
                                (_%$%g275282275369%_ _%$%g275283275373%_))))
                        (_%$%g275282275369%_ _%$%g275283275373%_))
                    (_%$%g275282275369%_ _%$%g275283275373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275282275369%_
                                                     _%$%g275283275373%_))
                                                (_%$%g275282275369%_
                                                 _%$%g275283275373%_))
                                            (_%$%g275282275369%_
                                             _%$%g275283275373%_))))
                                    (_%$%g275282275369%_
                                     _%$%g275283275373%_))))
                            (_%$%g275282275369%_ _%$%g275283275373%_))
                        (_%$%g275282275369%_ _%$%g275283275373%_)))
                  (_%$%g275282275369%_ _%$%g275283275373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275282275369%_
                                                   _%$%g275283275373%_))
                                              (_%$%g275282275369%_
                                               _%$%g275283275373%_))))
                                      (_%$%g275282275369%_
                                       _%$%g275283275373%_))
                                  (_%$%g275282275369%_ _%$%g275283275373%_))
                              (_%$%g275282275369%_ _%$%g275283275373%_))))
                      (_%$%g275282275369%_ _%$%g275283275373%_))))
              (_%$%g275282275369%_ _%$%g275283275373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275282275369%_
                                                   _%$%g275283275373%_)))
                                            (_%$%g275282275369%_
                                             _%$%g275283275373%_))))
                                    (_%$%g275282275369%_ _%$%g275283275373%_))
                                (_%$%g275282275369%_ _%$%g275283275373%_))))
                        (_%$%g275282275369%_ _%$%g275283275373%_))
                    (_%$%g275282275369%_ _%$%g275283275373%_))
                (_%$%g275282275369%_ _%$%g275283275373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g275282275369%_
                                                 _%$%g275283275373%_))))
                                        (_%$%g275282275369%_
                                         _%$%g275283275373%_))
                                    (_%$%g275282275369%_ _%$%g275283275373%_)))
                              (_%$%g275282275369%_ _%$%g275283275373%_))))
                      (_%$%g275282275369%_ _%$%g275283275373%_))))
              (_%$%g275282275369%_ _%$%g275283275373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275282275369%_
                                               _%$%g275283275373%_))))
                                      (_%$%g275282275369%_
                                       _%$%g275283275373%_)))))
                          (_%$%g275281275711%_ _%hd275280%_)))))
                (if (pair? _%$%rest275254275262%_)
                    (let ((_%$%hd275259275719%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest275254275262%_)))
                          (_%$%tl275260275722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest275254275262%_))))
                      (let* ((_%hd275725%_ _%$%hd275259275719%_)
                             (_%rest275728%_ _%$%tl275260275722%_))
                        (_%$%K275258275715%_ _%rest275728%_ _%hd275725%_)))
                    (_%$%else275256275274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g277021_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g277020_)
                                                              (##values-length
                                                               _g277020_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g277021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g277021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc275731%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277020_
                                                           0)))
                                                       (_%unchecked-clauses275733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277020_
                                                           1))))
                                                   (if _%unchecked-proc275731%_
                                                       (let* ((_%$%g275735275759%_
                                                               (lambda (_%$%g275736275755%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g275736275755%_))))
                      (_%$%g275734275844%_
                       (lambda (_%$%g275736275763%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g275736275763%_))
                             (let ((_%$%e275739275766%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g275736275763%_))))
                               (let ((_%$%hd275740275770%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e275739275766%_)))
                                     (_%$%tl275741275773%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e275739275766%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl275741275773%_))
                                     (let ((_%$%e275742275776%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl275741275773%_))))
                                       (let ((_%$%hd275743275780%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e275742275776%_)))
                                             (_%$%tl275744275783%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e275742275776%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd275743275780%_))
                                             (let ((_g277032_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd275743275780%_
                                                       '0))))
                                               (begin
                                                 (let ((_g277033_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g277032_)
                                                              (##values-length
                                                               _g277032_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g277033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g277033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target275745275786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277032_
                                                           0)))
                                                       (_%$%tl275747275789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277032_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl275747275789%_))
                                                       (letrec ((_%$%loop275748275792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd275746275796%_
                                  _%$%clause275752275799%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd275746275796%_))
                               (let ((_%$%e275749275801%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd275746275796%_))))
                                 (let ((_%$%lp-hd275750275805%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e275749275801%_)))
                                       (_%$%lp-tl275751275808%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e275749275801%_))))
                                   (_%$%loop275748275792%_
                                    _%$%lp-tl275751275808%_
                                    (cons _%$%lp-hd275750275805%_
                                          _%$%clause275752275799%_))))
                               (let ((_%$%clause275753275811%_
                                      (reverse _%$%clause275752275799%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl275744275783%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd275740275770%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp277034
                                        (lambda (_%$%g275835275838%_
                                                 _%$%g275836275841%_)
                                          (cons _%$%g275835275838%_
                                                _%$%g275836275841%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp277034
                                    '()
                                    _%$%clause275753275811%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g275735275759%_
                                      _%$%g275736275763%_)))))))
                 (_%$%loop275748275792%_ _%$%target275745275786%_ '()))
               (_%$%g275735275759%_ _%$%g275736275763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g275735275759%_
                                              _%$%g275736275763%_))))
                                     (_%$%g275735275759%_
                                      _%$%g275736275763%_))))
                             (_%$%g275735275759%_ _%$%g275736275763%_)))))
                 (_%$%g275734275844%_
                  (list _%unchecked-proc275731%_ _%unchecked-clauses275733%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g275184275848%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd274976275013%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig275096275162%_
                                    _%$%arity275097275164%_))
                                 (let ((__tmp277035
                                        (lambda (_%$%g275851275855%_
                                                 _%$%g275852275858%_
                                                 _%$%g275853275860%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g275852275858%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g275851275855%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g275853275860%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp277035
                                    '()
                                    _%$%sig275096275162%_
                                    _%$%arity275097275164%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop275090275122%_ _%$%target275087275116%_ '() '()))
              (_%$%g275083275109%_ _%$%g275084275113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g275083275109%_
                                             _%$%g275084275113%_)))))
                                (_%$%g275082275863%_ _%signatures275080%_))
                              (_%$%g274968274992%_ _%$%g274969274996%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274981275025%_
                                                   _%$%target274978275019%_
                                                   '()))
                                                (_%$%g274968274992%_
                                                 _%$%g274969274996%_)))))
                                      (_%$%g274968274992%_
                                       _%$%g274969274996%_))))
                              (_%$%g274968274992%_ _%$%g274969274996%_))))
                      (_%$%g274968274992%_ _%$%g274969274996%_)))))
          (_%$%g274967275867%_ _%stx274965%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx275875%_)
        (let* ((_%__stx276855276856%_ _%$stx275875%_)
               (_%$%g275881275941%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276855276856%_)))))
          (let ((_%__kont276858276859%_
                 (lambda (_%$%g275883276163%_ _%$%g275884276165%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275884276165%_ '()))
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
                                                       (cons _%$%g275884276165%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g275883276163%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276860276861%_
                 (lambda (_%$%g275898276088%_
                          _%$%g275899276090%_
                          _%$%g275900276091%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275900276091%_ '()))
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
                                                       (cons _%$%g275900276091%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g275899276090%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g275898276088%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276862276863%_
                 (lambda (_%$%g275917276002%_
                          _%$%g275918276004%_
                          _%$%g275919276005%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275919276005%_ '()))
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
                                                       (cons _%$%g275919276005%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g275918276004%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g275917276002%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276855276856%_))
                (let ((_%$%e275885276119%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276855276856%_))))
                  (let ((_%$%tl275887276126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275885276119%_)))
                        (_%$%hd275886276123%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275885276119%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275887276126%_))
                        (let ((_%$%e275888276129%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275887276126%_))))
                          (let ((_%$%tl275890276136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275888276129%_)))
                                (_%$%hd275889276133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275888276129%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd275889276133%_))
                                (let ((_%$%e275891276139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd275889276133%_))))
                                  (if (equal? _%$%e275891276139%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl275890276136%_))
                                          (let ((_%$%e275892276143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl275890276136%_))))
                                            (let ((_%$%tl275894276150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e275892276143%_)))
                                                  (_%$%hd275893276147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e275892276143%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl275894276150%_))
                                                  (let ((_%$%e275895276153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl275894276150%_))))
                                                    (let ((_%$%tl275897276160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275895276153%_)))
                                                          (_%$%hd275896276157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275895276153%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl275897276160%_))
                                                          (_%__kont276858276859%_
                                                           _%$%hd275896276157%_
                                                           _%$%hd275893276147%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g275881275941%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g275881275941%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g275881275941%_)))
                                      (if (equal? _%$%e275891276139%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275890276136%_))
                                              (let ((_%$%e275908276058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275890276136%_))))
                                                (let ((_%$%tl275910276065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275908276058%_)))
                                                      (_%$%hd275909276062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275908276058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275910276065%_))
                                                      (let ((_%$%e275911276068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275910276065%_))))
                (let ((_%$%tl275913276075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275911276068%_)))
                      (_%$%hd275912276072%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275911276068%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275913276075%_))
                      (let ((_%$%e275914276078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275913276075%_))))
                        (let ((_%$%tl275916276085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275914276078%_)))
                              (_%$%hd275915276082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275914276078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl275916276085%_))
                              (_%__kont276860276861%_
                               _%$%hd275915276082%_
                               _%$%hd275912276072%_
                               _%$%hd275909276062%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g275881275941%_)))))
                      (let () (declare (not safe)) (_%$%g275881275941%_)))))
              (let () (declare (not safe)) (_%$%g275881275941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g275881275941%_)))
                                          (if (equal? _%$%e275891276139%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl275890276136%_))
                                                  (let ((_%$%e275927275972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl275890276136%_))))
                                                    (let ((_%$%tl275929275979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275927275972%_)))
                                                          (_%$%hd275928275976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275927275972%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl275929275979%_))
                                                          (let ((_%$%e275930275982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl275929275979%_))))
                    (let ((_%$%tl275932275989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e275930275982%_)))
                          (_%$%hd275931275986%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e275930275982%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl275932275989%_))
                          (let ((_%$%e275933275992%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl275932275989%_))))
                            (let ((_%$%tl275935275999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e275933275992%_)))
                                  (_%$%hd275934275996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e275933275992%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl275935275999%_))
                                  (_%__kont276862276863%_
                                   _%$%hd275934275996%_
                                   _%$%hd275931275986%_
                                   _%$%hd275928275976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g275881275941%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g275881275941%_)))))
                  (let () (declare (not safe)) (_%$%g275881275941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g275881275941%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g275881275941%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275881275941%_)))))
                        (let () (declare (not safe)) (_%$%g275881275941%_)))))
                (let () (declare (not safe)) (_%$%g275881275941%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx276187%_)
        (let* ((_%$%g276191276211%_
                (lambda (_%$%g276192276207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276192276207%_))))
               (_%$%g276190276280%_
                (lambda (_%$%g276192276215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276192276215%_))
                      (let ((_%$%e276194276218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276192276215%_))))
                        (let ((_%$%hd276195276222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276194276218%_)))
                              (_%$%tl276196276225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276194276218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276196276225%_))
                              (let ((_g277036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276196276225%_
                                        '0))))
                                (begin
                                  (let ((_g277037_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277036_)
                                               (##values-length _g277036_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277037_ 2)))
                                        (error "Context expects 2 values"
                                               _g277037_)))
                                  (let ((_%$%target276197276228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277036_ 0)))
                                        (_%$%tl276199276231%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277036_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276199276231%_))
                                        (letrec ((_%$%loop276200276234%_
                                                  (lambda (_%$%hd276198276238%_
                                                           _%$%decl276204276241%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276198276238%_))
                                                        (let ((_%$%e276201276243%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276198276238%_))))
                  (let ((_%$%lp-hd276202276247%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276201276243%_)))
                        (_%$%lp-tl276203276250%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276201276243%_))))
                    (_%$%loop276200276234%_
                     _%$%lp-tl276203276250%_
                     (cons _%$%lp-hd276202276247%_ _%$%decl276204276241%_))))
                (let ((_%$%decl276205276253%_
                       (reverse _%$%decl276204276241%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp277038
                               (lambda (_%$%g276271276274%_
                                        _%$%g276272276277%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g276271276274%_)
                                       _%$%g276272276277%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp277038
                           '()
                           _%$%decl276205276253%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276200276234%_
                                           _%$%target276197276228%_
                                           '()))
                                        (_%$%g276191276211%_
                                         _%$%g276192276215%_)))))
                              (_%$%g276191276211%_ _%$%g276192276215%_))))
                      (_%$%g276191276211%_ _%$%g276192276215%_)))))
          (_%$%g276190276280%_ _%$stx276187%_))))))

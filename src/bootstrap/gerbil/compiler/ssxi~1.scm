(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210295_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210302_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210304_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210306_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210308_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210310_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210322_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210324_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210328_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210330_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203713%_)
        (let* ((_%g203717203735%_
                (lambda (_%g203718203731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203718203731%_))))
               (_%g203716203790%_
                (lambda (_%g203718203739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203718203739%_))
                      (let ((_%e203721203742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203718203739%_))))
                        (let ((_%hd203722203746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203721203742%_)))
                              (_%tl203723203749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203721203742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203723203749%_))
                              (let ((_%e203724203752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203723203749%_))))
                                (let ((_%hd203725203756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203724203752%_)))
                                      (_%tl203726203759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203724203752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203726203759%_))
                                      (let ((_%e203727203762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203726203759%_))))
                                        (let ((_%hd203728203766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203727203762%_)))
                                              (_%tl203729203769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203727203762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203729203769%_))
                                              ((lambda (_%L203772%_
                                                        _%L203774%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203774%_))
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
                               (cons _%L203774%_ '()))
                         (cons _%L203772%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203717203735%_
                                                      _%g203718203739%_)))
                                               _%hd203728203766%_
                                               _%hd203725203756%_)
                                              (_%g203717203735%_
                                               _%g203718203739%_))))
                                      (_%g203717203735%_ _%g203718203739%_))))
                              (_%g203717203735%_ _%g203718203739%_))))
                      (_%g203717203735%_ _%g203718203739%_)))))
          (_%g203716203790%_ _%$stx203713%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203794%_)
        (let* ((_%g203798203816%_
                (lambda (_%g203799203812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203799203812%_))))
               (_%g203797203871%_
                (lambda (_%g203799203820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203799203820%_))
                      (let ((_%e203802203823%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203799203820%_))))
                        (let ((_%hd203803203827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203802203823%_)))
                              (_%tl203804203830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203802203823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203804203830%_))
                              (let ((_%e203805203833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203804203830%_))))
                                (let ((_%hd203806203837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203805203833%_)))
                                      (_%tl203807203840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203805203833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203807203840%_))
                                      (let ((_%e203808203843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203807203840%_))))
                                        (let ((_%hd203809203847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203808203843%_)))
                                              (_%tl203810203850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203808203843%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203810203850%_))
                                              ((lambda (_%L203853%_
                                                        _%L203855%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203855%_))
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
                               (cons _%L203855%_ '()))
                         (cons _%L203853%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203798203816%_
                                                      _%g203799203820%_)))
                                               _%hd203809203847%_
                                               _%hd203806203837%_)
                                              (_%g203798203816%_
                                               _%g203799203820%_))))
                                      (_%g203798203816%_ _%g203799203820%_))))
                              (_%g203798203816%_ _%g203799203820%_))))
                      (_%g203798203816%_ _%g203799203820%_)))))
          (_%g203797203871%_ _%$stx203794%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx203875%_)
        (let* ((_%g203879203908%_
                (lambda (_%g203880203904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203880203904%_))))
               (_%g203878204008%_
                (lambda (_%g203880203912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203880203912%_))
                      (let ((_%e203883203915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203880203912%_))))
                        (let ((_%hd203884203919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203883203915%_)))
                              (_%tl203885203922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203883203915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203885203922%_))
                              (let ((_g210273_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203885203922%_
                                        '0))))
                                (begin
                                  (let ((_g210274_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210273_)
                                               (##values-length _g210273_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210274_ 2)))
                                        (error "Context expects 2 values"
                                               _g210274_)))
                                  (let ((_%target203886203925%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210273_ 0)))
                                        (_%tl203888203928%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210273_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203888203928%_))
                                        (letrec ((_%loop203889203931%_
                                                  (lambda (_%hd203887203935%_
                                                           _%type203893203938%_
                                                           _%symbol203894203940%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203887203935%_))
                                                        (let ((_%e203890203943%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203887203935%_))))
                  (let ((_%lp-hd203891203947%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203890203943%_)))
                        (_%lp-tl203892203950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203890203943%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203891203947%_))
                        (let ((_%e203897203953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203891203947%_))))
                          (let ((_%hd203898203957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203897203953%_)))
                                (_%tl203899203960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203897203953%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203899203960%_))
                                (let ((_%e203900203963%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203899203960%_))))
                                  (let ((_%hd203901203967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203900203963%_)))
                                        (_%tl203902203970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203900203963%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203902203970%_))
                                        (_%loop203889203931%_
                                         _%lp-tl203892203950%_
                                         (cons _%hd203901203967%_
                                               _%type203893203938%_)
                                         (cons _%hd203898203957%_
                                               _%symbol203894203940%_))
                                        (_%g203879203908%_
                                         _%g203880203912%_))))
                                (_%g203879203908%_ _%g203880203912%_))))
                        (_%g203879203908%_ _%g203880203912%_))))
                (let ((_%type203895203973%_ (reverse _%type203893203938%_))
                      (_%symbol203896203976%_
                       (reverse _%symbol203894203940%_)))
                  ((lambda (_%L203979%_ _%L203981%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203979%_
                                _%L203981%_))
                             (let ((__tmp210275
                                    (lambda (_%g203996204000%_
                                             _%g203997204003%_
                                             _%g203998204005%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g203997204003%_
                                                        (cons _%g203996204000%_
                                                              '())))
                                            _%g203998204005%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210275
                                '()
                                _%L203979%_
                                _%L203981%_)))))
                   _%type203895203973%_
                   _%symbol203896203976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203889203931%_
                                           _%target203886203925%_
                                           '()
                                           '()))
                                        (_%g203879203908%_
                                         _%g203880203912%_)))))
                              (_%g203879203908%_ _%g203880203912%_))))
                      (_%g203879203908%_ _%g203880203912%_)))))
          (_%g203878204008%_ _%$stx203875%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204013%_)
        (let* ((_%__stx209584209585%_ _%$stx204013%_)
               (_%g204018204060%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209584209585%_)))))
          (let ((_%__kont209587209588%_
                 (lambda (_%L204188%_ _%L204190%_ _%L204191%_ _%L204192%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204192%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204191%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204190%_ '()))
                                           (cons _%L204188%_ '())))))))
                (_%__kont209589209590%_
                 (lambda (_%L204107%_ _%L204109%_ _%L204110%_ _%L204111%_)
                   (cons _%L204111%_
                         (cons _%L204110%_
                               (cons _%L204109%_
                                     (cons _%L204107%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209623209624%_
                   (lambda (_%e204024204138%_
                            _%hd204025204142%_
                            _%tl204026204145%_
                            _%e204027204148%_
                            _%hd204028204152%_
                            _%tl204029204155%_
                            _%e204030204158%_
                            _%hd204031204162%_
                            _%tl204032204165%_
                            _%e204033204168%_
                            _%hd204034204172%_
                            _%tl204035204175%_
                            _%e204036204178%_
                            _%hd204037204182%_
                            _%tl204038204185%_)
                     (let ((_%L204188%_ _%hd204037204182%_)
                           (_%L204190%_ _%hd204034204172%_)
                           (_%L204191%_ _%hd204031204162%_)
                           (_%L204192%_ _%hd204028204152%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204192%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204191%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204190%_)))
                           (_%__kont209587209588%_
                            _%L204188%_
                            _%L204190%_
                            _%L204191%_
                            _%L204192%_)
                           (let ()
                             (declare (not safe))
                             (_%g204018204060%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209584209585%_))
                  (let ((_%e204024204138%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209584209585%_))))
                    (let ((_%tl204026204145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204024204138%_)))
                          (_%hd204025204142%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204024204138%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204026204145%_))
                          (let ((_%e204027204148%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204026204145%_))))
                            (let ((_%tl204029204155%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204027204148%_)))
                                  (_%hd204028204152%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204027204148%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204029204155%_))
                                  (let ((_%e204030204158%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204029204155%_))))
                                    (let ((_%tl204032204165%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204030204158%_)))
                                          (_%hd204031204162%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204030204158%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204032204165%_))
                                          (let ((_%e204033204168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204032204165%_))))
                                            (let ((_%tl204035204175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204033204168%_)))
                                                  (_%hd204034204172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204033204168%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204035204175%_))
                                                  (let ((_%e204036204178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204035204175%_))))
                                                    (let ((_%tl204038204185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204036204178%_)))
                                                          (_%hd204037204182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204036204178%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204038204185%_))
                                                          (_%__match209623209624%_
                                                           _%e204024204138%_
                                                           _%hd204025204142%_
                                                           _%tl204026204145%_
                                                           _%e204027204148%_
                                                           _%hd204028204152%_
                                                           _%tl204029204155%_
                                                           _%e204030204158%_
                                                           _%hd204031204162%_
                                                           _%tl204032204165%_
                                                           _%e204033204168%_
                                                           _%hd204034204172%_
                                                           _%tl204035204175%_
                                                           _%e204036204178%_
                                                           _%hd204037204182%_
                                                           _%tl204038204185%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204018204060%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204035204175%_))
                                                      (_%__kont209589209590%_
                                                       _%hd204034204172%_
                                                       _%hd204031204162%_
                                                       _%hd204028204152%_
                                                       _%hd204025204142%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204018204060%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204018204060%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204018204060%_)))))
                          (let () (declare (not safe)) (_%g204018204060%_)))))
                  (let () (declare (not safe)) (_%g204018204060%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204217%_)
        (let* ((_%g204221204256%_
                (lambda (_%g204222204252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204222204252%_))))
               (_%g204220204375%_
                (lambda (_%g204222204260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204222204260%_))
                      (let ((_%e204226204263%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204222204260%_))))
                        (let ((_%hd204227204267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204226204263%_)))
                              (_%tl204228204270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204226204263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204228204270%_))
                              (let ((_g210276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204228204270%_
                                        '0))))
                                (begin
                                  (let ((_g210277_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210276_)
                                               (##values-length _g210276_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210277_ 2)))
                                        (error "Context expects 2 values"
                                               _g210277_)))
                                  (let ((_%target204229204273%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210276_ 0)))
                                        (_%tl204231204276%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210276_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204231204276%_))
                                        (letrec ((_%loop204232204279%_
                                                  (lambda (_%hd204230204283%_
                                                           _%symbol204236204286%_
                                                           _%method204237204288%_
                                                           _%type-t204238204290%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204230204283%_))
                                                        (let ((_%e204233204293%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204230204283%_))))
                  (let ((_%lp-hd204234204297%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204233204293%_)))
                        (_%lp-tl204235204300%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204233204293%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204234204297%_))
                        (let ((_%e204242204303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204234204297%_))))
                          (let ((_%hd204243204307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204242204303%_)))
                                (_%tl204244204310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204242204303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204244204310%_))
                                (let ((_%e204245204313%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204244204310%_))))
                                  (let ((_%hd204246204317%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204245204313%_)))
                                        (_%tl204247204320%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204245204313%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204247204320%_))
                                        (let ((_%e204248204323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204247204320%_))))
                                          (let ((_%hd204249204327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204248204323%_)))
                                                (_%tl204250204330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204248204323%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204250204330%_))
                                                (_%loop204232204279%_
                                                 _%lp-tl204235204300%_
                                                 (cons _%hd204249204327%_
                                                       _%symbol204236204286%_)
                                                 (cons _%hd204246204317%_
                                                       _%method204237204288%_)
                                                 (cons _%hd204243204307%_
                                                       _%type-t204238204290%_))
                                                (_%g204221204256%_
                                                 _%g204222204260%_))))
                                        (_%g204221204256%_
                                         _%g204222204260%_))))
                                (_%g204221204256%_ _%g204222204260%_))))
                        (_%g204221204256%_ _%g204222204260%_))))
                (let ((_%symbol204239204333%_ (reverse _%symbol204236204286%_))
                      (_%method204240204336%_ (reverse _%method204237204288%_))
                      (_%type-t204241204338%_
                       (reverse _%type-t204238204290%_)))
                  ((lambda (_%L204341%_ _%L204343%_ _%L204344%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204341%_
                                _%L204343%_
                                _%L204344%_))
                             (let ((__tmp210278
                                    (lambda (_%g204360204365%_
                                             _%g204361204368%_
                                             _%g204362204370%_
                                             _%g204363204372%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204362204370%_
                                                        (cons _%g204361204368%_
                                                              (cons _%g204360204365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204363204372%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210278
                                '()
                                _%L204341%_
                                _%L204343%_
                                _%L204344%_)))))
                   _%symbol204239204333%_
                   _%method204240204336%_
                   _%type-t204241204338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204232204279%_
                                           _%target204229204273%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204221204256%_
                                         _%g204222204260%_)))))
                              (_%g204221204256%_ _%g204222204260%_))))
                      (_%g204221204256%_ _%g204222204260%_)))))
          (_%g204220204375%_ _%$stx204217%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204380%_)
        (let* ((_%g204384204417%_
                (lambda (_%g204385204413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204385204413%_))))
               (_%g204383204531%_
                (lambda (_%g204385204421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204385204421%_))
                      (let ((_%e204389204424%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204385204421%_))))
                        (let ((_%hd204390204428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204389204424%_)))
                              (_%tl204391204431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204389204424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204391204431%_))
                              (let ((_%e204392204434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204391204431%_))))
                                (let ((_%hd204393204438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204392204434%_)))
                                      (_%tl204394204441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204392204434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204394204441%_))
                                      (let ((_g210279_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204394204441%_
                                                '0))))
                                        (begin
                                          (let ((_g210280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210279_)
                                                       (##values-length
                                                        _g210279_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210280_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210280_)))
                                          (let ((_%target204395204444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210279_ 0)))
                                                (_%tl204397204447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210279_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204397204447%_))
                                                (letrec ((_%loop204398204450%_
                                                          (lambda (_%hd204396204454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204402204457%_
                           _%method204403204459%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204396204454%_))
                        (let ((_%e204399204462%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204396204454%_))))
                          (let ((_%lp-hd204400204466%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204399204462%_)))
                                (_%lp-tl204401204469%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204399204462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204400204466%_))
                                (let ((_%e204406204472%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204400204466%_))))
                                  (let ((_%hd204407204476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204406204472%_)))
                                        (_%tl204408204479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204406204472%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204408204479%_))
                                        (let ((_%e204409204482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204408204479%_))))
                                          (let ((_%hd204410204486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204409204482%_)))
                                                (_%tl204411204489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204409204482%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204411204489%_))
                                                (_%loop204398204450%_
                                                 _%lp-tl204401204469%_
                                                 (cons _%hd204410204486%_
                                                       _%symbol204402204457%_)
                                                 (cons _%hd204407204476%_
                                                       _%method204403204459%_))
                                                (_%g204384204417%_
                                                 _%g204385204421%_))))
                                        (_%g204384204417%_
                                         _%g204385204421%_))))
                                (_%g204384204417%_ _%g204385204421%_))))
                        (let ((_%symbol204404204492%_
                               (reverse _%symbol204402204457%_))
                              (_%method204405204495%_
                               (reverse _%method204403204459%_)))
                          ((lambda (_%L204498%_ _%L204500%_ _%L204501%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204498%_
                                        _%L204500%_))
                                     (let ((__tmp210281
                                            (lambda (_%g204519204523%_
                                                     _%g204520204526%_
                                                     _%g204521204528%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204501%_
                                                                (cons _%g204520204526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204519204523%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204521204528%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210281
                                        '()
                                        _%L204498%_
                                        _%L204500%_)))))
                           _%symbol204404204492%_
                           _%method204405204495%_
                           _%hd204393204438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204398204450%_
                                                   _%target204395204444%_
                                                   '()
                                                   '()))
                                                (_%g204384204417%_
                                                 _%g204385204421%_)))))
                                      (_%g204384204417%_ _%g204385204421%_))))
                              (_%g204384204417%_ _%g204385204421%_))))
                      (_%g204384204417%_ _%g204385204421%_)))))
          (_%g204383204531%_ _%$stx204380%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204536%_)
        (let* ((_%g204540204554%_
                (lambda (_%g204541204550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204541204550%_))))
               (_%g204539204595%_
                (lambda (_%g204541204558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204541204558%_))
                      (let ((_%e204543204561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204541204558%_))))
                        (let ((_%hd204544204565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204543204561%_)))
                              (_%tl204545204568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204543204561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204545204568%_))
                              (let ((_%e204546204571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204545204568%_))))
                                (let ((_%hd204547204575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204546204571%_)))
                                      (_%tl204548204578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204546204571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204548204578%_))
                                      ((lambda (_%L204581%_)
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
                                                           (cons _%L204581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204547204575%_)
                                      (_%g204540204554%_ _%g204541204558%_))))
                              (_%g204540204554%_ _%g204541204558%_))))
                      (_%g204540204554%_ _%g204541204558%_)))))
          (_%g204539204595%_ _%$stx204536%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204599%_)
        (let* ((_%g204603204657%_
                (lambda (_%g204604204653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204604204653%_))))
               (_%g204602204838%_
                (lambda (_%g204604204661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204604204661%_))
                      (let ((_%e204616204664%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204604204661%_))))
                        (let ((_%hd204617204668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204616204664%_)))
                              (_%tl204618204671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204616204664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204618204671%_))
                              (let ((_%e204619204674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204618204671%_))))
                                (let ((_%hd204620204678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204619204674%_)))
                                      (_%tl204621204681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204619204674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204621204681%_))
                                      (let ((_%e204622204684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204621204681%_))))
                                        (let ((_%hd204623204688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204622204684%_)))
                                              (_%tl204624204691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204622204684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204624204691%_))
                                              (let ((_%e204625204694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204624204691%_))))
                                                (let ((_%hd204626204698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204625204694%_)))
                                                      (_%tl204627204701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204625204694%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204627204701%_))
                                                      (let ((_%e204628204704%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204627204701%_))))
                (let ((_%hd204629204708%_
                       (let () (declare (not safe)) (##car _%e204628204704%_)))
                      (_%tl204630204711%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204628204704%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204630204711%_))
                      (let ((_%e204631204714%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204630204711%_))))
                        (let ((_%hd204632204718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204631204714%_)))
                              (_%tl204633204721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204631204714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204633204721%_))
                              (let ((_%e204634204724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204633204721%_))))
                                (let ((_%hd204635204728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204634204724%_)))
                                      (_%tl204636204731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204634204724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204636204731%_))
                                      (let ((_%e204637204734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204636204731%_))))
                                        (let ((_%hd204638204738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204637204734%_)))
                                              (_%tl204639204741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204637204734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204639204741%_))
                                              (let ((_%e204640204744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204639204741%_))))
                                                (let ((_%hd204641204748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204640204744%_)))
                                                      (_%tl204642204751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204640204744%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204642204751%_))
                                                      (let ((_%e204643204754%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204642204751%_))))
                (let ((_%hd204644204758%_
                       (let () (declare (not safe)) (##car _%e204643204754%_)))
                      (_%tl204645204761%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204643204754%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204645204761%_))
                      (let ((_%e204646204764%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204645204761%_))))
                        (let ((_%hd204647204768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204646204764%_)))
                              (_%tl204648204771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204646204764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204648204771%_))
                              (let ((_%e204649204774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204648204771%_))))
                                (let ((_%hd204650204778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204649204774%_)))
                                      (_%tl204651204781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204649204774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204651204781%_))
                                      ((lambda (_%L204784%_
                                                _%L204786%_
                                                _%L204787%_
                                                _%L204788%_
                                                _%L204789%_
                                                _%L204790%_
                                                _%L204791%_
                                                _%L204792%_
                                                _%L204793%_
                                                _%L204794%_
                                                _%L204795%_)
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
                                                           (cons _%L204795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204794%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204793%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204792%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204791%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204790%_ '()))
                                           (cons _%L204789%_
                                                 (cons _%L204788%_
                                                       (cons _%L204787%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204786%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204784%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204650204778%_
                                       _%hd204647204768%_
                                       _%hd204644204758%_
                                       _%hd204641204748%_
                                       _%hd204638204738%_
                                       _%hd204635204728%_
                                       _%hd204632204718%_
                                       _%hd204629204708%_
                                       _%hd204626204698%_
                                       _%hd204623204688%_
                                       _%hd204620204678%_)
                                      (_%g204603204657%_ _%g204604204661%_))))
                              (_%g204603204657%_ _%g204604204661%_))))
                      (_%g204603204657%_ _%g204604204661%_))))
              (_%g204603204657%_ _%g204604204661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204603204657%_
                                               _%g204604204661%_))))
                                      (_%g204603204657%_ _%g204604204661%_))))
                              (_%g204603204657%_ _%g204604204661%_))))
                      (_%g204603204657%_ _%g204604204661%_))))
              (_%g204603204657%_ _%g204604204661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204603204657%_
                                               _%g204604204661%_))))
                                      (_%g204603204657%_ _%g204604204661%_))))
                              (_%g204603204657%_ _%g204604204661%_))))
                      (_%g204603204657%_ _%g204604204661%_)))))
          (_%g204602204838%_ _%$stx204599%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx204842%_)
        (let* ((_%g204846204860%_
                (lambda (_%g204847204856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204847204856%_))))
               (_%g204845204901%_
                (lambda (_%g204847204864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204847204864%_))
                      (let ((_%e204849204867%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204847204864%_))))
                        (let ((_%hd204850204871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204849204867%_)))
                              (_%tl204851204874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204849204867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204851204874%_))
                              (let ((_%e204852204877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204851204874%_))))
                                (let ((_%hd204853204881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204852204877%_)))
                                      (_%tl204854204884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204852204877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204854204884%_))
                                      ((lambda (_%L204887%_)
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
                                                           (cons _%L204887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204853204881%_)
                                      (_%g204846204860%_ _%g204847204864%_))))
                              (_%g204846204860%_ _%g204847204864%_))))
                      (_%g204846204860%_ _%g204847204864%_)))))
          (_%g204845204901%_ _%$stx204842%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204905%_)
        (let* ((_%g204909204923%_
                (lambda (_%g204910204919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204910204919%_))))
               (_%g204908204964%_
                (lambda (_%g204910204927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204910204927%_))
                      (let ((_%e204912204930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204910204927%_))))
                        (let ((_%hd204913204934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204912204930%_)))
                              (_%tl204914204937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204912204930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204914204937%_))
                              (let ((_%e204915204940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204914204937%_))))
                                (let ((_%hd204916204944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204915204940%_)))
                                      (_%tl204917204947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204915204940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204917204947%_))
                                      ((lambda (_%L204950%_)
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
                                                           (cons _%L204950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204916204944%_)
                                      (_%g204909204923%_ _%g204910204927%_))))
                              (_%g204909204923%_ _%g204910204927%_))))
                      (_%g204909204923%_ _%g204910204927%_)))))
          (_%g204908204964%_ _%$stx204905%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx204968%_)
        (let* ((_%g204972204994%_
                (lambda (_%g204973204990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204973204990%_))))
               (_%g204971205063%_
                (lambda (_%g204973204998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204973204998%_))
                      (let ((_%e204977205001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204973204998%_))))
                        (let ((_%hd204978205005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204977205001%_)))
                              (_%tl204979205008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204977205001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204979205008%_))
                              (let ((_%e204980205011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204979205008%_))))
                                (let ((_%hd204981205015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204980205011%_)))
                                      (_%tl204982205018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204980205011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204982205018%_))
                                      (let ((_%e204983205021%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204982205018%_))))
                                        (let ((_%hd204984205025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204983205021%_)))
                                              (_%tl204985205028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204983205021%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204985205028%_))
                                              (let ((_%e204986205031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204985205028%_))))
                                                (let ((_%hd204987205035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204986205031%_)))
                                                      (_%tl204988205038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204986205031%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204988205038%_))
                                                      ((lambda (_%L205041%_
                                                                _%L205043%_
                                                                _%L205044%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205044%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205043%_ '()))
                                   (cons _%L205041%_ '())))))
               _%hd204987205035%_
               _%hd204984205025%_
               _%hd204981205015%_)
              (_%g204972204994%_ _%g204973204998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204972204994%_
                                               _%g204973204998%_))))
                                      (_%g204972204994%_ _%g204973204998%_))))
                              (_%g204972204994%_ _%g204973204998%_))))
                      (_%g204972204994%_ _%g204973204998%_)))))
          (_%g204971205063%_ _%$stx204968%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205067%_)
        (let* ((_%g205071205093%_
                (lambda (_%g205072205089%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205072205089%_))))
               (_%g205070205162%_
                (lambda (_%g205072205097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205072205097%_))
                      (let ((_%e205076205100%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205072205097%_))))
                        (let ((_%hd205077205104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205076205100%_)))
                              (_%tl205078205107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205076205100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205078205107%_))
                              (let ((_%e205079205110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205078205107%_))))
                                (let ((_%hd205080205114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205079205110%_)))
                                      (_%tl205081205117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205079205110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205081205117%_))
                                      (let ((_%e205082205120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205081205117%_))))
                                        (let ((_%hd205083205124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205082205120%_)))
                                              (_%tl205084205127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205082205120%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205084205127%_))
                                              (let ((_%e205085205130%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205084205127%_))))
                                                (let ((_%hd205086205134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205085205130%_)))
                                                      (_%tl205087205137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205085205130%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205087205137%_))
                                                      ((lambda (_%L205140%_
                                                                _%L205142%_
                                                                _%L205143%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205143%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205142%_ '()))
                                   (cons _%L205140%_ '())))))
               _%hd205086205134%_
               _%hd205083205124%_
               _%hd205080205114%_)
              (_%g205071205093%_ _%g205072205097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205071205093%_
                                               _%g205072205097%_))))
                                      (_%g205071205093%_ _%g205072205097%_))))
                              (_%g205071205093%_ _%g205072205097%_))))
                      (_%g205071205093%_ _%g205072205097%_)))))
          (_%g205070205162%_ _%$stx205067%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205166%_)
        (let* ((_%g205170205184%_
                (lambda (_%g205171205180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205171205180%_))))
               (_%g205169205225%_
                (lambda (_%g205171205188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205171205188%_))
                      (let ((_%e205173205191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205171205188%_))))
                        (let ((_%hd205174205195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205173205191%_)))
                              (_%tl205175205198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205173205191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205175205198%_))
                              (let ((_%e205176205201%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205175205198%_))))
                                (let ((_%hd205177205205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205176205201%_)))
                                      (_%tl205178205208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205176205201%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205178205208%_))
                                      ((lambda (_%L205211%_)
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
                                                           (cons _%L205211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205177205205%_)
                                      (_%g205170205184%_ _%g205171205188%_))))
                              (_%g205170205184%_ _%g205171205188%_))))
                      (_%g205170205184%_ _%g205171205188%_)))))
          (_%g205169205225%_ _%$stx205166%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205229%_)
        (let* ((_%g205233205251%_
                (lambda (_%g205234205247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205234205247%_))))
               (_%g205232205306%_
                (lambda (_%g205234205255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205234205255%_))
                      (let ((_%e205237205258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205234205255%_))))
                        (let ((_%hd205238205262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205237205258%_)))
                              (_%tl205239205265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205237205258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205239205265%_))
                              (let ((_%e205240205268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205239205265%_))))
                                (let ((_%hd205241205272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205240205268%_)))
                                      (_%tl205242205275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205240205268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205242205275%_))
                                      (let ((_%e205243205278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205242205275%_))))
                                        (let ((_%hd205244205282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205243205278%_)))
                                              (_%tl205245205285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205243205278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205245205285%_))
                                              ((lambda (_%L205288%_
                                                        _%L205290%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205290%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205288%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205244205282%_
                                               _%hd205241205272%_)
                                              (_%g205233205251%_
                                               _%g205234205255%_))))
                                      (_%g205233205251%_ _%g205234205255%_))))
                              (_%g205233205251%_ _%g205234205255%_))))
                      (_%g205233205251%_ _%g205234205255%_)))))
          (_%g205232205306%_ _%$stx205229%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205310%_)
        (let* ((_%__stx209652209653%_ _%$stx205310%_)
               (_%g205317205378%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209652209653%_)))))
          (let ((_%__kont209655209656%_
                 (lambda (_%L205616%_ _%L205618%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205618%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205616%_ '()))
                                     '())))))
                (_%__kont209657209658%_
                 (lambda (_%L205555%_ _%L205557%_ _%L205558%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205558%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205557%_ '()))
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
                                 (cons _%L205555%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209659209660%_
                 (lambda (_%L205479%_ _%L205481%_)
                   (cons _%L205481%_ (cons _%L205479%_ (cons '#f '())))))
                (_%__kont209661209662%_
                 (lambda (_%L205429%_ _%L205431%_ _%L205432%_)
                   (cons _%L205432%_
                         (cons _%L205431%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205429%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209652209653%_))
                (let ((_%e205321205586%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209652209653%_))))
                  (let ((_%tl205323205593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205321205586%_)))
                        (_%hd205322205590%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205321205586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205323205593%_))
                        (let ((_%e205324205596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205323205593%_))))
                          (let ((_%tl205326205603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205324205596%_)))
                                (_%hd205325205600%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205324205596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205326205603%_))
                                (let ((_%e205327205606%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205326205603%_))))
                                  (let ((_%tl205329205613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205327205606%_)))
                                        (_%hd205328205610%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205327205606%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205329205613%_))
                                        (_%__kont209655209656%_
                                         _%hd205328205610%_
                                         _%hd205325205600%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205329205613%_))
                                            (let ((_%e205342205531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205329205613%_))))
                                              (let ((_%tl205344205538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205342205531%_)))
                                                    (_%hd205343205535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205342205531%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205343205535%_))
                                                    (let ((_%e205345205541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205343205535%_))))
                                                      (if (equal? _%e205345205541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205344205538%_))
                      (let ((_%e205346205545%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205344205538%_))))
                        (let ((_%tl205348205552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205346205545%_)))
                              (_%hd205347205549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205346205545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205348205552%_))
                              (_%__kont209657209658%_
                               _%hd205347205549%_
                               _%hd205328205610%_
                               _%hd205325205600%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205328205610%_))
                                  (let ((_%e205369205415%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205328205610%_))))
                                    (declare (not safe))
                                    (_%g205317205378%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205317205378%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205328205610%_))
                          (let ((_%e205369205415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205328205610%_))))
                            (if (equal? _%e205369205415%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205344205538%_))
                                    (_%__kont209661209662%_
                                     _%hd205343205535%_
                                     _%hd205325205600%_
                                     _%hd205322205590%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205317205378%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205317205378%_))))
                          (let () (declare (not safe)) (_%g205317205378%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205328205610%_))
                      (let ((_%e205369205415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205328205610%_))))
                        (if (equal? _%e205369205415%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205344205538%_))
                                (_%__kont209661209662%_
                                 _%hd205343205535%_
                                 _%hd205325205600%_
                                 _%hd205322205590%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205317205378%_)))
                            (let () (declare (not safe)) (_%g205317205378%_))))
                      (let () (declare (not safe)) (_%g205317205378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205328205610%_))
                                                        (let ((_%e205369205415%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205328205610%_))))
                  (if (equal? _%e205369205415%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205344205538%_))
                          (_%__kont209661209662%_
                           _%hd205343205535%_
                           _%hd205325205600%_
                           _%hd205322205590%_)
                          (let () (declare (not safe)) (_%g205317205378%_)))
                      (let () (declare (not safe)) (_%g205317205378%_))))
                (let () (declare (not safe)) (_%g205317205378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205328205610%_))
                                                (let ((_%e205369205415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205328205610%_))))
                                                  (declare (not safe))
                                                  (_%g205317205378%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205317205378%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205326205603%_))
                                    (_%__kont209659209660%_
                                     _%hd205325205600%_
                                     _%hd205322205590%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205317205378%_))))))
                        (let () (declare (not safe)) (_%g205317205378%_)))))
                (let () (declare (not safe)) (_%g205317205378%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205637%_)
        (let* ((_%g205641205670%_
                (lambda (_%g205642205666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205642205666%_))))
               (_%g205640205779%_
                (lambda (_%g205642205674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205642205674%_))
                      (let ((_%e205644205677%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205642205674%_))))
                        (let ((_%hd205645205681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205644205677%_)))
                              (_%tl205646205684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205644205677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205646205684%_))
                              (let ((_g210282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205646205684%_
                                        '0))))
                                (begin
                                  (let ((_g210283_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210282_)
                                               (##values-length _g210282_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210283_ 2)))
                                        (error "Context expects 2 values"
                                               _g210283_)))
                                  (let ((_%target205647205687%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210282_ 0)))
                                        (_%tl205649205690%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210282_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205649205690%_))
                                        (letrec ((_%loop205650205693%_
                                                  (lambda (_%hd205648205697%_
                                                           _%clause205654205700%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205648205697%_))
                                                        (let ((_%e205651205703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205648205697%_))))
                  (let ((_%lp-hd205652205707%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205651205703%_)))
                        (_%lp-tl205653205710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205651205703%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205652205707%_))
                        (let ((_g210284_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205652205707%_
                                  '0))))
                          (begin
                            (let ((_g210285_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210284_)
                                         (##values-length _g210284_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210285_ 2)))
                                  (error "Context expects 2 values"
                                         _g210285_)))
                            (let ((_%target205656205713%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210284_ 0)))
                                  (_%tl205658205716%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210284_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205658205716%_))
                                  (letrec ((_%loop205659205719%_
                                            (lambda (_%hd205657205723%_
                                                     _%clause205663205726%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205657205723%_))
                                                  (let ((_%e205660205729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205657205723%_))))
                                                    (let ((_%lp-hd205661205733%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205660205729%_)))
                                                          (_%lp-tl205662205736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205660205729%_))))
                                                      (_%loop205659205719%_
                                                       _%lp-tl205662205736%_
                                                       (cons _%lp-hd205661205733%_
                                                             _%clause205663205726%_))))
                                                  (let ((_%clause205664205739%_
                                                         (reverse _%clause205663205726%_)))
                                                    (_%loop205650205693%_
                                                     _%lp-tl205653205710%_
                                                     (cons _%clause205664205739%_
                                                           _%clause205654205700%_)))))))
                                    (_%loop205659205719%_
                                     _%target205656205713%_
                                     '()))
                                  (_%g205641205670%_ _%g205642205674%_)))))
                        (_%g205641205670%_ _%g205642205674%_))))
                (let ((_%clause205655205743%_
                       (reverse _%clause205654205700%_)))
                  ((lambda (_%L205747%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210286
                                              (lambda (_%g205762205767%_
                                                       _%g205763205770%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205764205773%_ _%g205765205776%_)
                             (cons _%g205764205773%_ _%g205765205776%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210287 '() _%g205762205767%_)))
              _%g205763205770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210286
                                          '()
                                          _%L205747%_)))
                                 '())))
                   _%clause205655205743%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205650205693%_
                                           _%target205647205687%_
                                           '()))
                                        (_%g205641205670%_
                                         _%g205642205674%_)))))
                              (_%g205641205670%_ _%g205642205674%_))))
                      (_%g205641205670%_ _%g205642205674%_)))))
          (_%g205640205779%_ _%$stx205637%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205785%_)
        (let* ((_%g205789205807%_
                (lambda (_%g205790205803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205790205803%_))))
               (_%g205788205862%_
                (lambda (_%g205790205811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205790205811%_))
                      (let ((_%e205793205814%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205790205811%_))))
                        (let ((_%hd205794205818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205793205814%_)))
                              (_%tl205795205821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205793205814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205795205821%_))
                              (let ((_%e205796205824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205795205821%_))))
                                (let ((_%hd205797205828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205796205824%_)))
                                      (_%tl205798205831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205796205824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205798205831%_))
                                      (let ((_%e205799205834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205798205831%_))))
                                        (let ((_%hd205800205838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205799205834%_)))
                                              (_%tl205801205841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205799205834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205801205841%_))
                                              ((lambda (_%L205844%_
                                                        _%L205846%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205846%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205844%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205800205838%_
                                               _%hd205797205828%_)
                                              (_%g205789205807%_
                                               _%g205790205811%_))))
                                      (_%g205789205807%_ _%g205790205811%_))))
                              (_%g205789205807%_ _%g205790205811%_))))
                      (_%g205789205807%_ _%g205790205811%_)))))
          (_%g205788205862%_ _%$stx205785%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx205866%_)
        (let* ((_%g205870205888%_
                (lambda (_%g205871205884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205871205884%_))))
               (_%g205869205943%_
                (lambda (_%g205871205892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205871205892%_))
                      (let ((_%e205874205895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205871205892%_))))
                        (let ((_%hd205875205899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205874205895%_)))
                              (_%tl205876205902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205874205895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205876205902%_))
                              (let ((_%e205877205905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205876205902%_))))
                                (let ((_%hd205878205909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205877205905%_)))
                                      (_%tl205879205912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205877205905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205879205912%_))
                                      (let ((_%e205880205915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205879205912%_))))
                                        (let ((_%hd205881205919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205880205915%_)))
                                              (_%tl205882205922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205880205915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205882205922%_))
                                              ((lambda (_%L205925%_
                                                        _%L205927%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205927%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205925%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205881205919%_
                                               _%hd205878205909%_)
                                              (_%g205870205888%_
                                               _%g205871205892%_))))
                                      (_%g205870205888%_ _%g205871205892%_))))
                              (_%g205870205888%_ _%g205871205892%_))))
                      (_%g205870205888%_ _%g205871205892%_)))))
          (_%g205869205943%_ _%$stx205866%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx205947%_)
        (let* ((_%g205951205980%_
                (lambda (_%g205952205976%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205952205976%_))))
               (_%g205950206080%_
                (lambda (_%g205952205984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205952205984%_))
                      (let ((_%e205955205987%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205952205984%_))))
                        (let ((_%hd205956205991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205955205987%_)))
                              (_%tl205957205994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205955205987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205957205994%_))
                              (let ((_g210288_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205957205994%_
                                        '0))))
                                (begin
                                  (let ((_g210289_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210288_)
                                               (##values-length _g210288_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210289_ 2)))
                                        (error "Context expects 2 values"
                                               _g210289_)))
                                  (let ((_%target205958205997%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210288_ 0)))
                                        (_%tl205960206000%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210288_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205960206000%_))
                                        (letrec ((_%loop205961206003%_
                                                  (lambda (_%hd205959206007%_
                                                           _%rule205965206010%_
                                                           _%proc205966206012%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205959206007%_))
                                                        (let ((_%e205962206015%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205959206007%_))))
                  (let ((_%lp-hd205963206019%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205962206015%_)))
                        (_%lp-tl205964206022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205962206015%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd205963206019%_))
                        (let ((_%e205969206025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd205963206019%_))))
                          (let ((_%hd205970206029%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205969206025%_)))
                                (_%tl205971206032%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205969206025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205971206032%_))
                                (let ((_%e205972206035%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205971206032%_))))
                                  (let ((_%hd205973206039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205972206035%_)))
                                        (_%tl205974206042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205972206035%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205974206042%_))
                                        (_%loop205961206003%_
                                         _%lp-tl205964206022%_
                                         (cons _%hd205973206039%_
                                               _%rule205965206010%_)
                                         (cons _%hd205970206029%_
                                               _%proc205966206012%_))
                                        (_%g205951205980%_
                                         _%g205952205984%_))))
                                (_%g205951205980%_ _%g205952205984%_))))
                        (_%g205951205980%_ _%g205952205984%_))))
                (let ((_%rule205967206045%_ (reverse _%rule205965206010%_))
                      (_%proc205968206048%_ (reverse _%proc205966206012%_)))
                  ((lambda (_%L206051%_ _%L206053%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206051%_
                                _%L206053%_))
                             (let ((__tmp210290
                                    (lambda (_%g206068206072%_
                                             _%g206069206075%_
                                             _%g206070206077%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206069206075%_
                                                        (cons _%g206068206072%_
                                                              '())))
                                            _%g206070206077%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210290
                                '()
                                _%L206051%_
                                _%L206053%_)))))
                   _%rule205967206045%_
                   _%proc205968206048%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205961206003%_
                                           _%target205958205997%_
                                           '()
                                           '()))
                                        (_%g205951205980%_
                                         _%g205952205984%_)))))
                              (_%g205951205980%_ _%g205952205984%_))))
                      (_%g205951205980%_ _%g205952205984%_)))))
          (_%g205950206080%_ _%$stx205947%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206085%_)
        (let* ((_%g206089206107%_
                (lambda (_%g206090206103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206090206103%_))))
               (_%g206088206162%_
                (lambda (_%g206090206111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206090206111%_))
                      (let ((_%e206093206114%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206090206111%_))))
                        (let ((_%hd206094206118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206093206114%_)))
                              (_%tl206095206121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206093206114%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206095206121%_))
                              (let ((_%e206096206124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206095206121%_))))
                                (let ((_%hd206097206128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206096206124%_)))
                                      (_%tl206098206131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206096206124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206098206131%_))
                                      (let ((_%e206099206134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206098206131%_))))
                                        (let ((_%hd206100206138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206099206134%_)))
                                              (_%tl206101206141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206099206134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206101206141%_))
                                              ((lambda (_%L206144%_
                                                        _%L206146%_)
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
                                                   (cons _%L206146%_ '()))
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
                 (cons _%L206144%_ '())))
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
                                   (cons _%L206146%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206100206138%_
                                               _%hd206097206128%_)
                                              (_%g206089206107%_
                                               _%g206090206111%_))))
                                      (_%g206089206107%_ _%g206090206111%_))))
                              (_%g206089206107%_ _%g206090206111%_))))
                      (_%g206089206107%_ _%g206090206111%_)))))
          (_%g206088206162%_ _%$stx206085%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206166%_)
        (let* ((_%__stx209770209771%_ _%$stx206166%_)
               (_%g206171206196%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209770209771%_)))))
          (let ((_%__kont209773209774%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209775209776%_
                 (lambda (_%L206243%_ _%L206245%_ _%L206246%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206246%_ (cons _%L206245%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206243%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209770209771%_))
                (let ((_%e206173206272%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209770209771%_))))
                  (let ((_%tl206175206279%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206173206272%_)))
                        (_%hd206174206276%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206173206272%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206175206279%_))
                        (_%__kont209773209774%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206175206279%_))
                            (let ((_%e206182206213%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206175206279%_))))
                              (let ((_%tl206184206220%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206182206213%_)))
                                    (_%hd206183206217%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206182206213%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206183206217%_))
                                    (let ((_%e206185206223%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206183206217%_))))
                                      (let ((_%tl206187206230%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206185206223%_)))
                                            (_%hd206186206227%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206185206223%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206187206230%_))
                                            (let ((_%e206188206233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206187206230%_))))
                                              (let ((_%tl206190206240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206188206233%_)))
                                                    (_%hd206189206237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206188206233%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206190206240%_))
                                                    (_%__kont209775209776%_
                                                     _%tl206184206220%_
                                                     _%hd206189206237%_
                                                     _%hd206186206227%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206171206196%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206171206196%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206171206196%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206171206196%_))))))
                (let () (declare (not safe)) (_%g206171206196%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206290%_)
        (let* ((_%__stx209814209815%_ _%$stx206290%_)
               (_%g206295206326%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209814209815%_)))))
          (let ((_%__kont209817209818%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209819209820%_
                 (lambda (_%L206393%_ _%L206395%_ _%L206396%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206396%_
                                           (let ((__tmp210291
                                                  (lambda (_%g206416206419%_
                                                           _%g206417206422%_)
                                                    (cons _%g206416206419%_
                                                          _%g206417206422%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210291
                                              '()
                                              _%L206395%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206393%_)
                                     '()))))))
            (let ((_%__match209857209858%_
                   (lambda (_%e206303206333%_
                            _%hd206304206337%_
                            _%tl206305206340%_
                            _%e206306206343%_
                            _%hd206307206347%_
                            _%tl206308206350%_
                            _%e206309206353%_
                            _%hd206310206357%_
                            _%tl206311206360%_
                            _%__splice209821209822%_
                            _%target206312206363%_
                            _%tl206314206366%_)
                     (letrec ((_%loop206315206369%_
                               (lambda (_%hd206313206373%_ _%sig206319206376%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206313206373%_))
                                     (let ((_%e206316206379%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206313206373%_))))
                                       (let ((_%lp-tl206318206386%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206316206379%_)))
                                             (_%lp-hd206317206383%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206316206379%_))))
                                         (_%loop206315206369%_
                                          _%lp-tl206318206386%_
                                          (cons _%lp-hd206317206383%_
                                                _%sig206319206376%_))))
                                     (let ((_%sig206320206389%_
                                            (reverse _%sig206319206376%_)))
                                       (_%__kont209819209820%_
                                        _%tl206308206350%_
                                        _%sig206320206389%_
                                        _%hd206310206357%_))))))
                       (_%loop206315206369%_ _%target206312206363%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209814209815%_))
                  (let ((_%e206297206432%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209814209815%_))))
                    (let ((_%tl206299206439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206297206432%_)))
                          (_%hd206298206436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206297206432%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206299206439%_))
                          (_%__kont209817209818%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206299206439%_))
                              (let ((_%e206306206343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206299206439%_))))
                                (let ((_%tl206308206350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206306206343%_)))
                                      (_%hd206307206347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206306206343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206307206347%_))
                                      (let ((_%e206309206353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206307206347%_))))
                                        (let ((_%tl206311206360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206309206353%_)))
                                              (_%hd206310206357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206309206353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206311206360%_))
                                              (let ((_%__splice209821209822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206311206360%_
                                                        '0))))
                                                (let ((_%tl206314206366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209821209822%_
                                                          '1)))
                                                      (_%target206312206363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209821209822%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206314206366%_))
                                                      (_%__match209857209858%_
                                                       _%e206297206432%_
                                                       _%hd206298206436%_
                                                       _%tl206299206439%_
                                                       _%e206306206343%_
                                                       _%hd206307206347%_
                                                       _%tl206308206350%_
                                                       _%e206309206353%_
                                                       _%hd206310206357%_
                                                       _%tl206311206360%_
                                                       _%__splice209821209822%_
                                                       _%target206312206363%_
                                                       _%tl206314206366%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206295206326%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206295206326%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206295206326%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206295206326%_))))))
                  (let () (declare (not safe)) (_%g206295206326%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206451%_)
        (let* ((_%__stx209860209861%_ _%$stx206451%_)
               (_%g206456206503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209860209861%_)))))
          (let ((_%__kont209863209864%_
                 (lambda (_%L206665%_ _%L206667%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206667%_
                               (let ((__tmp210292
                                      (lambda (_%g206687206690%_
                                               _%g206688206693%_)
                                        (cons _%g206687206690%_
                                              _%g206688206693%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210292 '() _%L206665%_))))))
                (_%__kont209867209868%_
                 (lambda (_%L206560%_ _%L206562%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206562%_
                               (let ((__tmp210293
                                      (lambda (_%g206579206582%_
                                               _%g206580206585%_)
                                        (cons _%g206579206582%_
                                              _%g206580206585%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210293 '() _%L206560%_)))))))
            (let* ((_%__match209927209928%_
                    (lambda (_%e206483206510%_
                             _%hd206484206514%_
                             _%tl206485206517%_
                             _%e206486206520%_
                             _%hd206487206524%_
                             _%tl206488206527%_
                             _%__splice209869209870%_
                             _%target206489206530%_
                             _%tl206491206533%_)
                      (letrec ((_%loop206492206536%_
                                (lambda (_%hd206490206540%_
                                         _%sig206496206543%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206490206540%_))
                                      (let ((_%e206493206546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206490206540%_))))
                                        (let ((_%lp-tl206495206553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206493206546%_)))
                                              (_%lp-hd206494206550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206493206546%_))))
                                          (_%loop206492206536%_
                                           _%lp-tl206495206553%_
                                           (cons _%lp-hd206494206550%_
                                                 _%sig206496206543%_))))
                                      (let ((_%sig206497206556%_
                                             (reverse _%sig206496206543%_)))
                                        (_%__kont209867209868%_
                                         _%sig206497206556%_
                                         _%hd206487206524%_))))))
                        (_%loop206492206536%_ _%target206489206530%_ '()))))
                   (_%__match209919209920%_
                    (lambda (_%e206483206510%_
                             _%hd206484206514%_
                             _%tl206485206517%_
                             _%e206486206520%_
                             _%hd206487206524%_
                             _%tl206488206527%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206488206527%_))
                          (let ((_%__splice209869209870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl206488206527%_
                                    '0))))
                            (let ((_%tl206491206533%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209869209870%_
                                      '1)))
                                  (_%target206489206530%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209869209870%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206491206533%_))
                                  (_%__match209927209928%_
                                   _%e206483206510%_
                                   _%hd206484206514%_
                                   _%tl206485206517%_
                                   _%e206486206520%_
                                   _%hd206487206524%_
                                   _%tl206488206527%_
                                   _%__splice209869209870%_
                                   _%target206489206530%_
                                   _%tl206491206533%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206456206503%_)))))
                          (let () (declare (not safe)) (_%g206456206503%_)))))
                   (_%__match209907209908%_
                    (lambda (_%e206460206595%_
                             _%hd206461206599%_
                             _%tl206462206602%_
                             _%e206463206605%_
                             _%hd206464206609%_
                             _%tl206465206612%_
                             _%e206466206615%_
                             _%hd206467206619%_
                             _%tl206468206622%_
                             _%e206469206625%_
                             _%hd206470206629%_
                             _%tl206471206632%_
                             _%__splice209865209866%_
                             _%target206472206635%_
                             _%tl206474206638%_)
                      (letrec ((_%loop206475206641%_
                                (lambda (_%hd206473206645%_
                                         _%sig206479206648%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206473206645%_))
                                      (let ((_%e206476206651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206473206645%_))))
                                        (let ((_%lp-tl206478206658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206476206651%_)))
                                              (_%lp-hd206477206655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206476206651%_))))
                                          (_%loop206475206641%_
                                           _%lp-tl206478206658%_
                                           (cons _%lp-hd206477206655%_
                                                 _%sig206479206648%_))))
                                      (let ((_%sig206480206661%_
                                             (reverse _%sig206479206648%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206468206622%_))
                                            (_%__kont209863209864%_
                                             _%sig206480206661%_
                                             _%hd206464206609%_)
                                            (_%__match209919209920%_
                                             _%e206460206595%_
                                             _%hd206461206599%_
                                             _%tl206462206602%_
                                             _%e206463206605%_
                                             _%hd206464206609%_
                                             _%tl206465206612%_)))))))
                        (_%loop206475206641%_ _%target206472206635%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209860209861%_))
                  (let ((_%e206460206595%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209860209861%_))))
                    (let ((_%tl206462206602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206460206595%_)))
                          (_%hd206461206599%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206460206595%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206462206602%_))
                          (let ((_%e206463206605%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206462206602%_))))
                            (let ((_%tl206465206612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206463206605%_)))
                                  (_%hd206464206609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206463206605%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206465206612%_))
                                  (let ((_%e206466206615%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206465206612%_))))
                                    (let ((_%tl206468206622%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206466206615%_)))
                                          (_%hd206467206619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206466206615%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206467206619%_))
                                          (let ((_%e206469206625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206467206619%_))))
                                            (let ((_%tl206471206632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206469206625%_)))
                                                  (_%hd206470206629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206469206625%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206470206629%_))
                                                  (if (let ((__tmp210294
                                                             |gxc[1]#_g210295_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210294
                                                         _%hd206470206629%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206471206632%_))
                                                          (let ((_%__splice209865209866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206471206632%_ '0))))
                    (let ((_%tl206474206638%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209865209866%_ '1)))
                          (_%target206472206635%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209865209866%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206474206638%_))
                          (_%__match209907209908%_
                           _%e206460206595%_
                           _%hd206461206599%_
                           _%tl206462206602%_
                           _%e206463206605%_
                           _%hd206464206609%_
                           _%tl206465206612%_
                           _%e206466206615%_
                           _%hd206467206619%_
                           _%tl206468206622%_
                           _%e206469206625%_
                           _%hd206470206629%_
                           _%tl206471206632%_
                           _%__splice209865209866%_
                           _%target206472206635%_
                           _%tl206474206638%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206465206612%_))
                              (let ((_%__splice209869209870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206465206612%_
                                        '0))))
                                (let ((_%tl206491206533%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209869209870%_
                                          '1)))
                                      (_%target206489206530%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209869209870%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206491206533%_))
                                      (_%__match209927209928%_
                                       _%e206460206595%_
                                       _%hd206461206599%_
                                       _%tl206462206602%_
                                       _%e206463206605%_
                                       _%hd206464206609%_
                                       _%tl206465206612%_
                                       _%__splice209869209870%_
                                       _%target206489206530%_
                                       _%tl206491206533%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206456206503%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206456206503%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206465206612%_))
                      (let ((_%__splice209869209870%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl206465206612%_
                                '0))))
                        (let ((_%tl206491206533%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209869209870%_ '1)))
                              (_%target206489206530%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209869209870%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206491206533%_))
                              (_%__match209927209928%_
                               _%e206460206595%_
                               _%hd206461206599%_
                               _%tl206462206602%_
                               _%e206463206605%_
                               _%hd206464206609%_
                               _%tl206465206612%_
                               _%__splice209869209870%_
                               _%target206489206530%_
                               _%tl206491206533%_)
                              (let ()
                                (declare (not safe))
                                (_%g206456206503%_)))))
                      (let () (declare (not safe)) (_%g206456206503%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206465206612%_))
                  (let ((_%__splice209869209870%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206465206612%_ '0))))
                    (let ((_%tl206491206533%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209869209870%_ '1)))
                          (_%target206489206530%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209869209870%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206491206533%_))
                          (_%__match209927209928%_
                           _%e206460206595%_
                           _%hd206461206599%_
                           _%tl206462206602%_
                           _%e206463206605%_
                           _%hd206464206609%_
                           _%tl206465206612%_
                           _%__splice209869209870%_
                           _%target206489206530%_
                           _%tl206491206533%_)
                          (let () (declare (not safe)) (_%g206456206503%_)))))
                  (let () (declare (not safe)) (_%g206456206503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206465206612%_))
                                                      (let ((_%__splice209869209870%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl206465206612%_ '0))))
                (let ((_%tl206491206533%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209869209870%_ '1)))
                      (_%target206489206530%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209869209870%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206491206533%_))
                      (_%__match209927209928%_
                       _%e206460206595%_
                       _%hd206461206599%_
                       _%tl206462206602%_
                       _%e206463206605%_
                       _%hd206464206609%_
                       _%tl206465206612%_
                       _%__splice209869209870%_
                       _%target206489206530%_
                       _%tl206491206533%_)
                      (let () (declare (not safe)) (_%g206456206503%_)))))
              (let () (declare (not safe)) (_%g206456206503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206465206612%_))
                                              (let ((_%__splice209869209870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206465206612%_
                                                        '0))))
                                                (let ((_%tl206491206533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209869209870%_
                                                          '1)))
                                                      (_%target206489206530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209869209870%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206491206533%_))
                                                      (_%__match209927209928%_
                                                       _%e206460206595%_
                                                       _%hd206461206599%_
                                                       _%tl206462206602%_
                                                       _%e206463206605%_
                                                       _%hd206464206609%_
                                                       _%tl206465206612%_
                                                       _%__splice209869209870%_
                                                       _%target206489206530%_
                                                       _%tl206491206533%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206456206503%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206456206503%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206465206612%_))
                                      (let ((_%__splice209869209870%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206465206612%_
                                                '0))))
                                        (let ((_%tl206491206533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209869209870%_
                                                  '1)))
                                              (_%target206489206530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209869209870%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206491206533%_))
                                              (_%__match209927209928%_
                                               _%e206460206595%_
                                               _%hd206461206599%_
                                               _%tl206462206602%_
                                               _%e206463206605%_
                                               _%hd206464206609%_
                                               _%tl206465206612%_
                                               _%__splice209869209870%_
                                               _%target206489206530%_
                                               _%tl206491206533%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206456206503%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206456206503%_))))))
                          (let () (declare (not safe)) (_%g206456206503%_)))))
                  (let () (declare (not safe)) (_%g206456206503%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx207850%_ _%id207852%_)
        (let ((_%proc207856%_
               (let ((__tmp210296
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207852%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210296))))
          (if (procedure? _%proc207856%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx207850%_
                 _%id207852%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx207841%_ _%id207843%_)
        (let ((_%klass207847%_
               (let ((__tmp210297
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207843%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210297))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass207847%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx207841%_
                 _%id207843%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207091%_ _%proc207093%_ _%sig207094%_)
        (letrec ((_%signature-arity207096%_
                  (lambda (_%args207773%_)
                    (let _%loop207776%_ ((_%rest207779%_ _%args207773%_)
                                         (_%count207781%_ '0))
                      (let* ((_%rest207782207793%_ _%rest207779%_)
                             (_%E207786207799%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207782207793%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207789207830%_
                               (lambda (_%rest207827%_)
                                 (_%loop207776%_
                                  _%rest207827%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207781%_ '1)))))
                              (_%K207788207819%_ (lambda () _%count207781%_))
                              (_%K207787207807%_
                               (lambda () (cons _%count207781%_ '()))))
                          (let ((_%try-match207784207823%_
                                 (lambda ()
                                   (if (null? _%rest207782207793%_)
                                       (_%K207788207819%_)
                                       (_%K207787207807%_)))))
                            (if (pair? _%rest207782207793%_)
                                (let* ((_%tl207791207834%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207782207793%_)))
                                       (_%rest207838%_ _%tl207791207834%_))
                                  (_%K207789207830%_ _%rest207838%_))
                                (_%try-match207784207823%_))))))))
                 (_%make-signature207098%_
                  (lambda (_%args207655%_
                           _%return207657%_
                           _%effect207658%_
                           _%unchecked207659%_)
                    (let ((__tmp210298
                           (lambda (_%g207660207662%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207091%_
                              _%g207660207662%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210298 _%args207655%_))
                    (|gxc[1]#verify-class!| _%ctx207091%_ _%return207657%_)
                    (if _%unchecked207659%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207091%_
                         _%unchecked207659%_)
                        '#!void)
                    (let ((_%arity207666%_
                           (_%signature-arity207096%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207655%_)))))
                      (if _%effect207658%_
                          (let ((_%effect207669%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207658%_))))
                            (if (and (list? _%effect207669%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207669%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207091%_
                                   _%proc207093%_
                                   _%effect207669%_))))
                          '#!void)
                      (cons _%arity207666%_
                            (cons (let* ((_%g207672207695%_
                                          (lambda (_%g207673207691%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207673207691%_))))
                                         (_%g207671207769%_
                                          (lambda (_%g207673207699%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207673207699%_))
                                                (let ((_%e207678207702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207673207699%_))))
                                                  (let ((_%hd207679207706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207678207702%_)))
                                                        (_%tl207680207709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207678207702%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207680207709%_))
                                                        (let ((_%e207681207712%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207680207709%_))))
                  (let ((_%hd207682207716%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207681207712%_)))
                        (_%tl207683207719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207681207712%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207683207719%_))
                        (let ((_%e207684207722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207683207719%_))))
                          (let ((_%hd207685207726%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207684207722%_)))
                                (_%tl207686207729%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207684207722%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207686207729%_))
                                (let ((_%e207687207732%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207686207729%_))))
                                  (let ((_%hd207688207736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207687207732%_)))
                                        (_%tl207689207739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207687207732%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207689207739%_))
                                        ((lambda (_%L207742%_
                                                  _%L207744%_
                                                  _%L207745%_
                                                  _%L207746%_)
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
                           (cons _%L207746%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207745%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207744%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207742%_ '()))
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
                                         _%hd207688207736%_
                                         _%hd207685207726%_
                                         _%hd207682207716%_
                                         _%hd207679207706%_)
                                        (_%g207672207695%_
                                         _%g207673207699%_))))
                                (_%g207672207695%_ _%g207673207699%_))))
                        (_%g207672207695%_ _%g207673207699%_))))
                (_%g207672207695%_ _%g207673207699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207672207695%_
                                                 _%g207673207699%_)))))
                                    (_%g207671207769%_
                                     (list _%args207655%_
                                           _%return207657%_
                                           _%effect207658%_
                                           _%unchecked207659%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207091%_ _%proc207093%_)
          (let* ((_%__stx209938209939%_ _%sig207094%_)
                 (_%g207105207208%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209938209939%_)))))
            (let ((_%__kont209941209942%_
                   (lambda (_%L207636%_ _%L207638%_)
                     (_%make-signature207098%_
                      _%L207638%_
                      _%L207636%_
                      '#f
                      '#f)))
                  (_%__kont209943209944%_
                   (lambda (_%L207587%_ _%L207589%_ _%L207590%_)
                     (_%make-signature207098%_
                      _%L207590%_
                      _%L207589%_
                      _%L207587%_
                      '#f)))
                  (_%__kont209945209946%_
                   (lambda (_%L207511%_ _%L207513%_ _%L207514%_)
                     (_%make-signature207098%_
                      _%L207514%_
                      _%L207513%_
                      _%L207511%_
                      (let ((__tmp210299
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207093%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210299)))))
                  (_%__kont209947209948%_
                   (lambda (_%L207417%_ _%L207419%_ _%L207420%_ _%L207421%_)
                     (_%make-signature207098%_
                      _%L207421%_
                      _%L207420%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207417%_)))))
                  (_%__kont209949209950%_
                   (lambda (_%L207324%_ _%L207326%_)
                     (_%make-signature207098%_
                      _%L207326%_
                      _%L207324%_
                      '#f
                      (let ((__tmp210300
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207093%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210300)))))
                  (_%__kont209951209952%_
                   (lambda (_%L207259%_ _%L207261%_ _%L207262%_)
                     (_%make-signature207098%_
                      _%L207262%_
                      _%L207261%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207259%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209938209939%_))
                  (let ((_%e207109207616%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209938209939%_))))
                    (let ((_%tl207111207623%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207109207616%_)))
                          (_%hd207110207620%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207109207616%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207111207623%_))
                          (let ((_%e207112207626%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207111207623%_))))
                            (let ((_%tl207114207633%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207112207626%_)))
                                  (_%hd207113207630%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207112207626%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207114207633%_))
                                  (_%__kont209941209942%_
                                   _%hd207113207630%_
                                   _%hd207110207620%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207114207633%_))
                                      (let ((_%e207124207563%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207114207633%_))))
                                        (let ((_%tl207126207570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207124207563%_)))
                                              (_%hd207125207567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207124207563%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207125207567%_))
                                              (let ((_%e207127207573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207125207567%_))))
                                                (if (equal? _%e207127207573%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207126207570%_))
                                                        (let ((_%e207128207577%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207126207570%_))))
                  (let ((_%tl207130207584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207128207577%_)))
                        (_%hd207129207581%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207128207577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207130207584%_))
                        (_%__kont209943209944%_
                         _%hd207129207581%_
                         _%hd207113207630%_
                         _%hd207110207620%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207130207584%_))
                            (let ((_%e207147207497%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207130207584%_))))
                              (let ((_%tl207149207504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207147207497%_)))
                                    (_%hd207148207501%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207147207497%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207148207501%_))
                                    (let ((_%e207150207507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207148207501%_))))
                                      (if (equal? _%e207150207507%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207149207504%_))
                                              (_%__kont209945209946%_
                                               _%hd207129207581%_
                                               _%hd207113207630%_
                                               _%hd207110207620%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207149207504%_))
                                                  (let ((_%e207172207407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207149207504%_))))
                                                    (let ((_%tl207174207414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207172207407%_)))
                                                          (_%hd207173207411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207172207407%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207174207414%_))
                                                          (_%__kont209947209948%_
                                                           _%hd207173207411%_
                                                           _%hd207129207581%_
                                                           _%hd207113207630%_
                                                           _%hd207110207620%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207105207208%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207105207208%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207105207208%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207105207208%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207105207208%_))))))
                (let () (declare (not safe)) (_%g207105207208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207127207573%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207126207570%_))
                                                            (_%__kont209949209950%_
                                                             _%hd207113207630%_
                                                             _%hd207110207620%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207126207570%_))
                        (let ((_%e207200207249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207126207570%_))))
                          (let ((_%tl207202207256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207200207249%_)))
                                (_%hd207201207253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207200207249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207202207256%_))
                                (_%__kont209951209952%_
                                 _%hd207201207253%_
                                 _%hd207113207630%_
                                 _%hd207110207620%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207105207208%_)))))
                        (let () (declare (not safe)) (_%g207105207208%_))))
                (let () (declare (not safe)) (_%g207105207208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207105207208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207105207208%_))))))
                          (let () (declare (not safe)) (_%g207105207208%_)))))
                  (let () (declare (not safe)) (_%g207105207208%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206702%_)
        (let* ((_%g206705206785%_
                (lambda (_%g206706206781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206706206781%_))))
               (_%g206704207087%_
                (lambda (_%g206706206789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206706206789%_))
                      (let ((_%e206712206792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206706206789%_))))
                        (let ((_%hd206713206796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206712206792%_)))
                              (_%tl206714206799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206712206792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206714206799%_))
                              (let ((_%e206715206802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206714206799%_))))
                                (let ((_%hd206716206806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206715206802%_)))
                                      (_%tl206717206809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206715206802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206716206806%_))
                                      (let ((_%e206718206812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206716206806%_))))
                                        (if (equal? _%e206718206812%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206717206809%_))
                                                (let ((_%e206719206816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206717206809%_))))
                                                  (let ((_%hd206720206820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206719206816%_)))
                                                        (_%tl206721206823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206719206816%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206720206820%_))
                                                        (let ((_%e206722206826%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206720206820%_))))
                  (let ((_%hd206723206830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206722206826%_)))
                        (_%tl206724206833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206722206826%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206723206830%_))
                        (if (let ((__tmp210301 |gxc[1]#_g210302_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210301
                               _%hd206723206830%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206724206833%_))
                                (let ((_%e206725206836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206724206833%_))))
                                  (let ((_%hd206726206840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206725206836%_)))
                                        (_%tl206727206843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206725206836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206727206843%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206721206823%_))
                                            (let ((_%e206728206846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206721206823%_))))
                                              (let ((_%hd206729206850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206728206846%_)))
                                                    (_%tl206730206853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206728206846%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206729206850%_))
                                                    (let ((_%e206731206856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206729206850%_))))
                                                      (if (equal? _%e206731206856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206730206853%_))
                      (let ((_%e206732206860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206730206853%_))))
                        (let ((_%hd206733206864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206732206860%_)))
                              (_%tl206734206867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206732206860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206733206864%_))
                              (let ((_%e206735206870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206733206864%_))))
                                (let ((_%hd206736206874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206735206870%_)))
                                      (_%tl206737206877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206735206870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206736206874%_))
                                      (if (let ((__tmp210303
                                                 |gxc[1]#_g210304_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210303
                                             _%hd206736206874%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206737206877%_))
                                              (let ((_%e206738206880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206737206877%_))))
                                                (let ((_%hd206739206884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206738206880%_)))
                                                      (_%tl206740206887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206738206880%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206740206887%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206734206867%_))
                                                          (let ((_%e206741206890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206734206867%_))))
                    (let ((_%hd206742206894%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206741206890%_)))
                          (_%tl206743206897%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206741206890%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206742206894%_))
                          (let ((_%e206744206900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206742206894%_))))
                            (if (equal? _%e206744206900%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206743206897%_))
                                    (let ((_%e206745206904%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206743206897%_))))
                                      (let ((_%hd206746206908%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206745206904%_)))
                                            (_%tl206747206911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206745206904%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206746206908%_))
                                            (let ((_%e206748206914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206746206908%_))))
                                              (let ((_%hd206749206918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206748206914%_)))
                                                    (_%tl206750206921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206748206914%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206749206918%_))
                                                    (if (let ((__tmp210305
                                                               |gxc[1]#_g210306_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210305
                                                           _%hd206749206918%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206750206921%_))
                                                            (let ((_%e206751206924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206750206921%_))))
                      (let ((_%hd206752206928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206751206924%_)))
                            (_%tl206753206931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206751206924%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206753206931%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206747206911%_))
                                (let ((_%e206754206934%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206747206911%_))))
                                  (let ((_%hd206755206938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206754206934%_)))
                                        (_%tl206756206941%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206754206934%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206755206938%_))
                                        (let ((_%e206757206944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206755206938%_))))
                                          (if (equal? _%e206757206944%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206756206941%_))
                                                  (let ((_%e206758206948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206756206941%_))))
                                                    (let ((_%hd206759206952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206758206948%_)))
                                                          (_%tl206760206955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206758206948%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206759206952%_))
                                                          (let ((_%e206761206958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206759206952%_))))
                    (let ((_%hd206762206962%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206761206958%_)))
                          (_%tl206763206965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206761206958%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206762206962%_))
                          (if (let ((__tmp210307 |gxc[1]#_g210308_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210307
                                 _%hd206762206962%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206763206965%_))
                                  (let ((_%e206764206968%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206763206965%_))))
                                    (let ((_%hd206765206972%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206764206968%_)))
                                          (_%tl206766206975%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206764206968%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206766206975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206760206955%_))
                                              (let ((_%e206767206978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206760206955%_))))
                                                (let ((_%hd206768206982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206767206978%_)))
                                                      (_%tl206769206985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206767206978%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206768206982%_))
                                                      (let ((_%e206770206988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206768206982%_))))
                (if (equal? _%e206770206988%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206769206985%_))
                        (let ((_%e206771206992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206769206985%_))))
                          (let ((_%hd206772206996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206771206992%_)))
                                (_%tl206773206999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206771206992%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206772206996%_))
                                (let ((_%e206774207002%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206772206996%_))))
                                  (let ((_%hd206775207006%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206774207002%_)))
                                        (_%tl206776207009%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206774207002%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206775207006%_))
                                        (if (let ((__tmp210309
                                                   |gxc[1]#_g210310_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210309
                                               _%hd206775207006%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206776207009%_))
                                                (let ((_%e206777207012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206776207009%_))))
                                                  (let ((_%hd206778207016%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206777207012%_)))
                                                        (_%tl206779207019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206777207012%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206779207019%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206773206999%_))
                                                            ((lambda (_%L207022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207024%_
                              _%L207025%_
                              _%L207026%_
                              _%L207027%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207024%_))
                           (cons _%L207024%_
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
                       (cons _%L207026%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207022%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206778207016%_
                     _%hd206765206972%_
                     _%hd206752206928%_
                     _%hd206739206884%_
                     _%hd206726206840%_)
                    (_%g206705206785%_ _%g206706206789%_))
                (_%g206705206785%_ _%g206706206789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206705206785%_
                                                 _%g206706206789%_))
                                            (_%g206705206785%_
                                             _%g206706206789%_))
                                        (_%g206705206785%_
                                         _%g206706206789%_))))
                                (_%g206705206785%_ _%g206706206789%_))))
                        (_%g206705206785%_ _%g206706206789%_))
                    (_%g206705206785%_ _%g206706206789%_)))
              (_%g206705206785%_ _%g206706206789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206705206785%_
                                               _%g206706206789%_))
                                          (_%g206705206785%_
                                           _%g206706206789%_))))
                                  (_%g206705206785%_ _%g206706206789%_))
                              (_%g206705206785%_ _%g206706206789%_))
                          (_%g206705206785%_ _%g206706206789%_))))
                  (_%g206705206785%_ _%g206706206789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206705206785%_
                                                   _%g206706206789%_))
                                              (_%g206705206785%_
                                               _%g206706206789%_)))
                                        (_%g206705206785%_
                                         _%g206706206789%_))))
                                (_%g206705206785%_ _%g206706206789%_))
                            (_%g206705206785%_ _%g206706206789%_))))
                    (_%g206705206785%_ _%g206706206789%_))
                (_%g206705206785%_ _%g206706206789%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206705206785%_
                                                     _%g206706206789%_))))
                                            (_%g206705206785%_
                                             _%g206706206789%_))))
                                    (_%g206705206785%_ _%g206706206789%_))
                                (_%g206705206785%_ _%g206706206789%_)))
                          (_%g206705206785%_ _%g206706206789%_))))
                  (_%g206705206785%_ _%g206706206789%_))
              (_%g206705206785%_ _%g206706206789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206705206785%_
                                               _%g206706206789%_))
                                          (_%g206705206785%_
                                           _%g206706206789%_))
                                      (_%g206705206785%_ _%g206706206789%_))))
                              (_%g206705206785%_ _%g206706206789%_))))
                      (_%g206705206785%_ _%g206706206789%_))
                  (_%g206705206785%_ _%g206706206789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206705206785%_
                                                     _%g206706206789%_))))
                                            (_%g206705206785%_
                                             _%g206706206789%_))
                                        (_%g206705206785%_
                                         _%g206706206789%_))))
                                (_%g206705206785%_ _%g206706206789%_))
                            (_%g206705206785%_ _%g206706206789%_))
                        (_%g206705206785%_ _%g206706206789%_))))
                (_%g206705206785%_ _%g206706206789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206705206785%_
                                                 _%g206706206789%_))
                                            (_%g206705206785%_
                                             _%g206706206789%_)))
                                      (_%g206705206785%_ _%g206706206789%_))))
                              (_%g206705206785%_ _%g206706206789%_))))
                      (_%g206705206785%_ _%g206706206789%_)))))
          (_%g206704207087%_ _%sig206702%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx207859%_)
        (let* ((_%g207862207880%_
                (lambda (_%g207863207876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207863207876%_))))
               (_%g207861207935%_
                (lambda (_%g207863207884%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207863207884%_))
                      (let ((_%e207866207887%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207863207884%_))))
                        (let ((_%hd207867207891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207866207887%_)))
                              (_%tl207868207894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207866207887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207868207894%_))
                              (let ((_%e207869207897%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207868207894%_))))
                                (let ((_%hd207870207901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207869207897%_)))
                                      (_%tl207871207904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207869207897%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207871207904%_))
                                      (let ((_%e207872207907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207871207904%_))))
                                        (let ((_%hd207873207911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207872207907%_)))
                                              (_%tl207874207914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207872207907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207874207914%_))
                                              ((lambda (_%L207917%_
                                                        _%L207919%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207919%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207917%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx207859%_
                                                        _%L207919%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx207859%_
                                                        _%L207917%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L207919%_
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
                                                   (cons _%L207917%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207862207880%_
                                                      _%g207863207884%_)))
                                               _%hd207873207911%_
                                               _%hd207870207901%_)
                                              (_%g207862207880%_
                                               _%g207863207884%_))))
                                      (_%g207862207880%_ _%g207863207884%_))))
                              (_%g207862207880%_ _%g207863207884%_))))
                      (_%g207862207880%_ _%g207863207884%_)))))
          (_%g207861207935%_ _%stx207859%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx207939%_)
        (let* ((_%g207942207966%_
                (lambda (_%g207943207962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207943207962%_))))
               (_%g207941208249%_
                (lambda (_%g207943207970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207943207970%_))
                      (let ((_%e207946207973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207943207970%_))))
                        (let ((_%hd207947207977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207946207973%_)))
                              (_%tl207948207980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207946207973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207948207980%_))
                              (let ((_%e207949207983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207948207980%_))))
                                (let ((_%hd207950207987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207949207983%_)))
                                      (_%tl207951207990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207949207983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207951207990%_))
                                      (let ((_g210311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207951207990%_
                                                '0))))
                                        (begin
                                          (let ((_g210312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210311_)
                                                       (##values-length
                                                        _g210311_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210312_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210312_)))
                                          (let ((_%target207952207993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210311_ 0)))
                                                (_%tl207954207996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210311_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207954207996%_))
                                                (letrec ((_%loop207955207999%_
                                                          (lambda (_%hd207953208003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature207959208006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207953208003%_))
                        (let ((_%e207956208009%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207953208003%_))))
                          (let ((_%lp-hd207957208013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207956208009%_)))
                                (_%lp-tl207958208016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207956208009%_))))
                            (_%loop207955207999%_
                             _%lp-tl207958208016%_
                             (cons _%lp-hd207957208013%_
                                   _%signature207959208006%_))))
                        (let ((_%signature207960208019%_
                               (reverse _%signature207959208006%_)))
                          ((lambda (_%L208023%_ _%L208025%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208025%_))
                                 (let* ((_%g208043208058%_
                                         (lambda (_%g208044208054%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208044208054%_))))
                                        (_%g208042208237%_
                                         (lambda (_%g208044208062%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208044208062%_))
                                               (let ((_%e208047208065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208044208062%_))))
                                                 (let ((_%hd208048208069%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208047208065%_)))
                                                       (_%tl208049208072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208047208065%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208049208072%_))
                                                       (let ((_%e208050208075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208049208072%_))))
                 (let ((_%hd208051208079%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208050208075%_)))
                       (_%tl208052208082%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208050208075%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208052208082%_))
                       ((lambda (_%L208085%_ _%L208087%_)
                          (let* ((_%g208103208111%_
                                  (lambda (_%g208104208107%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208104208107%_))))
                                 (_%g208102208233%_
                                  (lambda (_%g208104208115%_)
                                    ((lambda (_%L208118%_)
                                       (let* ((_%unchecked208131%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208085%_))
                                              (_%g208134208142%_
                                               (lambda (_%g208135208138%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208135208138%_))))
                                              (_%g208133208165%_
                                               (lambda (_%g208135208146%_)
                                                 ((lambda (_%L208149%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208118%_
                                                                (cons _%L208149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208135208146%_))))
                                         (_%g208133208165%_
                                          (if _%unchecked208131%_
                                              (let* ((_%g208169208184%_
                                                      (lambda (_%g208170208180%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208170208180%_))))
                                                     (_%g208168208229%_
                                                      (lambda (_%g208170208188%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208170208188%_))
                                                            (let ((_%e208173208191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208170208188%_))))
                      (let ((_%hd208174208195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208173208191%_)))
                            (_%tl208175208198%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208173208191%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208175208198%_))
                            (let ((_%e208176208201%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208175208198%_))))
                              (let ((_%hd208177208205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208176208201%_)))
                                    (_%tl208178208208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208176208201%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208178208208%_))
                                    ((lambda (_%L208211%_ _%L208213%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208213%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208087%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208211%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208177208205%_
                                     _%hd208174208195%_)
                                    (_%g208169208184%_ _%g208170208188%_))))
                            (_%g208169208184%_ _%g208170208188%_))))
                    (_%g208169208184%_ _%g208170208188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208168208229%_
                                                 _%unchecked208131%_))
                                              '(begin)))))
                                     _%g208104208115%_))))
                            (_%g208102208233%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208025%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208087%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208085%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208051208079%_
                        _%hd208048208069%_)
                       (_%g208043208058%_ _%g208044208062%_))))
               (_%g208043208058%_ _%g208044208062%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208043208058%_
                                                _%g208044208062%_)))))
                                   (_%g208042208237%_
                                    (|gxc[1]#parse-signature|
                                     _%stx207939%_
                                     _%L208025%_
                                     (let ((__tmp210313
                                            (lambda (_%g208240208243%_
                                                     _%g208241208246%_)
                                              (cons _%g208240208243%_
                                                    _%g208241208246%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210313
                                        '()
                                        _%L208023%_)))))
                                 (_%g207942207966%_ _%g207943207970%_)))
                           _%signature207960208019%_
                           _%hd207950207987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207955207999%_
                                                   _%target207952207993%_
                                                   '()))
                                                (_%g207942207966%_
                                                 _%g207943207970%_)))))
                                      (_%g207942207966%_ _%g207943207970%_))))
                              (_%g207942207966%_ _%g207943207970%_))))
                      (_%g207942207966%_ _%g207943207970%_)))))
          (_%g207941208249%_ _%stx207939%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208254%_)
        (let* ((_%g208257208281%_
                (lambda (_%g208258208277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208258208277%_))))
               (_%g208256209164%_
                (lambda (_%g208258208285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208258208285%_))
                      (let ((_%e208261208288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208258208285%_))))
                        (let ((_%hd208262208292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208261208288%_)))
                              (_%tl208263208295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208261208288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208263208295%_))
                              (let ((_%e208264208298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208263208295%_))))
                                (let ((_%hd208265208302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208264208298%_)))
                                      (_%tl208266208305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208264208298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208266208305%_))
                                      (let ((_g210314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208266208305%_
                                                '0))))
                                        (begin
                                          (let ((_g210315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210314_)
                                                       (##values-length
                                                        _g210314_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210315_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210315_)))
                                          (let ((_%target208267208308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210314_ 0)))
                                                (_%tl208269208311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210314_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208269208311%_))
                                                (letrec ((_%loop208270208314%_
                                                          (lambda (_%hd208268208318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208274208321%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208268208318%_))
                        (let ((_%e208271208324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208268208318%_))))
                          (let ((_%lp-hd208272208328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208271208324%_)))
                                (_%lp-tl208273208331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208271208324%_))))
                            (_%loop208270208314%_
                             _%lp-tl208273208331%_
                             (cons _%lp-hd208272208328%_
                                   _%case-signature208274208321%_))))
                        (let ((_%case-signature208275208334%_
                               (reverse _%case-signature208274208321%_)))
                          ((lambda (_%L208338%_ _%L208340%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208340%_))
                                 (let* ((_%signatures208371%_
                                         (map (lambda (_%g208357208359%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208254%_
                                                 _%L208340%_
                                                 _%g208357208359%_))
                                              (let ((__tmp210316
                                                     (lambda (_%g208362208365%_
                                                              _%g208363208368%_)
                                                       (cons _%g208362208365%_
                                                             _%g208363208368%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210316
                                                 '()
                                                 _%L208338%_))))
                                        (_%g208374208400%_
                                         (lambda (_%g208375208396%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208375208396%_))))
                                        (_%g208373209160%_
                                         (lambda (_%g208375208404%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208375208404%_))
                                               (let ((_g210317_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208375208404%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210318_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210317_)
                        (##values-length _g210317_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210318_ 2)))
                 (error "Context expects 2 values" _g210318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208378208407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210317_
                                                             0)))
                                                         (_%tl208380208410%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210317_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208380208410%_))
                                                         (letrec ((_%loop208381208413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208379208417%_
                                    _%sig208385208420%_
                                    _%arity208386208422%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208379208417%_))
                                 (let ((_%e208382208425%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208379208417%_))))
                                   (let ((_%lp-hd208383208429%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208382208425%_)))
                                         (_%lp-tl208384208432%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208382208425%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208383208429%_))
                                         (let ((_%e208389208435%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208383208429%_))))
                                           (let ((_%hd208390208439%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208389208435%_)))
                                                 (_%tl208391208442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208389208435%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208391208442%_))
                                                 (let ((_%e208392208445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208391208442%_))))
                                                   (let ((_%hd208393208449%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208392208445%_)))
                                                         (_%tl208394208452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208392208445%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208394208452%_))
                                                         (_%loop208381208413%_
                                                          _%lp-tl208384208432%_
                                                          (cons _%hd208393208449%_
                                                                _%sig208385208420%_)
                                                          (cons _%hd208390208439%_
                                                                _%arity208386208422%_))
                                                         (_%g208374208400%_
                                                          _%g208375208404%_))))
                                                 (_%g208374208400%_
                                                  _%g208375208404%_))))
                                         (_%g208374208400%_
                                          _%g208375208404%_))))
                                 (let ((_%sig208387208455%_
                                        (reverse _%sig208385208420%_))
                                       (_%arity208388208458%_
                                        (reverse _%arity208386208422%_)))
                                   ((lambda (_%L208461%_ _%L208463%_)
                                      (let* ((_%g208480208488%_
                                              (lambda (_%g208481208484%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208481208484%_))))
                                             (_%g208479209145%_
                                              (lambda (_%g208481208492%_)
                                                ((lambda (_%L208495%_)
                                                   (let* ((_%g208508208516%_
                                                           (lambda (_%g208509208512%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208509208512%_))))
                  (_%g208507208538%_
                   (lambda (_%g208509208520%_)
                     ((lambda (_%L208523%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208495%_ (cons _%L208523%_ '()))))
                      _%g208509208520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208507208538%_
                                                      (let ((_g210319_
                                                             (let _%loop208542%_ ((_%rest208545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208371%_)
                                          (_%unchecked-proc208547%_ '#f)
                                          (_%unchecked-clauses208548%_ '()))
                       (let* ((_%rest208549208557%_ _%rest208545%_)
                              (_%else208551208569%_
                               (lambda ()
                                 (values _%unchecked-proc208547%_
                                         (reverse!
                                          _%unchecked-clauses208548%_))))
                              (_%K208553209010%_
                               (lambda (_%rest208573%_ _%hd208575%_)
                                 (let* ((_%g208577208664%_
                                         (lambda (_%g208578208660%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208578208660%_))))
                                        (_%g208576209006%_
                                         (lambda (_%g208578208668%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208578208668%_))
                                               (let ((_%e208585208671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208578208668%_))))
                                                 (let ((_%hd208586208675%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208585208671%_)))
                                                       (_%tl208587208678%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208585208671%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208587208678%_))
                                                       (let ((_%e208588208681%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208587208678%_))))
                 (let ((_%hd208589208685%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208588208681%_)))
                       (_%tl208590208688%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208588208681%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208589208685%_))
                       (let ((_%e208591208691%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208589208685%_))))
                         (let ((_%hd208592208695%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208591208691%_)))
                               (_%tl208593208698%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208591208691%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208593208698%_))
                               (let ((_%e208594208701%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208593208698%_))))
                                 (let ((_%hd208595208705%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208594208701%_)))
                                       (_%tl208596208708%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208594208701%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208595208705%_))
                                       (let ((_%e208597208711%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208595208705%_))))
                                         (if (equal? _%e208597208711%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208596208708%_))
                                                 (let ((_%e208598208715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208596208708%_))))
                                                   (let ((_%hd208599208719%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208598208715%_)))
                                                         (_%tl208600208722%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208598208715%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208599208719%_))
                                                         (let ((_%e208601208725%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208599208719%_))))
                   (let ((_%hd208602208729%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208601208725%_)))
                         (_%tl208603208732%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208601208725%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208602208729%_))
                         (if (let ((__tmp210321 |gxc[1]#_g210322_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210321
                                _%hd208602208729%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208603208732%_))
                                 (let ((_%e208604208735%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208603208732%_))))
                                   (let ((_%hd208605208739%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208604208735%_)))
                                         (_%tl208606208742%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208604208735%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208606208742%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208600208722%_))
                                             (let ((_%e208607208745%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208600208722%_))))
                                               (let ((_%hd208608208749%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208607208745%_)))
                                                     (_%tl208609208752%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208607208745%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208608208749%_))
                                                     (let ((_%e208610208755%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208608208749%_))))
                                                       (if (equal? _%e208610208755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208609208752%_))
                       (let ((_%e208611208759%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208609208752%_))))
                         (let ((_%hd208612208763%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208611208759%_)))
                               (_%tl208613208766%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208611208759%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208612208763%_))
                               (let ((_%e208614208769%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208612208763%_))))
                                 (let ((_%hd208615208773%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208614208769%_)))
                                       (_%tl208616208776%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208614208769%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208615208773%_))
                                       (if (let ((__tmp210323
                                                  |gxc[1]#_g210324_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210323
                                              _%hd208615208773%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208616208776%_))
                                               (let ((_%e208617208779%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208616208776%_))))
                                                 (let ((_%hd208618208783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208617208779%_)))
                                                       (_%tl208619208786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208617208779%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208619208786%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208613208766%_))
                                                           (let ((_%e208620208789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208613208766%_))))
                     (let ((_%hd208621208793%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208620208789%_)))
                           (_%tl208622208796%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208620208789%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208621208793%_))
                           (let ((_%e208623208799%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208621208793%_))))
                             (if (equal? _%e208623208799%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208622208796%_))
                                     (let ((_%e208624208803%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208622208796%_))))
                                       (let ((_%hd208625208807%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208624208803%_)))
                                             (_%tl208626208810%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208624208803%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208625208807%_))
                                             (let ((_%e208627208813%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208625208807%_))))
                                               (let ((_%hd208628208817%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208627208813%_)))
                                                     (_%tl208629208820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208627208813%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208628208817%_))
                                                     (if (let ((__tmp210325
                                                                |gxc[1]#_g210326_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210325
                                                            _%hd208628208817%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208629208820%_))
                     (let ((_%e208630208823%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208629208820%_))))
                       (let ((_%hd208631208827%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208630208823%_)))
                             (_%tl208632208830%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208630208823%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208632208830%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208626208810%_))
                                 (let ((_%e208633208833%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208626208810%_))))
                                   (let ((_%hd208634208837%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208633208833%_)))
                                         (_%tl208635208840%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208633208833%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208634208837%_))
                                         (let ((_%e208636208843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208634208837%_))))
                                           (if (equal? _%e208636208843%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208635208840%_))
                                                   (let ((_%e208637208847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208635208840%_))))
                                                     (let ((_%hd208638208851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208637208847%_)))
                                                           (_%tl208639208854%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208637208847%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208638208851%_))
                                                           (let ((_%e208640208857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208638208851%_))))
                     (let ((_%hd208641208861%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208640208857%_)))
                           (_%tl208642208864%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208640208857%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208641208861%_))
                           (if (let ((__tmp210327 |gxc[1]#_g210328_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210327
                                  _%hd208641208861%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208642208864%_))
                                   (let ((_%e208643208867%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208642208864%_))))
                                     (let ((_%hd208644208871%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208643208867%_)))
                                           (_%tl208645208874%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208643208867%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208645208874%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208639208854%_))
                                               (let ((_%e208646208877%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208639208854%_))))
                                                 (let ((_%hd208647208881%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208646208877%_)))
                                                       (_%tl208648208884%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208646208877%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208647208881%_))
                                                       (let ((_%e208649208887%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208647208881%_))))
                 (if (equal? _%e208649208887%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208648208884%_))
                         (let ((_%e208650208891%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208648208884%_))))
                           (let ((_%hd208651208895%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208650208891%_)))
                                 (_%tl208652208898%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208650208891%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208651208895%_))
                                 (let ((_%e208653208901%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208651208895%_))))
                                   (let ((_%hd208654208905%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208653208901%_)))
                                         (_%tl208655208908%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208653208901%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208654208905%_))
                                         (if (let ((__tmp210329
                                                    |gxc[1]#_g210330_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210329
                                                _%hd208654208905%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208655208908%_))
                                                 (let ((_%e208656208911%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208655208908%_))))
                                                   (let ((_%hd208657208915%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208656208911%_)))
                                                         (_%tl208658208918%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208656208911%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208658208918%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208652208898%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208590208688%_))
                         ((lambda (_%L208921%_
                                   _%L208923%_
                                   _%L208924%_
                                   _%L208925%_
                                   _%L208926%_
                                   _%L208927%_)
                            (let ((_%clause208998%_
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
                                                     (cons _%L208927%_ '()))
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
                                                 (cons _%L208925%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208921%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked209000%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L208923%_))))
                              (_%loop208542%_
                               _%rest208573%_
                               (let ((_%$e209002%_ _%unchecked209000%_))
                                 (if _%$e209002%_
                                     _%$e209002%_
                                     _%unchecked-proc208547%_))
                               (cons _%clause208998%_
                                     _%unchecked-clauses208548%_))))
                          _%hd208657208915%_
                          _%hd208644208871%_
                          _%hd208631208827%_
                          _%hd208618208783%_
                          _%hd208605208739%_
                          _%hd208586208675%_)
                         (_%g208577208664%_ _%g208578208668%_))
                     (_%g208577208664%_ _%g208578208668%_))
                 (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208577208664%_
                                                  _%g208578208668%_))
                                             (_%g208577208664%_
                                              _%g208578208668%_))
                                         (_%g208577208664%_
                                          _%g208578208668%_))))
                                 (_%g208577208664%_ _%g208578208668%_))))
                         (_%g208577208664%_ _%g208578208668%_))
                     (_%g208577208664%_ _%g208578208668%_)))
               (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208577208664%_
                                                _%g208578208668%_))
                                           (_%g208577208664%_
                                            _%g208578208668%_))))
                                   (_%g208577208664%_ _%g208578208668%_))
                               (_%g208577208664%_ _%g208578208668%_))
                           (_%g208577208664%_ _%g208578208668%_))))
                   (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208577208664%_
                                                    _%g208578208668%_))
                                               (_%g208577208664%_
                                                _%g208578208668%_)))
                                         (_%g208577208664%_
                                          _%g208578208668%_))))
                                 (_%g208577208664%_ _%g208578208668%_))
                             (_%g208577208664%_ _%g208578208668%_))))
                     (_%g208577208664%_ _%g208578208668%_))
                 (_%g208577208664%_ _%g208578208668%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208577208664%_
                                                      _%g208578208668%_))))
                                             (_%g208577208664%_
                                              _%g208578208668%_))))
                                     (_%g208577208664%_ _%g208578208668%_))
                                 (_%g208577208664%_ _%g208578208668%_)))
                           (_%g208577208664%_ _%g208578208668%_))))
                   (_%g208577208664%_ _%g208578208668%_))
               (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208577208664%_
                                                _%g208578208668%_))
                                           (_%g208577208664%_
                                            _%g208578208668%_))
                                       (_%g208577208664%_ _%g208578208668%_))))
                               (_%g208577208664%_ _%g208578208668%_))))
                       (_%g208577208664%_ _%g208578208668%_))
                   (_%g208577208664%_ _%g208578208668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208577208664%_
                                                      _%g208578208668%_))))
                                             (_%g208577208664%_
                                              _%g208578208668%_))
                                         (_%g208577208664%_
                                          _%g208578208668%_))))
                                 (_%g208577208664%_ _%g208578208668%_))
                             (_%g208577208664%_ _%g208578208668%_))
                         (_%g208577208664%_ _%g208578208668%_))))
                 (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208577208664%_
                                                  _%g208578208668%_))
                                             (_%g208577208664%_
                                              _%g208578208668%_)))
                                       (_%g208577208664%_ _%g208578208668%_))))
                               (_%g208577208664%_ _%g208578208668%_))))
                       (_%g208577208664%_ _%g208578208668%_))))
               (_%g208577208664%_ _%g208578208668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208577208664%_
                                                _%g208578208668%_)))))
                                   (_%g208576209006%_ _%hd208575%_)))))
                         (if (pair? _%rest208549208557%_)
                             (let ((_%hd208554209014%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208549208557%_)))
                                   (_%tl208555209017%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208549208557%_))))
                               (let* ((_%hd209020%_ _%hd208554209014%_)
                                      (_%rest209023%_ _%tl208555209017%_))
                                 (_%K208553209010%_
                                  _%rest209023%_
                                  _%hd209020%_)))
                             (_%else208551208569%_))))))
                (begin
                  (let ((_g210320_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210319_)
                               (##values-length _g210319_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210320_ 2)))
                        (error "Context expects 2 values" _g210320_)))
                  (let ((_%unchecked-proc209026%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210319_ 0)))
                        (_%unchecked-clauses209028%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210319_ 1))))
                    (if _%unchecked-proc209026%_
                        (let* ((_%g209030209054%_
                                (lambda (_%g209031209050%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209031209050%_))))
                               (_%g209029209141%_
                                (lambda (_%g209031209058%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209031209058%_))
                                      (let ((_%e209034209061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209031209058%_))))
                                        (let ((_%hd209035209065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209034209061%_)))
                                              (_%tl209036209068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209034209061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209036209068%_))
                                              (let ((_%e209037209071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209036209068%_))))
                                                (let ((_%hd209038209075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209037209071%_)))
                                                      (_%tl209039209078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209037209071%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209038209075%_))
                                                      (let ((_g210331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209038209075%_ '0))))
                (begin
                  (let ((_g210332_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210331_)
                               (##values-length _g210331_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210332_ 2)))
                        (error "Context expects 2 values" _g210332_)))
                  (let ((_%target209040209081%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210331_ 0)))
                        (_%tl209042209084%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210331_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209042209084%_))
                        (letrec ((_%loop209043209087%_
                                  (lambda (_%hd209041209091%_
                                           _%clause209047209094%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209041209091%_))
                                        (let ((_%e209044209097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209041209091%_))))
                                          (let ((_%lp-hd209045209101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209044209097%_)))
                                                (_%lp-tl209046209104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209044209097%_))))
                                            (_%loop209043209087%_
                                             _%lp-tl209046209104%_
                                             (cons _%lp-hd209045209101%_
                                                   _%clause209047209094%_))))
                                        (let ((_%clause209048209107%_
                                               (reverse _%clause209047209094%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209039209078%_))
                                              ((lambda (_%L209111%_
                                                        _%L209113%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209113%_
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
                                             (let ((__tmp210333
                                                    (lambda (_%g209132209135%_
                                                             _%g209133209138%_)
                                                      (cons _%g209132209135%_
                                                            _%g209133209138%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210333
                                                '()
                                                _%L209111%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209048209107%_
                                               _%hd209035209065%_)
                                              (_%g209030209054%_
                                               _%g209031209058%_)))))))
                          (_%loop209043209087%_ _%target209040209081%_ '()))
                        (_%g209030209054%_ _%g209031209058%_)))))
              (_%g209030209054%_ _%g209031209058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209030209054%_
                                               _%g209031209058%_))))
                                      (_%g209030209054%_ _%g209031209058%_)))))
                          (_%g209029209141%_
                           (list _%unchecked-proc209026%_
                                 _%unchecked-clauses209028%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208481208492%_))))
                                        (_%g208479209145%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208340%_
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
                                          _%L208461%_
                                          _%L208463%_))
                                       (let ((__tmp210334
                                              (lambda (_%g209148209152%_
                                                       _%g209149209155%_
                                                       _%g209150209157%_)
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
                                (cons _%g209149209155%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209148209152%_ '())))))
              _%g209150209157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210334
                                          '()
                                          _%L208461%_
                                          _%L208463%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208387208455%_
                                    _%arity208388208458%_))))))
                   (_%loop208381208413%_ _%target208378208407%_ '() '()))
                 (_%g208374208400%_ _%g208375208404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208374208400%_
                                                _%g208375208404%_)))))
                                   (_%g208373209160%_ _%signatures208371%_))
                                 (_%g208257208281%_ _%g208258208285%_)))
                           _%case-signature208275208334%_
                           _%hd208265208302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208270208314%_
                                                   _%target208267208308%_
                                                   '()))
                                                (_%g208257208281%_
                                                 _%g208258208285%_)))))
                                      (_%g208257208281%_ _%g208258208285%_))))
                              (_%g208257208281%_ _%g208258208285%_))))
                      (_%g208257208281%_ _%g208258208285%_)))))
          (_%g208256209164%_ _%stx208254%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209172%_)
        (let* ((_%__stx210154210155%_ _%$stx209172%_)
               (_%g209178209238%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210154210155%_)))))
          (let ((_%__kont210157210158%_
                 (lambda (_%L209460%_ _%L209462%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209462%_ '()))
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
                                                       (cons _%L209462%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209460%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210159210160%_
                 (lambda (_%L209385%_ _%L209387%_ _%L209388%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209388%_ '()))
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
                                                       (cons _%L209388%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209387%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209385%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210161210162%_
                 (lambda (_%L209299%_ _%L209301%_ _%L209302%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209302%_ '()))
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
                                                       (cons _%L209302%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209301%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209299%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210154210155%_))
                (let ((_%e209182209416%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210154210155%_))))
                  (let ((_%tl209184209423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209182209416%_)))
                        (_%hd209183209420%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209182209416%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209184209423%_))
                        (let ((_%e209185209426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209184209423%_))))
                          (let ((_%tl209187209433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209185209426%_)))
                                (_%hd209186209430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209185209426%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209186209430%_))
                                (let ((_%e209188209436%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209186209430%_))))
                                  (if (equal? _%e209188209436%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209187209433%_))
                                          (let ((_%e209189209440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209187209433%_))))
                                            (let ((_%tl209191209447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209189209440%_)))
                                                  (_%hd209190209444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209189209440%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209191209447%_))
                                                  (let ((_%e209192209450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209191209447%_))))
                                                    (let ((_%tl209194209457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209192209450%_)))
                                                          (_%hd209193209454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209192209450%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209194209457%_))
                                                          (_%__kont210157210158%_
                                                           _%hd209193209454%_
                                                           _%hd209190209444%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209178209238%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209178209238%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209178209238%_)))
                                      (if (equal? _%e209188209436%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209187209433%_))
                                              (let ((_%e209205209355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209187209433%_))))
                                                (let ((_%tl209207209362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209205209355%_)))
                                                      (_%hd209206209359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209205209355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209207209362%_))
                                                      (let ((_%e209208209365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209207209362%_))))
                (let ((_%tl209210209372%_
                       (let () (declare (not safe)) (##cdr _%e209208209365%_)))
                      (_%hd209209209369%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209208209365%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209210209372%_))
                      (let ((_%e209211209375%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209210209372%_))))
                        (let ((_%tl209213209382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209211209375%_)))
                              (_%hd209212209379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209211209375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209213209382%_))
                              (_%__kont210159210160%_
                               _%hd209212209379%_
                               _%hd209209209369%_
                               _%hd209206209359%_)
                              (let ()
                                (declare (not safe))
                                (_%g209178209238%_)))))
                      (let () (declare (not safe)) (_%g209178209238%_)))))
              (let () (declare (not safe)) (_%g209178209238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209178209238%_)))
                                          (if (equal? _%e209188209436%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209187209433%_))
                                                  (let ((_%e209224209269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209187209433%_))))
                                                    (let ((_%tl209226209276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209224209269%_)))
                                                          (_%hd209225209273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209224209269%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209226209276%_))
                                                          (let ((_%e209227209279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209226209276%_))))
                    (let ((_%tl209229209286%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209227209279%_)))
                          (_%hd209228209283%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209227209279%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209229209286%_))
                          (let ((_%e209230209289%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209229209286%_))))
                            (let ((_%tl209232209296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209230209289%_)))
                                  (_%hd209231209293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209230209289%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209232209296%_))
                                  (_%__kont210161210162%_
                                   _%hd209231209293%_
                                   _%hd209228209283%_
                                   _%hd209225209273%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209178209238%_)))))
                          (let () (declare (not safe)) (_%g209178209238%_)))))
                  (let () (declare (not safe)) (_%g209178209238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209178209238%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209178209238%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209178209238%_)))))
                        (let () (declare (not safe)) (_%g209178209238%_)))))
                (let () (declare (not safe)) (_%g209178209238%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209484%_)
        (let* ((_%g209488209508%_
                (lambda (_%g209489209504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209489209504%_))))
               (_%g209487209579%_
                (lambda (_%g209489209512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209489209512%_))
                      (let ((_%e209491209515%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209489209512%_))))
                        (let ((_%hd209492209519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209491209515%_)))
                              (_%tl209493209522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209491209515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209493209522%_))
                              (let ((_g210335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209493209522%_
                                        '0))))
                                (begin
                                  (let ((_g210336_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210335_)
                                               (##values-length _g210335_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210336_ 2)))
                                        (error "Context expects 2 values"
                                               _g210336_)))
                                  (let ((_%target209494209525%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210335_ 0)))
                                        (_%tl209496209528%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210335_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209496209528%_))
                                        (letrec ((_%loop209497209531%_
                                                  (lambda (_%hd209495209535%_
                                                           _%decl209501209538%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209495209535%_))
                                                        (let ((_%e209498209541%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209495209535%_))))
                  (let ((_%lp-hd209499209545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209498209541%_)))
                        (_%lp-tl209500209548%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209498209541%_))))
                    (_%loop209497209531%_
                     _%lp-tl209500209548%_
                     (cons _%lp-hd209499209545%_ _%decl209501209538%_))))
                (let ((_%decl209502209551%_ (reverse _%decl209501209538%_)))
                  ((lambda (_%L209555%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210337
                                  (lambda (_%g209570209573%_ _%g209571209576%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209570209573%_)
                                          _%g209571209576%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210337 '() _%L209555%_))))
                   _%decl209502209551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209497209531%_
                                           _%target209494209525%_
                                           '()))
                                        (_%g209488209508%_
                                         _%g209489209512%_)))))
                              (_%g209488209508%_ _%g209489209512%_))))
                      (_%g209488209508%_ _%g209489209512%_)))))
          (_%g209487209579%_ _%$stx209484%_))))))

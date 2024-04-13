(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g208627_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208634_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208636_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208638_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208640_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208642_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208654_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208656_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208658_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208660_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g208662_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202045%_)
        (let* ((_%g202049202067%_
                (lambda (_%g202050202063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202050202063%_))))
               (_%g202048202122%_
                (lambda (_%g202050202071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202050202071%_))
                      (let ((_%e202053202074%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202050202071%_))))
                        (let ((_%hd202054202078%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202053202074%_)))
                              (_%tl202055202081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202053202074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202055202081%_))
                              (let ((_%e202056202084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202055202081%_))))
                                (let ((_%hd202057202088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202056202084%_)))
                                      (_%tl202058202091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202056202084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202058202091%_))
                                      (let ((_%e202059202094%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202058202091%_))))
                                        (let ((_%hd202060202098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202059202094%_)))
                                              (_%tl202061202101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202059202094%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202061202101%_))
                                              ((lambda (_%L202104%_
                                                        _%L202106%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202106%_))
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
                               (cons _%L202106%_ '()))
                         (cons _%L202104%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202049202067%_
                                                      _%g202050202071%_)))
                                               _%hd202060202098%_
                                               _%hd202057202088%_)
                                              (_%g202049202067%_
                                               _%g202050202071%_))))
                                      (_%g202049202067%_ _%g202050202071%_))))
                              (_%g202049202067%_ _%g202050202071%_))))
                      (_%g202049202067%_ _%g202050202071%_)))))
          (_%g202048202122%_ _%$stx202045%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx202126%_)
        (let* ((_%g202130202148%_
                (lambda (_%g202131202144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202131202144%_))))
               (_%g202129202203%_
                (lambda (_%g202131202152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202131202152%_))
                      (let ((_%e202134202155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202131202152%_))))
                        (let ((_%hd202135202159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202134202155%_)))
                              (_%tl202136202162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202134202155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202136202162%_))
                              (let ((_%e202137202165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202136202162%_))))
                                (let ((_%hd202138202169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202137202165%_)))
                                      (_%tl202139202172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202137202165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202139202172%_))
                                      (let ((_%e202140202175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202139202172%_))))
                                        (let ((_%hd202141202179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202140202175%_)))
                                              (_%tl202142202182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202140202175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202142202182%_))
                                              ((lambda (_%L202185%_
                                                        _%L202187%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202187%_))
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
                               (cons _%L202187%_ '()))
                         (cons _%L202185%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202130202148%_
                                                      _%g202131202152%_)))
                                               _%hd202141202179%_
                                               _%hd202138202169%_)
                                              (_%g202130202148%_
                                               _%g202131202152%_))))
                                      (_%g202130202148%_ _%g202131202152%_))))
                              (_%g202130202148%_ _%g202131202152%_))))
                      (_%g202130202148%_ _%g202131202152%_)))))
          (_%g202129202203%_ _%$stx202126%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx202207%_)
        (let* ((_%g202211202240%_
                (lambda (_%g202212202236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202212202236%_))))
               (_%g202210202340%_
                (lambda (_%g202212202244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202212202244%_))
                      (let ((_%e202215202247%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202212202244%_))))
                        (let ((_%hd202216202251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202215202247%_)))
                              (_%tl202217202254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202215202247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202217202254%_))
                              (let ((_g208605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202217202254%_
                                        '0))))
                                (begin
                                  (let ((_g208606_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208605_)
                                               (##vector-length _g208605_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208606_ 2)))
                                        (error "Context expects 2 values"
                                               _g208606_)))
                                  (let ((_%target202218202257%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208605_ 0)))
                                        (_%tl202220202260%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208605_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202220202260%_))
                                        (letrec ((_%loop202221202263%_
                                                  (lambda (_%hd202219202267%_
                                                           _%type202225202270%_
                                                           _%symbol202226202272%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202219202267%_))
                                                        (let ((_%e202222202275%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202219202267%_))))
                  (let ((_%lp-hd202223202279%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202222202275%_)))
                        (_%lp-tl202224202282%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202222202275%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202223202279%_))
                        (let ((_%e202229202285%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202223202279%_))))
                          (let ((_%hd202230202289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202229202285%_)))
                                (_%tl202231202292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202229202285%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202231202292%_))
                                (let ((_%e202232202295%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202231202292%_))))
                                  (let ((_%hd202233202299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202232202295%_)))
                                        (_%tl202234202302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202232202295%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202234202302%_))
                                        (_%loop202221202263%_
                                         _%lp-tl202224202282%_
                                         (cons _%hd202233202299%_
                                               _%type202225202270%_)
                                         (cons _%hd202230202289%_
                                               _%symbol202226202272%_))
                                        (_%g202211202240%_
                                         _%g202212202244%_))))
                                (_%g202211202240%_ _%g202212202244%_))))
                        (_%g202211202240%_ _%g202212202244%_))))
                (let ((_%type202227202305%_ (reverse _%type202225202270%_))
                      (_%symbol202228202308%_
                       (reverse _%symbol202226202272%_)))
                  ((lambda (_%L202311%_ _%L202313%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202311%_
                                _%L202313%_))
                             (let ((__tmp208607
                                    (lambda (_%g202328202332%_
                                             _%g202329202335%_
                                             _%g202330202337%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g202329202335%_
                                                        (cons _%g202328202332%_
                                                              '())))
                                            _%g202330202337%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp208607
                                '()
                                _%L202311%_
                                _%L202313%_)))))
                   _%type202227202305%_
                   _%symbol202228202308%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202221202263%_
                                           _%target202218202257%_
                                           '()
                                           '()))
                                        (_%g202211202240%_
                                         _%g202212202244%_)))))
                              (_%g202211202240%_ _%g202212202244%_))))
                      (_%g202211202240%_ _%g202212202244%_)))))
          (_%g202210202340%_ _%$stx202207%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx202345%_)
        (let* ((_%__stx207916207917%_ _%$stx202345%_)
               (_%g202350202392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207916207917%_)))))
          (let ((_%__kont207919207920%_
                 (lambda (_%L202520%_ _%L202522%_ _%L202523%_ _%L202524%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202524%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202523%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202522%_ '()))
                                           (cons _%L202520%_ '())))))))
                (_%__kont207921207922%_
                 (lambda (_%L202439%_ _%L202441%_ _%L202442%_ _%L202443%_)
                   (cons _%L202443%_
                         (cons _%L202442%_
                               (cons _%L202441%_
                                     (cons _%L202439%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match207955207956%_
                   (lambda (_%e202356202470%_
                            _%hd202357202474%_
                            _%tl202358202477%_
                            _%e202359202480%_
                            _%hd202360202484%_
                            _%tl202361202487%_
                            _%e202362202490%_
                            _%hd202363202494%_
                            _%tl202364202497%_
                            _%e202365202500%_
                            _%hd202366202504%_
                            _%tl202367202507%_
                            _%e202368202510%_
                            _%hd202369202514%_
                            _%tl202370202517%_)
                     (let ((_%L202520%_ _%hd202369202514%_)
                           (_%L202522%_ _%hd202366202504%_)
                           (_%L202523%_ _%hd202363202494%_)
                           (_%L202524%_ _%hd202360202484%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202524%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202523%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202522%_)))
                           (_%__kont207919207920%_
                            _%L202520%_
                            _%L202522%_
                            _%L202523%_
                            _%L202524%_)
                           (let ()
                             (declare (not safe))
                             (_%g202350202392%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207916207917%_))
                  (let ((_%e202356202470%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207916207917%_))))
                    (let ((_%tl202358202477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202356202470%_)))
                          (_%hd202357202474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202356202470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202358202477%_))
                          (let ((_%e202359202480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202358202477%_))))
                            (let ((_%tl202361202487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202359202480%_)))
                                  (_%hd202360202484%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202359202480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202361202487%_))
                                  (let ((_%e202362202490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202361202487%_))))
                                    (let ((_%tl202364202497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202362202490%_)))
                                          (_%hd202363202494%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202362202490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202364202497%_))
                                          (let ((_%e202365202500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202364202497%_))))
                                            (let ((_%tl202367202507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202365202500%_)))
                                                  (_%hd202366202504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202365202500%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202367202507%_))
                                                  (let ((_%e202368202510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202367202507%_))))
                                                    (let ((_%tl202370202517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202368202510%_)))
                                                          (_%hd202369202514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202368202510%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202370202517%_))
                                                          (_%__match207955207956%_
                                                           _%e202356202470%_
                                                           _%hd202357202474%_
                                                           _%tl202358202477%_
                                                           _%e202359202480%_
                                                           _%hd202360202484%_
                                                           _%tl202361202487%_
                                                           _%e202362202490%_
                                                           _%hd202363202494%_
                                                           _%tl202364202497%_
                                                           _%e202365202500%_
                                                           _%hd202366202504%_
                                                           _%tl202367202507%_
                                                           _%e202368202510%_
                                                           _%hd202369202514%_
                                                           _%tl202370202517%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202350202392%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202367202507%_))
                                                      (_%__kont207921207922%_
                                                       _%hd202366202504%_
                                                       _%hd202363202494%_
                                                       _%hd202360202484%_
                                                       _%hd202357202474%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202350202392%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202350202392%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202350202392%_)))))
                          (let () (declare (not safe)) (_%g202350202392%_)))))
                  (let () (declare (not safe)) (_%g202350202392%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx202549%_)
        (let* ((_%g202553202588%_
                (lambda (_%g202554202584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202554202584%_))))
               (_%g202552202707%_
                (lambda (_%g202554202592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202554202592%_))
                      (let ((_%e202558202595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202554202592%_))))
                        (let ((_%hd202559202599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202558202595%_)))
                              (_%tl202560202602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202558202595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202560202602%_))
                              (let ((_g208608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202560202602%_
                                        '0))))
                                (begin
                                  (let ((_g208609_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208608_)
                                               (##vector-length _g208608_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208609_ 2)))
                                        (error "Context expects 2 values"
                                               _g208609_)))
                                  (let ((_%target202561202605%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208608_ 0)))
                                        (_%tl202563202608%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208608_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202563202608%_))
                                        (letrec ((_%loop202564202611%_
                                                  (lambda (_%hd202562202615%_
                                                           _%symbol202568202618%_
                                                           _%method202569202620%_
                                                           _%type-t202570202622%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202562202615%_))
                                                        (let ((_%e202565202625%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202562202615%_))))
                  (let ((_%lp-hd202566202629%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202565202625%_)))
                        (_%lp-tl202567202632%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202565202625%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202566202629%_))
                        (let ((_%e202574202635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202566202629%_))))
                          (let ((_%hd202575202639%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202574202635%_)))
                                (_%tl202576202642%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202574202635%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202576202642%_))
                                (let ((_%e202577202645%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202576202642%_))))
                                  (let ((_%hd202578202649%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202577202645%_)))
                                        (_%tl202579202652%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202577202645%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202579202652%_))
                                        (let ((_%e202580202655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl202579202652%_))))
                                          (let ((_%hd202581202659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202580202655%_)))
                                                (_%tl202582202662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202580202655%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202582202662%_))
                                                (_%loop202564202611%_
                                                 _%lp-tl202567202632%_
                                                 (cons _%hd202581202659%_
                                                       _%symbol202568202618%_)
                                                 (cons _%hd202578202649%_
                                                       _%method202569202620%_)
                                                 (cons _%hd202575202639%_
                                                       _%type-t202570202622%_))
                                                (_%g202553202588%_
                                                 _%g202554202592%_))))
                                        (_%g202553202588%_
                                         _%g202554202592%_))))
                                (_%g202553202588%_ _%g202554202592%_))))
                        (_%g202553202588%_ _%g202554202592%_))))
                (let ((_%symbol202571202665%_ (reverse _%symbol202568202618%_))
                      (_%method202572202668%_ (reverse _%method202569202620%_))
                      (_%type-t202573202670%_
                       (reverse _%type-t202570202622%_)))
                  ((lambda (_%L202673%_ _%L202675%_ _%L202676%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202673%_
                                _%L202675%_
                                _%L202676%_))
                             (let ((__tmp208610
                                    (lambda (_%g202692202697%_
                                             _%g202693202700%_
                                             _%g202694202702%_
                                             _%g202695202704%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g202694202702%_
                                                        (cons _%g202693202700%_
                                                              (cons _%g202692202697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g202695202704%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp208610
                                '()
                                _%L202673%_
                                _%L202675%_
                                _%L202676%_)))))
                   _%symbol202571202665%_
                   _%method202572202668%_
                   _%type-t202573202670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202564202611%_
                                           _%target202561202605%_
                                           '()
                                           '()
                                           '()))
                                        (_%g202553202588%_
                                         _%g202554202592%_)))))
                              (_%g202553202588%_ _%g202554202592%_))))
                      (_%g202553202588%_ _%g202554202592%_)))))
          (_%g202552202707%_ _%$stx202549%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx202712%_)
        (let* ((_%g202716202749%_
                (lambda (_%g202717202745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202717202745%_))))
               (_%g202715202863%_
                (lambda (_%g202717202753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202717202753%_))
                      (let ((_%e202721202756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202717202753%_))))
                        (let ((_%hd202722202760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202721202756%_)))
                              (_%tl202723202763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202721202756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202723202763%_))
                              (let ((_%e202724202766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202723202763%_))))
                                (let ((_%hd202725202770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202724202766%_)))
                                      (_%tl202726202773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202724202766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202726202773%_))
                                      (let ((_g208611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202726202773%_
                                                '0))))
                                        (begin
                                          (let ((_g208612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208611_)
                                                       (##vector-length
                                                        _g208611_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208612_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208612_)))
                                          (let ((_%target202727202776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g208611_ 0)))
                                                (_%tl202729202779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g208611_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202729202779%_))
                                                (letrec ((_%loop202730202782%_
                                                          (lambda (_%hd202728202786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol202734202789%_
                           _%method202735202791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202728202786%_))
                        (let ((_%e202731202794%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd202728202786%_))))
                          (let ((_%lp-hd202732202798%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202731202794%_)))
                                (_%lp-tl202733202801%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202731202794%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd202732202798%_))
                                (let ((_%e202738202804%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd202732202798%_))))
                                  (let ((_%hd202739202808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202738202804%_)))
                                        (_%tl202740202811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202738202804%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202740202811%_))
                                        (let ((_%e202741202814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl202740202811%_))))
                                          (let ((_%hd202742202818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202741202814%_)))
                                                (_%tl202743202821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202741202814%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202743202821%_))
                                                (_%loop202730202782%_
                                                 _%lp-tl202733202801%_
                                                 (cons _%hd202742202818%_
                                                       _%symbol202734202789%_)
                                                 (cons _%hd202739202808%_
                                                       _%method202735202791%_))
                                                (_%g202716202749%_
                                                 _%g202717202753%_))))
                                        (_%g202716202749%_
                                         _%g202717202753%_))))
                                (_%g202716202749%_ _%g202717202753%_))))
                        (let ((_%symbol202736202824%_
                               (reverse _%symbol202734202789%_))
                              (_%method202737202827%_
                               (reverse _%method202735202791%_)))
                          ((lambda (_%L202830%_ _%L202832%_ _%L202833%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L202830%_
                                        _%L202832%_))
                                     (let ((__tmp208613
                                            (lambda (_%g202851202855%_
                                                     _%g202852202858%_
                                                     _%g202853202860%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L202833%_
                                                                (cons _%g202852202858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g202851202855%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g202853202860%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp208613
                                        '()
                                        _%L202830%_
                                        _%L202832%_)))))
                           _%symbol202736202824%_
                           _%method202737202827%_
                           _%hd202725202770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop202730202782%_
                                                   _%target202727202776%_
                                                   '()
                                                   '()))
                                                (_%g202716202749%_
                                                 _%g202717202753%_)))))
                                      (_%g202716202749%_ _%g202717202753%_))))
                              (_%g202716202749%_ _%g202717202753%_))))
                      (_%g202716202749%_ _%g202717202753%_)))))
          (_%g202715202863%_ _%$stx202712%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx202868%_)
        (let* ((_%g202872202886%_
                (lambda (_%g202873202882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202873202882%_))))
               (_%g202871202927%_
                (lambda (_%g202873202890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202873202890%_))
                      (let ((_%e202875202893%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202873202890%_))))
                        (let ((_%hd202876202897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202875202893%_)))
                              (_%tl202877202900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202875202893%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202877202900%_))
                              (let ((_%e202878202903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202877202900%_))))
                                (let ((_%hd202879202907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202878202903%_)))
                                      (_%tl202880202910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202878202903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202880202910%_))
                                      ((lambda (_%L202913%_)
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
                                                           (cons _%L202913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202879202907%_)
                                      (_%g202872202886%_ _%g202873202890%_))))
                              (_%g202872202886%_ _%g202873202890%_))))
                      (_%g202872202886%_ _%g202873202890%_)))))
          (_%g202871202927%_ _%$stx202868%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx202931%_)
        (let* ((_%g202935202989%_
                (lambda (_%g202936202985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202936202985%_))))
               (_%g202934203170%_
                (lambda (_%g202936202993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202936202993%_))
                      (let ((_%e202948202996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202936202993%_))))
                        (let ((_%hd202949203000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202948202996%_)))
                              (_%tl202950203003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202948202996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202950203003%_))
                              (let ((_%e202951203006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202950203003%_))))
                                (let ((_%hd202952203010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202951203006%_)))
                                      (_%tl202953203013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202951203006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202953203013%_))
                                      (let ((_%e202954203016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202953203013%_))))
                                        (let ((_%hd202955203020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202954203016%_)))
                                              (_%tl202956203023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202954203016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202956203023%_))
                                              (let ((_%e202957203026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202956203023%_))))
                                                (let ((_%hd202958203030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202957203026%_)))
                                                      (_%tl202959203033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202957203026%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202959203033%_))
                                                      (let ((_%e202960203036%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202959203033%_))))
                (let ((_%hd202961203040%_
                       (let () (declare (not safe)) (##car _%e202960203036%_)))
                      (_%tl202962203043%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202960203036%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202962203043%_))
                      (let ((_%e202963203046%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202962203043%_))))
                        (let ((_%hd202964203050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202963203046%_)))
                              (_%tl202965203053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202963203046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202965203053%_))
                              (let ((_%e202966203056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202965203053%_))))
                                (let ((_%hd202967203060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202966203056%_)))
                                      (_%tl202968203063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202966203056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202968203063%_))
                                      (let ((_%e202969203066%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202968203063%_))))
                                        (let ((_%hd202970203070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202969203066%_)))
                                              (_%tl202971203073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202969203066%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202971203073%_))
                                              (let ((_%e202972203076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202971203073%_))))
                                                (let ((_%hd202973203080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202972203076%_)))
                                                      (_%tl202974203083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202972203076%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202974203083%_))
                                                      (let ((_%e202975203086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202974203083%_))))
                (let ((_%hd202976203090%_
                       (let () (declare (not safe)) (##car _%e202975203086%_)))
                      (_%tl202977203093%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202975203086%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202977203093%_))
                      (let ((_%e202978203096%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202977203093%_))))
                        (let ((_%hd202979203100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202978203096%_)))
                              (_%tl202980203103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202978203096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202980203103%_))
                              (let ((_%e202981203106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202980203103%_))))
                                (let ((_%hd202982203110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202981203106%_)))
                                      (_%tl202983203113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202981203106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202983203113%_))
                                      ((lambda (_%L203116%_
                                                _%L203118%_
                                                _%L203119%_
                                                _%L203120%_
                                                _%L203121%_
                                                _%L203122%_
                                                _%L203123%_
                                                _%L203124%_
                                                _%L203125%_
                                                _%L203126%_
                                                _%L203127%_)
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
                                                           (cons _%L203127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203126%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203125%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203124%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203123%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203122%_ '()))
                                           (cons _%L203121%_
                                                 (cons _%L203120%_
                                                       (cons _%L203119%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203118%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203116%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202982203110%_
                                       _%hd202979203100%_
                                       _%hd202976203090%_
                                       _%hd202973203080%_
                                       _%hd202970203070%_
                                       _%hd202967203060%_
                                       _%hd202964203050%_
                                       _%hd202961203040%_
                                       _%hd202958203030%_
                                       _%hd202955203020%_
                                       _%hd202952203010%_)
                                      (_%g202935202989%_ _%g202936202993%_))))
                              (_%g202935202989%_ _%g202936202993%_))))
                      (_%g202935202989%_ _%g202936202993%_))))
              (_%g202935202989%_ _%g202936202993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202935202989%_
                                               _%g202936202993%_))))
                                      (_%g202935202989%_ _%g202936202993%_))))
                              (_%g202935202989%_ _%g202936202993%_))))
                      (_%g202935202989%_ _%g202936202993%_))))
              (_%g202935202989%_ _%g202936202993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202935202989%_
                                               _%g202936202993%_))))
                                      (_%g202935202989%_ _%g202936202993%_))))
                              (_%g202935202989%_ _%g202936202993%_))))
                      (_%g202935202989%_ _%g202936202993%_)))))
          (_%g202934203170%_ _%$stx202931%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx203174%_)
        (let* ((_%g203178203192%_
                (lambda (_%g203179203188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203179203188%_))))
               (_%g203177203233%_
                (lambda (_%g203179203196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203179203196%_))
                      (let ((_%e203181203199%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203179203196%_))))
                        (let ((_%hd203182203203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203181203199%_)))
                              (_%tl203183203206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203181203199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203183203206%_))
                              (let ((_%e203184203209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203183203206%_))))
                                (let ((_%hd203185203213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203184203209%_)))
                                      (_%tl203186203216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203184203209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203186203216%_))
                                      ((lambda (_%L203219%_)
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
                                                           (cons _%L203219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203185203213%_)
                                      (_%g203178203192%_ _%g203179203196%_))))
                              (_%g203178203192%_ _%g203179203196%_))))
                      (_%g203178203192%_ _%g203179203196%_)))))
          (_%g203177203233%_ _%$stx203174%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx203237%_)
        (let* ((_%g203241203255%_
                (lambda (_%g203242203251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203242203251%_))))
               (_%g203240203296%_
                (lambda (_%g203242203259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203242203259%_))
                      (let ((_%e203244203262%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203242203259%_))))
                        (let ((_%hd203245203266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203244203262%_)))
                              (_%tl203246203269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203244203262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203246203269%_))
                              (let ((_%e203247203272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203246203269%_))))
                                (let ((_%hd203248203276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203247203272%_)))
                                      (_%tl203249203279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203247203272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203249203279%_))
                                      ((lambda (_%L203282%_)
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
                                                           (cons _%L203282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203248203276%_)
                                      (_%g203241203255%_ _%g203242203259%_))))
                              (_%g203241203255%_ _%g203242203259%_))))
                      (_%g203241203255%_ _%g203242203259%_)))))
          (_%g203240203296%_ _%$stx203237%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx203300%_)
        (let* ((_%g203304203326%_
                (lambda (_%g203305203322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203305203322%_))))
               (_%g203303203395%_
                (lambda (_%g203305203330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203305203330%_))
                      (let ((_%e203309203333%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203305203330%_))))
                        (let ((_%hd203310203337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203309203333%_)))
                              (_%tl203311203340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203309203333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203311203340%_))
                              (let ((_%e203312203343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203311203340%_))))
                                (let ((_%hd203313203347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203312203343%_)))
                                      (_%tl203314203350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203312203343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203314203350%_))
                                      (let ((_%e203315203353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203314203350%_))))
                                        (let ((_%hd203316203357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203315203353%_)))
                                              (_%tl203317203360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203315203353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203317203360%_))
                                              (let ((_%e203318203363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203317203360%_))))
                                                (let ((_%hd203319203367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203318203363%_)))
                                                      (_%tl203320203370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203318203363%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203320203370%_))
                                                      ((lambda (_%L203373%_
                                                                _%L203375%_
                                                                _%L203376%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203376%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L203375%_ '()))
                                   (cons _%L203373%_ '())))))
               _%hd203319203367%_
               _%hd203316203357%_
               _%hd203313203347%_)
              (_%g203304203326%_ _%g203305203330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203304203326%_
                                               _%g203305203330%_))))
                                      (_%g203304203326%_ _%g203305203330%_))))
                              (_%g203304203326%_ _%g203305203330%_))))
                      (_%g203304203326%_ _%g203305203330%_)))))
          (_%g203303203395%_ _%$stx203300%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx203399%_)
        (let* ((_%g203403203425%_
                (lambda (_%g203404203421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203404203421%_))))
               (_%g203402203494%_
                (lambda (_%g203404203429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203404203429%_))
                      (let ((_%e203408203432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203404203429%_))))
                        (let ((_%hd203409203436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203408203432%_)))
                              (_%tl203410203439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203408203432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203410203439%_))
                              (let ((_%e203411203442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203410203439%_))))
                                (let ((_%hd203412203446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203411203442%_)))
                                      (_%tl203413203449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203411203442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203413203449%_))
                                      (let ((_%e203414203452%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203413203449%_))))
                                        (let ((_%hd203415203456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203414203452%_)))
                                              (_%tl203416203459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203414203452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203416203459%_))
                                              (let ((_%e203417203462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203416203459%_))))
                                                (let ((_%hd203418203466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203417203462%_)))
                                                      (_%tl203419203469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203417203462%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203419203469%_))
                                                      ((lambda (_%L203472%_
                                                                _%L203474%_
                                                                _%L203475%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203475%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L203474%_ '()))
                                   (cons _%L203472%_ '())))))
               _%hd203418203466%_
               _%hd203415203456%_
               _%hd203412203446%_)
              (_%g203403203425%_ _%g203404203429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203403203425%_
                                               _%g203404203429%_))))
                                      (_%g203403203425%_ _%g203404203429%_))))
                              (_%g203403203425%_ _%g203404203429%_))))
                      (_%g203403203425%_ _%g203404203429%_)))))
          (_%g203402203494%_ _%$stx203399%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx203498%_)
        (let* ((_%g203502203516%_
                (lambda (_%g203503203512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203503203512%_))))
               (_%g203501203557%_
                (lambda (_%g203503203520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203503203520%_))
                      (let ((_%e203505203523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203503203520%_))))
                        (let ((_%hd203506203527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203505203523%_)))
                              (_%tl203507203530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203505203523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203507203530%_))
                              (let ((_%e203508203533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203507203530%_))))
                                (let ((_%hd203509203537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203508203533%_)))
                                      (_%tl203510203540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203508203533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203510203540%_))
                                      ((lambda (_%L203543%_)
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
                                                           (cons _%L203543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203509203537%_)
                                      (_%g203502203516%_ _%g203503203520%_))))
                              (_%g203502203516%_ _%g203503203520%_))))
                      (_%g203502203516%_ _%g203503203520%_)))))
          (_%g203501203557%_ _%$stx203498%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx203561%_)
        (let* ((_%g203565203583%_
                (lambda (_%g203566203579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203566203579%_))))
               (_%g203564203638%_
                (lambda (_%g203566203587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203566203587%_))
                      (let ((_%e203569203590%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203566203587%_))))
                        (let ((_%hd203570203594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203569203590%_)))
                              (_%tl203571203597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203569203590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203571203597%_))
                              (let ((_%e203572203600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203571203597%_))))
                                (let ((_%hd203573203604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203572203600%_)))
                                      (_%tl203574203607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203572203600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203574203607%_))
                                      (let ((_%e203575203610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203574203607%_))))
                                        (let ((_%hd203576203614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203575203610%_)))
                                              (_%tl203577203617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203575203610%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203577203617%_))
                                              ((lambda (_%L203620%_
                                                        _%L203622%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203622%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203620%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203576203614%_
                                               _%hd203573203604%_)
                                              (_%g203565203583%_
                                               _%g203566203587%_))))
                                      (_%g203565203583%_ _%g203566203587%_))))
                              (_%g203565203583%_ _%g203566203587%_))))
                      (_%g203565203583%_ _%g203566203587%_)))))
          (_%g203564203638%_ _%$stx203561%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx203642%_)
        (let* ((_%__stx207984207985%_ _%$stx203642%_)
               (_%g203649203710%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207984207985%_)))))
          (let ((_%__kont207987207988%_
                 (lambda (_%L203948%_ _%L203950%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203950%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203948%_ '()))
                                     '())))))
                (_%__kont207989207990%_
                 (lambda (_%L203887%_ _%L203889%_ _%L203890%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203890%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203889%_ '()))
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
                                 (cons _%L203887%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont207991207992%_
                 (lambda (_%L203811%_ _%L203813%_)
                   (cons _%L203813%_ (cons _%L203811%_ (cons '#f '())))))
                (_%__kont207993207994%_
                 (lambda (_%L203761%_ _%L203763%_ _%L203764%_)
                   (cons _%L203764%_
                         (cons _%L203763%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L203761%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207984207985%_))
                (let ((_%e203653203918%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207984207985%_))))
                  (let ((_%tl203655203925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203653203918%_)))
                        (_%hd203654203922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203653203918%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203655203925%_))
                        (let ((_%e203656203928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203655203925%_))))
                          (let ((_%tl203658203935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203656203928%_)))
                                (_%hd203657203932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203656203928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203658203935%_))
                                (let ((_%e203659203938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203658203935%_))))
                                  (let ((_%tl203661203945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203659203938%_)))
                                        (_%hd203660203942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203659203938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203661203945%_))
                                        (_%__kont207987207988%_
                                         _%hd203660203942%_
                                         _%hd203657203932%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203661203945%_))
                                            (let ((_%e203674203863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203661203945%_))))
                                              (let ((_%tl203676203870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203674203863%_)))
                                                    (_%hd203675203867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203674203863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd203675203867%_))
                                                    (let ((_%e203677203873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203675203867%_))))
                                                      (if (equal? _%e203677203873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203676203870%_))
                      (let ((_%e203678203877%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203676203870%_))))
                        (let ((_%tl203680203884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203678203877%_)))
                              (_%hd203679203881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203678203877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203680203884%_))
                              (_%__kont207989207990%_
                               _%hd203679203881%_
                               _%hd203660203942%_
                               _%hd203657203932%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd203660203942%_))
                                  (let ((_%e203701203747%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203660203942%_))))
                                    (declare (not safe))
                                    (_%g203649203710%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g203649203710%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd203660203942%_))
                          (let ((_%e203701203747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203660203942%_))))
                            (if (equal? _%e203701203747%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl203676203870%_))
                                    (_%__kont207993207994%_
                                     _%hd203675203867%_
                                     _%hd203657203932%_
                                     _%hd203654203922%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g203649203710%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g203649203710%_))))
                          (let () (declare (not safe)) (_%g203649203710%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd203660203942%_))
                      (let ((_%e203701203747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd203660203942%_))))
                        (if (equal? _%e203701203747%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203676203870%_))
                                (_%__kont207993207994%_
                                 _%hd203675203867%_
                                 _%hd203657203932%_
                                 _%hd203654203922%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g203649203710%_)))
                            (let () (declare (not safe)) (_%g203649203710%_))))
                      (let () (declare (not safe)) (_%g203649203710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd203660203942%_))
                                                        (let ((_%e203701203747%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd203660203942%_))))
                  (if (equal? _%e203701203747%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203676203870%_))
                          (_%__kont207993207994%_
                           _%hd203675203867%_
                           _%hd203657203932%_
                           _%hd203654203922%_)
                          (let () (declare (not safe)) (_%g203649203710%_)))
                      (let () (declare (not safe)) (_%g203649203710%_))))
                (let () (declare (not safe)) (_%g203649203710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203660203942%_))
                                                (let ((_%e203701203747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203660203942%_))))
                                                  (declare (not safe))
                                                  (_%g203649203710%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g203649203710%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl203658203935%_))
                                    (_%__kont207991207992%_
                                     _%hd203657203932%_
                                     _%hd203654203922%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g203649203710%_))))))
                        (let () (declare (not safe)) (_%g203649203710%_)))))
                (let () (declare (not safe)) (_%g203649203710%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx203969%_)
        (let* ((_%g203973204002%_
                (lambda (_%g203974203998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203974203998%_))))
               (_%g203972204111%_
                (lambda (_%g203974204006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203974204006%_))
                      (let ((_%e203976204009%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203974204006%_))))
                        (let ((_%hd203977204013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203976204009%_)))
                              (_%tl203978204016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203976204009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203978204016%_))
                              (let ((_g208614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203978204016%_
                                        '0))))
                                (begin
                                  (let ((_g208615_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208614_)
                                               (##vector-length _g208614_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208615_ 2)))
                                        (error "Context expects 2 values"
                                               _g208615_)))
                                  (let ((_%target203979204019%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208614_ 0)))
                                        (_%tl203981204022%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208614_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203981204022%_))
                                        (letrec ((_%loop203982204025%_
                                                  (lambda (_%hd203980204029%_
                                                           _%clause203986204032%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203980204029%_))
                                                        (let ((_%e203983204035%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203980204029%_))))
                  (let ((_%lp-hd203984204039%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203983204035%_)))
                        (_%lp-tl203985204042%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203983204035%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd203984204039%_))
                        (let ((_g208616_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd203984204039%_
                                  '0))))
                          (begin
                            (let ((_g208617_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g208616_)
                                         (##vector-length _g208616_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g208617_ 2)))
                                  (error "Context expects 2 values"
                                         _g208617_)))
                            (let ((_%target203988204045%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g208616_ 0)))
                                  (_%tl203990204048%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g208616_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203990204048%_))
                                  (letrec ((_%loop203991204051%_
                                            (lambda (_%hd203989204055%_
                                                     _%clause203995204058%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203989204055%_))
                                                  (let ((_%e203992204061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd203989204055%_))))
                                                    (let ((_%lp-hd203993204065%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203992204061%_)))
                                                          (_%lp-tl203994204068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203992204061%_))))
                                                      (_%loop203991204051%_
                                                       _%lp-tl203994204068%_
                                                       (cons _%lp-hd203993204065%_
                                                             _%clause203995204058%_))))
                                                  (let ((_%clause203996204071%_
                                                         (reverse _%clause203995204058%_)))
                                                    (_%loop203982204025%_
                                                     _%lp-tl203985204042%_
                                                     (cons _%clause203996204071%_
                                                           _%clause203986204032%_)))))))
                                    (_%loop203991204051%_
                                     _%target203988204045%_
                                     '()))
                                  (_%g203973204002%_ _%g203974204006%_)))))
                        (_%g203973204002%_ _%g203974204006%_))))
                (let ((_%clause203987204075%_
                       (reverse _%clause203986204032%_)))
                  ((lambda (_%L204079%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp208618
                                              (lambda (_%g204094204099%_
                                                       _%g204095204102%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp208619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204096204105%_ _%g204097204108%_)
                             (cons _%g204096204105%_ _%g204097204108%_))))
                      (declare (not safe))
                      (__foldr1 __tmp208619 '() _%g204094204099%_)))
              _%g204095204102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp208618
                                          '()
                                          _%L204079%_)))
                                 '())))
                   _%clause203987204075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203982204025%_
                                           _%target203979204019%_
                                           '()))
                                        (_%g203973204002%_
                                         _%g203974204006%_)))))
                              (_%g203973204002%_ _%g203974204006%_))))
                      (_%g203973204002%_ _%g203974204006%_)))))
          (_%g203972204111%_ _%$stx203969%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204117%_)
        (let* ((_%g204121204139%_
                (lambda (_%g204122204135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204122204135%_))))
               (_%g204120204194%_
                (lambda (_%g204122204143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204122204143%_))
                      (let ((_%e204125204146%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204122204143%_))))
                        (let ((_%hd204126204150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204125204146%_)))
                              (_%tl204127204153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204125204146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204127204153%_))
                              (let ((_%e204128204156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204127204153%_))))
                                (let ((_%hd204129204160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204128204156%_)))
                                      (_%tl204130204163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204128204156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204130204163%_))
                                      (let ((_%e204131204166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204130204163%_))))
                                        (let ((_%hd204132204170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204131204166%_)))
                                              (_%tl204133204173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204131204166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204133204173%_))
                                              ((lambda (_%L204176%_
                                                        _%L204178%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204178%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204176%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204132204170%_
                                               _%hd204129204160%_)
                                              (_%g204121204139%_
                                               _%g204122204143%_))))
                                      (_%g204121204139%_ _%g204122204143%_))))
                              (_%g204121204139%_ _%g204122204143%_))))
                      (_%g204121204139%_ _%g204122204143%_)))))
          (_%g204120204194%_ _%$stx204117%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx204198%_)
        (let* ((_%g204202204220%_
                (lambda (_%g204203204216%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204203204216%_))))
               (_%g204201204275%_
                (lambda (_%g204203204224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204203204224%_))
                      (let ((_%e204206204227%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204203204224%_))))
                        (let ((_%hd204207204231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204206204227%_)))
                              (_%tl204208204234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204206204227%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204208204234%_))
                              (let ((_%e204209204237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204208204234%_))))
                                (let ((_%hd204210204241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204209204237%_)))
                                      (_%tl204211204244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204209204237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204211204244%_))
                                      (let ((_%e204212204247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204211204244%_))))
                                        (let ((_%hd204213204251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204212204247%_)))
                                              (_%tl204214204254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204212204247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204214204254%_))
                                              ((lambda (_%L204257%_
                                                        _%L204259%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204259%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204257%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204213204251%_
                                               _%hd204210204241%_)
                                              (_%g204202204220%_
                                               _%g204203204224%_))))
                                      (_%g204202204220%_ _%g204203204224%_))))
                              (_%g204202204220%_ _%g204203204224%_))))
                      (_%g204202204220%_ _%g204203204224%_)))))
          (_%g204201204275%_ _%$stx204198%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx204279%_)
        (let* ((_%g204283204312%_
                (lambda (_%g204284204308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204284204308%_))))
               (_%g204282204412%_
                (lambda (_%g204284204316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204284204316%_))
                      (let ((_%e204287204319%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204284204316%_))))
                        (let ((_%hd204288204323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204287204319%_)))
                              (_%tl204289204326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204287204319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204289204326%_))
                              (let ((_g208620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204289204326%_
                                        '0))))
                                (begin
                                  (let ((_g208621_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208620_)
                                               (##vector-length _g208620_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208621_ 2)))
                                        (error "Context expects 2 values"
                                               _g208621_)))
                                  (let ((_%target204290204329%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208620_ 0)))
                                        (_%tl204292204332%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208620_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204292204332%_))
                                        (letrec ((_%loop204293204335%_
                                                  (lambda (_%hd204291204339%_
                                                           _%rule204297204342%_
                                                           _%proc204298204344%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204291204339%_))
                                                        (let ((_%e204294204347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204291204339%_))))
                  (let ((_%lp-hd204295204351%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204294204347%_)))
                        (_%lp-tl204296204354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204294204347%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204295204351%_))
                        (let ((_%e204301204357%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204295204351%_))))
                          (let ((_%hd204302204361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204301204357%_)))
                                (_%tl204303204364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204301204357%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204303204364%_))
                                (let ((_%e204304204367%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204303204364%_))))
                                  (let ((_%hd204305204371%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204304204367%_)))
                                        (_%tl204306204374%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204304204367%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204306204374%_))
                                        (_%loop204293204335%_
                                         _%lp-tl204296204354%_
                                         (cons _%hd204305204371%_
                                               _%rule204297204342%_)
                                         (cons _%hd204302204361%_
                                               _%proc204298204344%_))
                                        (_%g204283204312%_
                                         _%g204284204316%_))))
                                (_%g204283204312%_ _%g204284204316%_))))
                        (_%g204283204312%_ _%g204284204316%_))))
                (let ((_%rule204299204377%_ (reverse _%rule204297204342%_))
                      (_%proc204300204380%_ (reverse _%proc204298204344%_)))
                  ((lambda (_%L204383%_ _%L204385%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204383%_
                                _%L204385%_))
                             (let ((__tmp208622
                                    (lambda (_%g204400204404%_
                                             _%g204401204407%_
                                             _%g204402204409%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g204401204407%_
                                                        (cons _%g204400204404%_
                                                              '())))
                                            _%g204402204409%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp208622
                                '()
                                _%L204383%_
                                _%L204385%_)))))
                   _%rule204299204377%_
                   _%proc204300204380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204293204335%_
                                           _%target204290204329%_
                                           '()
                                           '()))
                                        (_%g204283204312%_
                                         _%g204284204316%_)))))
                              (_%g204283204312%_ _%g204284204316%_))))
                      (_%g204283204312%_ _%g204284204316%_)))))
          (_%g204282204412%_ _%$stx204279%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx204417%_)
        (let* ((_%g204421204439%_
                (lambda (_%g204422204435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204422204435%_))))
               (_%g204420204494%_
                (lambda (_%g204422204443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204422204443%_))
                      (let ((_%e204425204446%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204422204443%_))))
                        (let ((_%hd204426204450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204425204446%_)))
                              (_%tl204427204453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204425204446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204427204453%_))
                              (let ((_%e204428204456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204427204453%_))))
                                (let ((_%hd204429204460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204428204456%_)))
                                      (_%tl204430204463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204428204456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204430204463%_))
                                      (let ((_%e204431204466%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204430204463%_))))
                                        (let ((_%hd204432204470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204431204466%_)))
                                              (_%tl204433204473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204431204466%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204433204473%_))
                                              ((lambda (_%L204476%_
                                                        _%L204478%_)
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
                                                   (cons _%L204478%_ '()))
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
                 (cons _%L204476%_ '())))
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
                                   (cons _%L204478%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204432204470%_
                                               _%hd204429204460%_)
                                              (_%g204421204439%_
                                               _%g204422204443%_))))
                                      (_%g204421204439%_ _%g204422204443%_))))
                              (_%g204421204439%_ _%g204422204443%_))))
                      (_%g204421204439%_ _%g204422204443%_)))))
          (_%g204420204494%_ _%$stx204417%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx204498%_)
        (let* ((_%__stx208102208103%_ _%$stx204498%_)
               (_%g204503204528%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208102208103%_)))))
          (let ((_%__kont208105208106%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208107208108%_
                 (lambda (_%L204575%_ _%L204577%_ _%L204578%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L204578%_ (cons _%L204577%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L204575%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208102208103%_))
                (let ((_%e204505204604%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208102208103%_))))
                  (let ((_%tl204507204611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204505204604%_)))
                        (_%hd204506204608%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204505204604%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204507204611%_))
                        (_%__kont208105208106%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204507204611%_))
                            (let ((_%e204514204545%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204507204611%_))))
                              (let ((_%tl204516204552%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204514204545%_)))
                                    (_%hd204515204549%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204514204545%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd204515204549%_))
                                    (let ((_%e204517204555%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd204515204549%_))))
                                      (let ((_%tl204519204562%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204517204555%_)))
                                            (_%hd204518204559%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204517204555%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204519204562%_))
                                            (let ((_%e204520204565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204519204562%_))))
                                              (let ((_%tl204522204572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204520204565%_)))
                                                    (_%hd204521204569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204520204565%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204522204572%_))
                                                    (_%__kont208107208108%_
                                                     _%tl204516204552%_
                                                     _%hd204521204569%_
                                                     _%hd204518204559%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204503204528%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204503204528%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204503204528%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204503204528%_))))))
                (let () (declare (not safe)) (_%g204503204528%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx204622%_)
        (let* ((_%__stx208146208147%_ _%$stx204622%_)
               (_%g204627204658%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208146208147%_)))))
          (let ((_%__kont208149208150%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208151208152%_
                 (lambda (_%L204725%_ _%L204727%_ _%L204728%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L204728%_
                                           (let ((__tmp208623
                                                  (lambda (_%g204748204751%_
                                                           _%g204749204754%_)
                                                    (cons _%g204748204751%_
                                                          _%g204749204754%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp208623
                                              '()
                                              _%L204727%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L204725%_)
                                     '()))))))
            (let ((_%__match208189208190%_
                   (lambda (_%e204635204665%_
                            _%hd204636204669%_
                            _%tl204637204672%_
                            _%e204638204675%_
                            _%hd204639204679%_
                            _%tl204640204682%_
                            _%e204641204685%_
                            _%hd204642204689%_
                            _%tl204643204692%_
                            _%__splice208153208154%_
                            _%target204644204695%_
                            _%tl204646204698%_)
                     (letrec ((_%loop204647204701%_
                               (lambda (_%hd204645204705%_ _%sig204651204708%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd204645204705%_))
                                     (let ((_%e204648204711%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd204645204705%_))))
                                       (let ((_%lp-tl204650204718%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e204648204711%_)))
                                             (_%lp-hd204649204715%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e204648204711%_))))
                                         (_%loop204647204701%_
                                          _%lp-tl204650204718%_
                                          (cons _%lp-hd204649204715%_
                                                _%sig204651204708%_))))
                                     (let ((_%sig204652204721%_
                                            (reverse _%sig204651204708%_)))
                                       (_%__kont208151208152%_
                                        _%tl204640204682%_
                                        _%sig204652204721%_
                                        _%hd204642204689%_))))))
                       (_%loop204647204701%_ _%target204644204695%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208146208147%_))
                  (let ((_%e204629204764%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208146208147%_))))
                    (let ((_%tl204631204771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204629204764%_)))
                          (_%hd204630204768%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204629204764%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204631204771%_))
                          (_%__kont208149208150%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204631204771%_))
                              (let ((_%e204638204675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204631204771%_))))
                                (let ((_%tl204640204682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204638204675%_)))
                                      (_%hd204639204679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204638204675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204639204679%_))
                                      (let ((_%e204641204685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd204639204679%_))))
                                        (let ((_%tl204643204692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204641204685%_)))
                                              (_%hd204642204689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204641204685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204643204692%_))
                                              (let ((_%__splice208153208154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl204643204692%_
                                                        '0))))
                                                (let ((_%tl204646204698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208153208154%_
                                                          '1)))
                                                      (_%target204644204695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208153208154%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204646204698%_))
                                                      (_%__match208189208190%_
                                                       _%e204629204764%_
                                                       _%hd204630204768%_
                                                       _%tl204631204771%_
                                                       _%e204638204675%_
                                                       _%hd204639204679%_
                                                       _%tl204640204682%_
                                                       _%e204641204685%_
                                                       _%hd204642204689%_
                                                       _%tl204643204692%_
                                                       _%__splice208153208154%_
                                                       _%target204644204695%_
                                                       _%tl204646204698%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204627204658%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204627204658%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204627204658%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204627204658%_))))))
                  (let () (declare (not safe)) (_%g204627204658%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx204783%_)
        (let* ((_%__stx208192208193%_ _%$stx204783%_)
               (_%g204788204835%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208192208193%_)))))
          (let ((_%__kont208195208196%_
                 (lambda (_%L204997%_ _%L204999%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L204999%_
                               (let ((__tmp208624
                                      (lambda (_%g205019205022%_
                                               _%g205020205025%_)
                                        (cons _%g205019205022%_
                                              _%g205020205025%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp208624 '() _%L204997%_))))))
                (_%__kont208199208200%_
                 (lambda (_%L204892%_ _%L204894%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L204894%_
                               (let ((__tmp208625
                                      (lambda (_%g204911204914%_
                                               _%g204912204917%_)
                                        (cons _%g204911204914%_
                                              _%g204912204917%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp208625 '() _%L204892%_)))))))
            (let* ((_%__match208259208260%_
                    (lambda (_%e204815204842%_
                             _%hd204816204846%_
                             _%tl204817204849%_
                             _%e204818204852%_
                             _%hd204819204856%_
                             _%tl204820204859%_
                             _%__splice208201208202%_
                             _%target204821204862%_
                             _%tl204823204865%_)
                      (letrec ((_%loop204824204868%_
                                (lambda (_%hd204822204872%_
                                         _%sig204828204875%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204822204872%_))
                                      (let ((_%e204825204878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd204822204872%_))))
                                        (let ((_%lp-tl204827204885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204825204878%_)))
                                              (_%lp-hd204826204882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204825204878%_))))
                                          (_%loop204824204868%_
                                           _%lp-tl204827204885%_
                                           (cons _%lp-hd204826204882%_
                                                 _%sig204828204875%_))))
                                      (let ((_%sig204829204888%_
                                             (reverse _%sig204828204875%_)))
                                        (_%__kont208199208200%_
                                         _%sig204829204888%_
                                         _%hd204819204856%_))))))
                        (_%loop204824204868%_ _%target204821204862%_ '()))))
                   (_%__match208251208252%_
                    (lambda (_%e204815204842%_
                             _%hd204816204846%_
                             _%tl204817204849%_
                             _%e204818204852%_
                             _%hd204819204856%_
                             _%tl204820204859%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl204820204859%_))
                          (let ((_%__splice208201208202%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl204820204859%_
                                    '0))))
                            (let ((_%tl204823204865%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208201208202%_
                                      '1)))
                                  (_%target204821204862%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208201208202%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204823204865%_))
                                  (_%__match208259208260%_
                                   _%e204815204842%_
                                   _%hd204816204846%_
                                   _%tl204817204849%_
                                   _%e204818204852%_
                                   _%hd204819204856%_
                                   _%tl204820204859%_
                                   _%__splice208201208202%_
                                   _%target204821204862%_
                                   _%tl204823204865%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204788204835%_)))))
                          (let () (declare (not safe)) (_%g204788204835%_)))))
                   (_%__match208239208240%_
                    (lambda (_%e204792204927%_
                             _%hd204793204931%_
                             _%tl204794204934%_
                             _%e204795204937%_
                             _%hd204796204941%_
                             _%tl204797204944%_
                             _%e204798204947%_
                             _%hd204799204951%_
                             _%tl204800204954%_
                             _%e204801204957%_
                             _%hd204802204961%_
                             _%tl204803204964%_
                             _%__splice208197208198%_
                             _%target204804204967%_
                             _%tl204806204970%_)
                      (letrec ((_%loop204807204973%_
                                (lambda (_%hd204805204977%_
                                         _%sig204811204980%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204805204977%_))
                                      (let ((_%e204808204983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd204805204977%_))))
                                        (let ((_%lp-tl204810204990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204808204983%_)))
                                              (_%lp-hd204809204987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204808204983%_))))
                                          (_%loop204807204973%_
                                           _%lp-tl204810204990%_
                                           (cons _%lp-hd204809204987%_
                                                 _%sig204811204980%_))))
                                      (let ((_%sig204812204993%_
                                             (reverse _%sig204811204980%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204800204954%_))
                                            (_%__kont208195208196%_
                                             _%sig204812204993%_
                                             _%hd204796204941%_)
                                            (_%__match208251208252%_
                                             _%e204792204927%_
                                             _%hd204793204931%_
                                             _%tl204794204934%_
                                             _%e204795204937%_
                                             _%hd204796204941%_
                                             _%tl204797204944%_)))))))
                        (_%loop204807204973%_ _%target204804204967%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208192208193%_))
                  (let ((_%e204792204927%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208192208193%_))))
                    (let ((_%tl204794204934%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204792204927%_)))
                          (_%hd204793204931%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204792204927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204794204934%_))
                          (let ((_%e204795204937%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204794204934%_))))
                            (let ((_%tl204797204944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204795204937%_)))
                                  (_%hd204796204941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204795204937%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204797204944%_))
                                  (let ((_%e204798204947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204797204944%_))))
                                    (let ((_%tl204800204954%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204798204947%_)))
                                          (_%hd204799204951%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204798204947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd204799204951%_))
                                          (let ((_%e204801204957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd204799204951%_))))
                                            (let ((_%tl204803204964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204801204957%_)))
                                                  (_%hd204802204961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204801204957%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd204802204961%_))
                                                  (if (let ((__tmp208626
                                                             |gxc[1]#_g208627_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp208626
                                                         _%hd204802204961%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl204803204964%_))
                                                          (let ((_%__splice208197208198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl204803204964%_ '0))))
                    (let ((_%tl204806204970%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208197208198%_ '1)))
                          (_%target204804204967%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208197208198%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204806204970%_))
                          (_%__match208239208240%_
                           _%e204792204927%_
                           _%hd204793204931%_
                           _%tl204794204934%_
                           _%e204795204937%_
                           _%hd204796204941%_
                           _%tl204797204944%_
                           _%e204798204947%_
                           _%hd204799204951%_
                           _%tl204800204954%_
                           _%e204801204957%_
                           _%hd204802204961%_
                           _%tl204803204964%_
                           _%__splice208197208198%_
                           _%target204804204967%_
                           _%tl204806204970%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204797204944%_))
                              (let ((_%__splice208201208202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204797204944%_
                                        '0))))
                                (let ((_%tl204823204865%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208201208202%_
                                          '1)))
                                      (_%target204821204862%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208201208202%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204823204865%_))
                                      (_%__match208259208260%_
                                       _%e204792204927%_
                                       _%hd204793204931%_
                                       _%tl204794204934%_
                                       _%e204795204937%_
                                       _%hd204796204941%_
                                       _%tl204797204944%_
                                       _%__splice208201208202%_
                                       _%target204821204862%_
                                       _%tl204823204865%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204788204835%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204788204835%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204797204944%_))
                      (let ((_%__splice208201208202%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl204797204944%_
                                '0))))
                        (let ((_%tl204823204865%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208201208202%_ '1)))
                              (_%target204821204862%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208201208202%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204823204865%_))
                              (_%__match208259208260%_
                               _%e204792204927%_
                               _%hd204793204931%_
                               _%tl204794204934%_
                               _%e204795204937%_
                               _%hd204796204941%_
                               _%tl204797204944%_
                               _%__splice208201208202%_
                               _%target204821204862%_
                               _%tl204823204865%_)
                              (let ()
                                (declare (not safe))
                                (_%g204788204835%_)))))
                      (let () (declare (not safe)) (_%g204788204835%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl204797204944%_))
                  (let ((_%__splice208201208202%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl204797204944%_ '0))))
                    (let ((_%tl204823204865%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208201208202%_ '1)))
                          (_%target204821204862%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208201208202%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204823204865%_))
                          (_%__match208259208260%_
                           _%e204792204927%_
                           _%hd204793204931%_
                           _%tl204794204934%_
                           _%e204795204937%_
                           _%hd204796204941%_
                           _%tl204797204944%_
                           _%__splice208201208202%_
                           _%target204821204862%_
                           _%tl204823204865%_)
                          (let () (declare (not safe)) (_%g204788204835%_)))))
                  (let () (declare (not safe)) (_%g204788204835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204797204944%_))
                                                      (let ((_%__splice208201208202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl204797204944%_ '0))))
                (let ((_%tl204823204865%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208201208202%_ '1)))
                      (_%target204821204862%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208201208202%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204823204865%_))
                      (_%__match208259208260%_
                       _%e204792204927%_
                       _%hd204793204931%_
                       _%tl204794204934%_
                       _%e204795204937%_
                       _%hd204796204941%_
                       _%tl204797204944%_
                       _%__splice208201208202%_
                       _%target204821204862%_
                       _%tl204823204865%_)
                      (let () (declare (not safe)) (_%g204788204835%_)))))
              (let () (declare (not safe)) (_%g204788204835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204797204944%_))
                                              (let ((_%__splice208201208202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl204797204944%_
                                                        '0))))
                                                (let ((_%tl204823204865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208201208202%_
                                                          '1)))
                                                      (_%target204821204862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208201208202%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204823204865%_))
                                                      (_%__match208259208260%_
                                                       _%e204792204927%_
                                                       _%hd204793204931%_
                                                       _%tl204794204934%_
                                                       _%e204795204937%_
                                                       _%hd204796204941%_
                                                       _%tl204797204944%_
                                                       _%__splice208201208202%_
                                                       _%target204821204862%_
                                                       _%tl204823204865%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204788204835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204788204835%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204797204944%_))
                                      (let ((_%__splice208201208202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204797204944%_
                                                '0))))
                                        (let ((_%tl204823204865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208201208202%_
                                                  '1)))
                                              (_%target204821204862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208201208202%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204823204865%_))
                                              (_%__match208259208260%_
                                               _%e204792204927%_
                                               _%hd204793204931%_
                                               _%tl204794204934%_
                                               _%e204795204937%_
                                               _%hd204796204941%_
                                               _%tl204797204944%_
                                               _%__splice208201208202%_
                                               _%target204821204862%_
                                               _%tl204823204865%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204788204835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204788204835%_))))))
                          (let () (declare (not safe)) (_%g204788204835%_)))))
                  (let () (declare (not safe)) (_%g204788204835%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx206182%_ _%id206184%_)
        (let ((_%proc206188%_
               (let ((__tmp208628
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206184%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp208628))))
          (if (procedure? _%proc206188%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx206182%_
                 _%id206184%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx206173%_ _%id206175%_)
        (let ((_%klass206179%_
               (let ((__tmp208629
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206175%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp208629))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass206179%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx206173%_
                 _%id206175%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx205423%_ _%proc205425%_ _%sig205426%_)
        (letrec ((_%signature-arity205428%_
                  (lambda (_%args206105%_)
                    (let _%loop206108%_ ((_%rest206111%_ _%args206105%_)
                                         (_%count206113%_ '0))
                      (let* ((_%rest206114206125%_ _%rest206111%_)
                             (_%E206118206131%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206114206125%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206121206162%_
                               (lambda (_%rest206159%_)
                                 (_%loop206108%_
                                  _%rest206159%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206113%_ '1)))))
                              (_%K206120206151%_ (lambda () _%count206113%_))
                              (_%K206119206139%_
                               (lambda () (cons _%count206113%_ '()))))
                          (let ((_%try-match206116206155%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest206114206125%_))
                                       (_%K206120206151%_)
                                       (_%K206119206139%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest206114206125%_))
                                (let* ((_%tl206123206166%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206114206125%_)))
                                       (_%rest206170%_ _%tl206123206166%_))
                                  (_%K206121206162%_ _%rest206170%_))
                                (_%try-match206116206155%_))))))))
                 (_%make-signature205430%_
                  (lambda (_%args205987%_
                           _%return205989%_
                           _%effect205990%_
                           _%unchecked205991%_)
                    (let ((__tmp208630
                           (lambda (_%g205992205994%_)
                             (|gxc[1]#verify-class!|
                              _%ctx205423%_
                              _%g205992205994%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp208630 _%args205987%_))
                    (|gxc[1]#verify-class!| _%ctx205423%_ _%return205989%_)
                    (if _%unchecked205991%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx205423%_
                         _%unchecked205991%_)
                        '#!void)
                    (let ((_%arity205998%_
                           (_%signature-arity205428%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args205987%_)))))
                      (if _%effect205990%_
                          (let ((_%effect206001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect205990%_))))
                            (if (and (list? _%effect206001%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206001%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx205423%_
                                   _%proc205425%_
                                   _%effect206001%_))))
                          '#!void)
                      (cons _%arity205998%_
                            (cons (let* ((_%g206004206027%_
                                          (lambda (_%g206005206023%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206005206023%_))))
                                         (_%g206003206101%_
                                          (lambda (_%g206005206031%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206005206031%_))
                                                (let ((_%e206010206034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206005206031%_))))
                                                  (let ((_%hd206011206038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206010206034%_)))
                                                        (_%tl206012206041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206010206034%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206012206041%_))
                                                        (let ((_%e206013206044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206012206041%_))))
                  (let ((_%hd206014206048%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206013206044%_)))
                        (_%tl206015206051%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206013206044%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206015206051%_))
                        (let ((_%e206016206054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206015206051%_))))
                          (let ((_%hd206017206058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206016206054%_)))
                                (_%tl206018206061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206016206054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206018206061%_))
                                (let ((_%e206019206064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206018206061%_))))
                                  (let ((_%hd206020206068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206019206064%_)))
                                        (_%tl206021206071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206019206064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206021206071%_))
                                        ((lambda (_%L206074%_
                                                  _%L206076%_
                                                  _%L206077%_
                                                  _%L206078%_)
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
                           (cons _%L206078%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206077%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206076%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206074%_ '()))
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
                                         _%hd206020206068%_
                                         _%hd206017206058%_
                                         _%hd206014206048%_
                                         _%hd206011206038%_)
                                        (_%g206004206027%_
                                         _%g206005206031%_))))
                                (_%g206004206027%_ _%g206005206031%_))))
                        (_%g206004206027%_ _%g206005206031%_))))
                (_%g206004206027%_ _%g206005206031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206004206027%_
                                                 _%g206005206031%_)))))
                                    (_%g206003206101%_
                                     (list _%args205987%_
                                           _%return205989%_
                                           _%effect205990%_
                                           _%unchecked205991%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx205423%_ _%proc205425%_)
          (let* ((_%__stx208270208271%_ _%sig205426%_)
                 (_%g205437205540%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208270208271%_)))))
            (let ((_%__kont208273208274%_
                   (lambda (_%L205968%_ _%L205970%_)
                     (_%make-signature205430%_
                      _%L205970%_
                      _%L205968%_
                      '#f
                      '#f)))
                  (_%__kont208275208276%_
                   (lambda (_%L205919%_ _%L205921%_ _%L205922%_)
                     (_%make-signature205430%_
                      _%L205922%_
                      _%L205921%_
                      _%L205919%_
                      '#f)))
                  (_%__kont208277208278%_
                   (lambda (_%L205843%_ _%L205845%_ _%L205846%_)
                     (_%make-signature205430%_
                      _%L205846%_
                      _%L205845%_
                      _%L205843%_
                      (let ((__tmp208631
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc205425%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp208631)))))
                  (_%__kont208279208280%_
                   (lambda (_%L205749%_ _%L205751%_ _%L205752%_ _%L205753%_)
                     (_%make-signature205430%_
                      _%L205753%_
                      _%L205752%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L205749%_)))))
                  (_%__kont208281208282%_
                   (lambda (_%L205656%_ _%L205658%_)
                     (_%make-signature205430%_
                      _%L205658%_
                      _%L205656%_
                      '#f
                      (let ((__tmp208632
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc205425%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp208632)))))
                  (_%__kont208283208284%_
                   (lambda (_%L205591%_ _%L205593%_ _%L205594%_)
                     (_%make-signature205430%_
                      _%L205594%_
                      _%L205593%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L205591%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208270208271%_))
                  (let ((_%e205441205948%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208270208271%_))))
                    (let ((_%tl205443205955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205441205948%_)))
                          (_%hd205442205952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205441205948%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205443205955%_))
                          (let ((_%e205444205958%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205443205955%_))))
                            (let ((_%tl205446205965%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205444205958%_)))
                                  (_%hd205445205962%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205444205958%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205446205965%_))
                                  (_%__kont208273208274%_
                                   _%hd205445205962%_
                                   _%hd205442205952%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205446205965%_))
                                      (let ((_%e205456205895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205446205965%_))))
                                        (let ((_%tl205458205902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205456205895%_)))
                                              (_%hd205457205899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205456205895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd205457205899%_))
                                              (let ((_%e205459205905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd205457205899%_))))
                                                (if (equal? _%e205459205905%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl205458205902%_))
                                                        (let ((_%e205460205909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl205458205902%_))))
                  (let ((_%tl205462205916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205460205909%_)))
                        (_%hd205461205913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205460205909%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205462205916%_))
                        (_%__kont208275208276%_
                         _%hd205461205913%_
                         _%hd205445205962%_
                         _%hd205442205952%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205462205916%_))
                            (let ((_%e205479205829%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205462205916%_))))
                              (let ((_%tl205481205836%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205479205829%_)))
                                    (_%hd205480205833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205479205829%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd205480205833%_))
                                    (let ((_%e205482205839%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd205480205833%_))))
                                      (if (equal? _%e205482205839%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205481205836%_))
                                              (_%__kont208277208278%_
                                               _%hd205461205913%_
                                               _%hd205445205962%_
                                               _%hd205442205952%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205481205836%_))
                                                  (let ((_%e205504205739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205481205836%_))))
                                                    (let ((_%tl205506205746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205504205739%_)))
                                                          (_%hd205505205743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205504205739%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205506205746%_))
                                                          (_%__kont208279208280%_
                                                           _%hd205505205743%_
                                                           _%hd205461205913%_
                                                           _%hd205445205962%_
                                                           _%hd205442205952%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205437205540%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205437205540%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g205437205540%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205437205540%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205437205540%_))))))
                (let () (declare (not safe)) (_%g205437205540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e205459205905%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205458205902%_))
                                                            (_%__kont208281208282%_
                                                             _%hd205445205962%_
                                                             _%hd205442205952%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl205458205902%_))
                        (let ((_%e205532205581%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205458205902%_))))
                          (let ((_%tl205534205588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205532205581%_)))
                                (_%hd205533205585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205532205581%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205534205588%_))
                                (_%__kont208283208284%_
                                 _%hd205533205585%_
                                 _%hd205445205962%_
                                 _%hd205442205952%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205437205540%_)))))
                        (let () (declare (not safe)) (_%g205437205540%_))))
                (let () (declare (not safe)) (_%g205437205540%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205437205540%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205437205540%_))))))
                          (let () (declare (not safe)) (_%g205437205540%_)))))
                  (let () (declare (not safe)) (_%g205437205540%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205034%_)
        (let* ((_%g205037205117%_
                (lambda (_%g205038205113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205038205113%_))))
               (_%g205036205419%_
                (lambda (_%g205038205121%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205038205121%_))
                      (let ((_%e205044205124%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205038205121%_))))
                        (let ((_%hd205045205128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205044205124%_)))
                              (_%tl205046205131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205044205124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205046205131%_))
                              (let ((_%e205047205134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205046205131%_))))
                                (let ((_%hd205048205138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205047205134%_)))
                                      (_%tl205049205141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205047205134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205048205138%_))
                                      (let ((_%e205050205144%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205048205138%_))))
                                        (if (equal? _%e205050205144%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205049205141%_))
                                                (let ((_%e205051205148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205049205141%_))))
                                                  (let ((_%hd205052205152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205051205148%_)))
                                                        (_%tl205053205155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205051205148%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205052205152%_))
                                                        (let ((_%e205054205158%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205052205152%_))))
                  (let ((_%hd205055205162%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205054205158%_)))
                        (_%tl205056205165%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205054205158%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205055205162%_))
                        (if (let ((__tmp208633 |gxc[1]#_g208634_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp208633
                               _%hd205055205162%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205056205165%_))
                                (let ((_%e205057205168%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205056205165%_))))
                                  (let ((_%hd205058205172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205057205168%_)))
                                        (_%tl205059205175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205057205168%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205059205175%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205053205155%_))
                                            (let ((_%e205060205178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205053205155%_))))
                                              (let ((_%hd205061205182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205060205178%_)))
                                                    (_%tl205062205185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205060205178%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205061205182%_))
                                                    (let ((_%e205063205188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205061205182%_))))
                                                      (if (equal? _%e205063205188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205062205185%_))
                      (let ((_%e205064205192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205062205185%_))))
                        (let ((_%hd205065205196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205064205192%_)))
                              (_%tl205066205199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205064205192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205065205196%_))
                              (let ((_%e205067205202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205065205196%_))))
                                (let ((_%hd205068205206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205067205202%_)))
                                      (_%tl205069205209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205067205202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205068205206%_))
                                      (if (let ((__tmp208635
                                                 |gxc[1]#_g208636_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp208635
                                             _%hd205068205206%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205069205209%_))
                                              (let ((_%e205070205212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205069205209%_))))
                                                (let ((_%hd205071205216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205070205212%_)))
                                                      (_%tl205072205219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205070205212%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205072205219%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205066205199%_))
                                                          (let ((_%e205073205222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205066205199%_))))
                    (let ((_%hd205074205226%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205073205222%_)))
                          (_%tl205075205229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205073205222%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205074205226%_))
                          (let ((_%e205076205232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205074205226%_))))
                            (if (equal? _%e205076205232%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205075205229%_))
                                    (let ((_%e205077205236%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205075205229%_))))
                                      (let ((_%hd205078205240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205077205236%_)))
                                            (_%tl205079205243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205077205236%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205078205240%_))
                                            (let ((_%e205080205246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205078205240%_))))
                                              (let ((_%hd205081205250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205080205246%_)))
                                                    (_%tl205082205253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205080205246%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205081205250%_))
                                                    (if (let ((__tmp208637
                                                               |gxc[1]#_g208638_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp208637
                                                           _%hd205081205250%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205082205253%_))
                                                            (let ((_%e205083205256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205082205253%_))))
                      (let ((_%hd205084205260%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205083205256%_)))
                            (_%tl205085205263%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205083205256%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205085205263%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205079205243%_))
                                (let ((_%e205086205266%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205079205243%_))))
                                  (let ((_%hd205087205270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205086205266%_)))
                                        (_%tl205088205273%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205086205266%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205087205270%_))
                                        (let ((_%e205089205276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205087205270%_))))
                                          (if (equal? _%e205089205276%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205088205273%_))
                                                  (let ((_%e205090205280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205088205273%_))))
                                                    (let ((_%hd205091205284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205090205280%_)))
                                                          (_%tl205092205287%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205090205280%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205091205284%_))
                                                          (let ((_%e205093205290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205091205284%_))))
                    (let ((_%hd205094205294%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205093205290%_)))
                          (_%tl205095205297%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205093205290%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205094205294%_))
                          (if (let ((__tmp208639 |gxc[1]#_g208640_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp208639
                                 _%hd205094205294%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205095205297%_))
                                  (let ((_%e205096205300%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205095205297%_))))
                                    (let ((_%hd205097205304%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205096205300%_)))
                                          (_%tl205098205307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205096205300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205098205307%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205092205287%_))
                                              (let ((_%e205099205310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205092205287%_))))
                                                (let ((_%hd205100205314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205099205310%_)))
                                                      (_%tl205101205317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205099205310%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205100205314%_))
                                                      (let ((_%e205102205320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205100205314%_))))
                (if (equal? _%e205102205320%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205101205317%_))
                        (let ((_%e205103205324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205101205317%_))))
                          (let ((_%hd205104205328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205103205324%_)))
                                (_%tl205105205331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205103205324%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205104205328%_))
                                (let ((_%e205106205334%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205104205328%_))))
                                  (let ((_%hd205107205338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205106205334%_)))
                                        (_%tl205108205341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205106205334%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205107205338%_))
                                        (if (let ((__tmp208641
                                                   |gxc[1]#_g208642_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp208641
                                               _%hd205107205338%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205108205341%_))
                                                (let ((_%e205109205344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205108205341%_))))
                                                  (let ((_%hd205110205348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205109205344%_)))
                                                        (_%tl205111205351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205109205344%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205111205351%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205105205331%_))
                                                            ((lambda (_%L205354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L205356%_
                              _%L205357%_
                              _%L205358%_
                              _%L205359%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L205356%_))
                           (cons _%L205356%_
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
                       (cons _%L205358%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205354%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205110205348%_
                     _%hd205097205304%_
                     _%hd205084205260%_
                     _%hd205071205216%_
                     _%hd205058205172%_)
                    (_%g205037205117%_ _%g205038205121%_))
                (_%g205037205117%_ _%g205038205121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205037205117%_
                                                 _%g205038205121%_))
                                            (_%g205037205117%_
                                             _%g205038205121%_))
                                        (_%g205037205117%_
                                         _%g205038205121%_))))
                                (_%g205037205117%_ _%g205038205121%_))))
                        (_%g205037205117%_ _%g205038205121%_))
                    (_%g205037205117%_ _%g205038205121%_)))
              (_%g205037205117%_ _%g205038205121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205037205117%_
                                               _%g205038205121%_))
                                          (_%g205037205117%_
                                           _%g205038205121%_))))
                                  (_%g205037205117%_ _%g205038205121%_))
                              (_%g205037205117%_ _%g205038205121%_))
                          (_%g205037205117%_ _%g205038205121%_))))
                  (_%g205037205117%_ _%g205038205121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205037205117%_
                                                   _%g205038205121%_))
                                              (_%g205037205117%_
                                               _%g205038205121%_)))
                                        (_%g205037205117%_
                                         _%g205038205121%_))))
                                (_%g205037205117%_ _%g205038205121%_))
                            (_%g205037205117%_ _%g205038205121%_))))
                    (_%g205037205117%_ _%g205038205121%_))
                (_%g205037205117%_ _%g205038205121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205037205117%_
                                                     _%g205038205121%_))))
                                            (_%g205037205117%_
                                             _%g205038205121%_))))
                                    (_%g205037205117%_ _%g205038205121%_))
                                (_%g205037205117%_ _%g205038205121%_)))
                          (_%g205037205117%_ _%g205038205121%_))))
                  (_%g205037205117%_ _%g205038205121%_))
              (_%g205037205117%_ _%g205038205121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205037205117%_
                                               _%g205038205121%_))
                                          (_%g205037205117%_
                                           _%g205038205121%_))
                                      (_%g205037205117%_ _%g205038205121%_))))
                              (_%g205037205117%_ _%g205038205121%_))))
                      (_%g205037205117%_ _%g205038205121%_))
                  (_%g205037205117%_ _%g205038205121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205037205117%_
                                                     _%g205038205121%_))))
                                            (_%g205037205117%_
                                             _%g205038205121%_))
                                        (_%g205037205117%_
                                         _%g205038205121%_))))
                                (_%g205037205117%_ _%g205038205121%_))
                            (_%g205037205117%_ _%g205038205121%_))
                        (_%g205037205117%_ _%g205038205121%_))))
                (_%g205037205117%_ _%g205038205121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205037205117%_
                                                 _%g205038205121%_))
                                            (_%g205037205117%_
                                             _%g205038205121%_)))
                                      (_%g205037205117%_ _%g205038205121%_))))
                              (_%g205037205117%_ _%g205038205121%_))))
                      (_%g205037205117%_ _%g205038205121%_)))))
          (_%g205036205419%_ _%sig205034%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx206191%_)
        (let* ((_%g206194206212%_
                (lambda (_%g206195206208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206195206208%_))))
               (_%g206193206267%_
                (lambda (_%g206195206216%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206195206216%_))
                      (let ((_%e206198206219%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206195206216%_))))
                        (let ((_%hd206199206223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206198206219%_)))
                              (_%tl206200206226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206198206219%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206200206226%_))
                              (let ((_%e206201206229%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206200206226%_))))
                                (let ((_%hd206202206233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206201206229%_)))
                                      (_%tl206203206236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206201206229%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206203206236%_))
                                      (let ((_%e206204206239%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206203206236%_))))
                                        (let ((_%hd206205206243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206204206239%_)))
                                              (_%tl206206206246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206204206239%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206206206246%_))
                                              ((lambda (_%L206249%_
                                                        _%L206251%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206251%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206249%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx206191%_
                                                        _%L206251%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx206191%_
                                                        _%L206249%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L206251%_
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
                                                   (cons _%L206249%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206194206212%_
                                                      _%g206195206216%_)))
                                               _%hd206205206243%_
                                               _%hd206202206233%_)
                                              (_%g206194206212%_
                                               _%g206195206216%_))))
                                      (_%g206194206212%_ _%g206195206216%_))))
                              (_%g206194206212%_ _%g206195206216%_))))
                      (_%g206194206212%_ _%g206195206216%_)))))
          (_%g206193206267%_ _%stx206191%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx206271%_)
        (let* ((_%g206274206298%_
                (lambda (_%g206275206294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206275206294%_))))
               (_%g206273206581%_
                (lambda (_%g206275206302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206275206302%_))
                      (let ((_%e206278206305%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206275206302%_))))
                        (let ((_%hd206279206309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206278206305%_)))
                              (_%tl206280206312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206278206305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206280206312%_))
                              (let ((_%e206281206315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206280206312%_))))
                                (let ((_%hd206282206319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206281206315%_)))
                                      (_%tl206283206322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206281206315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206283206322%_))
                                      (let ((_g208643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206283206322%_
                                                '0))))
                                        (begin
                                          (let ((_g208644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208643_)
                                                       (##vector-length
                                                        _g208643_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208644_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208644_)))
                                          (let ((_%target206284206325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g208643_ 0)))
                                                (_%tl206286206328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g208643_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206286206328%_))
                                                (letrec ((_%loop206287206331%_
                                                          (lambda (_%hd206285206335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature206291206338%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd206285206335%_))
                        (let ((_%e206288206341%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd206285206335%_))))
                          (let ((_%lp-hd206289206345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206288206341%_)))
                                (_%lp-tl206290206348%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206288206341%_))))
                            (_%loop206287206331%_
                             _%lp-tl206290206348%_
                             (cons _%lp-hd206289206345%_
                                   _%signature206291206338%_))))
                        (let ((_%signature206292206351%_
                               (reverse _%signature206291206338%_)))
                          ((lambda (_%L206355%_ _%L206357%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L206357%_))
                                 (let* ((_%g206375206390%_
                                         (lambda (_%g206376206386%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206376206386%_))))
                                        (_%g206374206569%_
                                         (lambda (_%g206376206394%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g206376206394%_))
                                               (let ((_%e206379206397%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g206376206394%_))))
                                                 (let ((_%hd206380206401%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206379206397%_)))
                                                       (_%tl206381206404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206379206397%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206381206404%_))
                                                       (let ((_%e206382206407%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206381206404%_))))
                 (let ((_%hd206383206411%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206382206407%_)))
                       (_%tl206384206414%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206382206407%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl206384206414%_))
                       ((lambda (_%L206417%_ _%L206419%_)
                          (let* ((_%g206435206443%_
                                  (lambda (_%g206436206439%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g206436206439%_))))
                                 (_%g206434206565%_
                                  (lambda (_%g206436206447%_)
                                    ((lambda (_%L206450%_)
                                       (let* ((_%unchecked206463%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L206417%_))
                                              (_%g206466206474%_
                                               (lambda (_%g206467206470%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g206467206470%_))))
                                              (_%g206465206497%_
                                               (lambda (_%g206467206478%_)
                                                 ((lambda (_%L206481%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L206450%_
                                                                (cons _%L206481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g206467206478%_))))
                                         (_%g206465206497%_
                                          (if _%unchecked206463%_
                                              (let* ((_%g206501206516%_
                                                      (lambda (_%g206502206512%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g206502206512%_))))
                                                     (_%g206500206561%_
                                                      (lambda (_%g206502206520%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g206502206520%_))
                                                            (let ((_%e206505206523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g206502206520%_))))
                      (let ((_%hd206506206527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206505206523%_)))
                            (_%tl206507206530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206505206523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206507206530%_))
                            (let ((_%e206508206533%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206507206530%_))))
                              (let ((_%hd206509206537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206508206533%_)))
                                    (_%tl206510206540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206508206533%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl206510206540%_))
                                    ((lambda (_%L206543%_ _%L206545%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L206545%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206419%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L206543%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd206509206537%_
                                     _%hd206506206527%_)
                                    (_%g206501206516%_ _%g206502206520%_))))
                            (_%g206501206516%_ _%g206502206520%_))))
                    (_%g206501206516%_ _%g206502206520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206500206561%_
                                                 _%unchecked206463%_))
                                              '(begin)))))
                                     _%g206436206447%_))))
                            (_%g206434206565%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L206357%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L206419%_ '()))
                   (cons '#f (cons 'signature: (cons _%L206417%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd206383206411%_
                        _%hd206380206401%_)
                       (_%g206375206390%_ _%g206376206394%_))))
               (_%g206375206390%_ _%g206376206394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206375206390%_
                                                _%g206376206394%_)))))
                                   (_%g206374206569%_
                                    (|gxc[1]#parse-signature|
                                     _%stx206271%_
                                     _%L206357%_
                                     (let ((__tmp208645
                                            (lambda (_%g206572206575%_
                                                     _%g206573206578%_)
                                              (cons _%g206572206575%_
                                                    _%g206573206578%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp208645
                                        '()
                                        _%L206355%_)))))
                                 (_%g206274206298%_ _%g206275206302%_)))
                           _%signature206292206351%_
                           _%hd206282206319%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop206287206331%_
                                                   _%target206284206325%_
                                                   '()))
                                                (_%g206274206298%_
                                                 _%g206275206302%_)))))
                                      (_%g206274206298%_ _%g206275206302%_))))
                              (_%g206274206298%_ _%g206275206302%_))))
                      (_%g206274206298%_ _%g206275206302%_)))))
          (_%g206273206581%_ _%stx206271%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx206586%_)
        (let* ((_%g206589206613%_
                (lambda (_%g206590206609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206590206609%_))))
               (_%g206588207496%_
                (lambda (_%g206590206617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206590206617%_))
                      (let ((_%e206593206620%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206590206617%_))))
                        (let ((_%hd206594206624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206593206620%_)))
                              (_%tl206595206627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206593206620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206595206627%_))
                              (let ((_%e206596206630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206595206627%_))))
                                (let ((_%hd206597206634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206596206630%_)))
                                      (_%tl206598206637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206596206630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206598206637%_))
                                      (let ((_g208646_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206598206637%_
                                                '0))))
                                        (begin
                                          (let ((_g208647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208646_)
                                                       (##vector-length
                                                        _g208646_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208647_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208647_)))
                                          (let ((_%target206599206640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g208646_ 0)))
                                                (_%tl206601206643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g208646_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206601206643%_))
                                                (letrec ((_%loop206602206646%_
                                                          (lambda (_%hd206600206650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature206606206653%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd206600206650%_))
                        (let ((_%e206603206656%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd206600206650%_))))
                          (let ((_%lp-hd206604206660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206603206656%_)))
                                (_%lp-tl206605206663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206603206656%_))))
                            (_%loop206602206646%_
                             _%lp-tl206605206663%_
                             (cons _%lp-hd206604206660%_
                                   _%case-signature206606206653%_))))
                        (let ((_%case-signature206607206666%_
                               (reverse _%case-signature206606206653%_)))
                          ((lambda (_%L206670%_ _%L206672%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L206672%_))
                                 (let* ((_%signatures206703%_
                                         (map (lambda (_%g206689206691%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx206586%_
                                                 _%L206672%_
                                                 _%g206689206691%_))
                                              (let ((__tmp208648
                                                     (lambda (_%g206694206697%_
                                                              _%g206695206700%_)
                                                       (cons _%g206694206697%_
                                                             _%g206695206700%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp208648
                                                 '()
                                                 _%L206670%_))))
                                        (_%g206706206732%_
                                         (lambda (_%g206707206728%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206707206728%_))))
                                        (_%g206705207492%_
                                         (lambda (_%g206707206736%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g206707206736%_))
                                               (let ((_g208649_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g206707206736%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g208650_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g208649_)
                        (##vector-length _g208649_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g208650_ 2)))
                 (error "Context expects 2 values" _g208650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target206710206739%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g208649_
                                                             0)))
                                                         (_%tl206712206742%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g208649_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206712206742%_))
                                                         (letrec ((_%loop206713206745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd206711206749%_
                                    _%sig206717206752%_
                                    _%arity206718206754%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206711206749%_))
                                 (let ((_%e206714206757%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206711206749%_))))
                                   (let ((_%lp-hd206715206761%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206714206757%_)))
                                         (_%lp-tl206716206764%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206714206757%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd206715206761%_))
                                         (let ((_%e206721206767%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd206715206761%_))))
                                           (let ((_%hd206722206771%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e206721206767%_)))
                                                 (_%tl206723206774%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e206721206767%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206723206774%_))
                                                 (let ((_%e206724206777%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206723206774%_))))
                                                   (let ((_%hd206725206781%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206724206777%_)))
                                                         (_%tl206726206784%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206724206777%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206726206784%_))
                                                         (_%loop206713206745%_
                                                          _%lp-tl206716206764%_
                                                          (cons _%hd206725206781%_
                                                                _%sig206717206752%_)
                                                          (cons _%hd206722206771%_
                                                                _%arity206718206754%_))
                                                         (_%g206706206732%_
                                                          _%g206707206736%_))))
                                                 (_%g206706206732%_
                                                  _%g206707206736%_))))
                                         (_%g206706206732%_
                                          _%g206707206736%_))))
                                 (let ((_%sig206719206787%_
                                        (reverse _%sig206717206752%_))
                                       (_%arity206720206790%_
                                        (reverse _%arity206718206754%_)))
                                   ((lambda (_%L206793%_ _%L206795%_)
                                      (let* ((_%g206812206820%_
                                              (lambda (_%g206813206816%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g206813206816%_))))
                                             (_%g206811207477%_
                                              (lambda (_%g206813206824%_)
                                                ((lambda (_%L206827%_)
                                                   (let* ((_%g206840206848%_
                                                           (lambda (_%g206841206844%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g206841206844%_))))
                  (_%g206839206870%_
                   (lambda (_%g206841206852%_)
                     ((lambda (_%L206855%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L206827%_ (cons _%L206855%_ '()))))
                      _%g206841206852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206839206870%_
                                                      (let ((_g208651_
                                                             (let _%loop206874%_ ((_%rest206877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures206703%_)
                                          (_%unchecked-proc206879%_ '#f)
                                          (_%unchecked-clauses206880%_ '()))
                       (let* ((_%rest206881206889%_ _%rest206877%_)
                              (_%else206883206901%_
                               (lambda ()
                                 (values _%unchecked-proc206879%_
                                         (reverse!
                                          _%unchecked-clauses206880%_))))
                              (_%K206885207342%_
                               (lambda (_%rest206905%_ _%hd206907%_)
                                 (let* ((_%g206909206996%_
                                         (lambda (_%g206910206992%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206910206992%_))))
                                        (_%g206908207338%_
                                         (lambda (_%g206910207000%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g206910207000%_))
                                               (let ((_%e206917207003%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g206910207000%_))))
                                                 (let ((_%hd206918207007%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206917207003%_)))
                                                       (_%tl206919207010%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206917207003%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206919207010%_))
                                                       (let ((_%e206920207013%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206919207010%_))))
                 (let ((_%hd206921207017%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206920207013%_)))
                       (_%tl206922207020%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206920207013%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd206921207017%_))
                       (let ((_%e206923207023%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd206921207017%_))))
                         (let ((_%hd206924207027%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206923207023%_)))
                               (_%tl206925207030%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206923207023%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl206925207030%_))
                               (let ((_%e206926207033%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl206925207030%_))))
                                 (let ((_%hd206927207037%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206926207033%_)))
                                       (_%tl206928207040%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206926207033%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd206927207037%_))
                                       (let ((_%e206929207043%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd206927207037%_))))
                                         (if (equal? _%e206929207043%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206928207040%_))
                                                 (let ((_%e206930207047%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206928207040%_))))
                                                   (let ((_%hd206931207051%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206930207047%_)))
                                                         (_%tl206932207054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206930207047%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd206931207051%_))
                                                         (let ((_%e206933207057%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd206931207051%_))))
                   (let ((_%hd206934207061%_
                          (let ()
                            (declare (not safe))
                            (##car _%e206933207057%_)))
                         (_%tl206935207064%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e206933207057%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd206934207061%_))
                         (if (let ((__tmp208653 |gxc[1]#_g208654_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp208653
                                _%hd206934207061%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206935207064%_))
                                 (let ((_%e206936207067%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206935207064%_))))
                                   (let ((_%hd206937207071%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206936207067%_)))
                                         (_%tl206938207074%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206936207067%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl206938207074%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl206932207054%_))
                                             (let ((_%e206939207077%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl206932207054%_))))
                                               (let ((_%hd206940207081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206939207077%_)))
                                                     (_%tl206941207084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206939207077%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd206940207081%_))
                                                     (let ((_%e206942207087%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd206940207081%_))))
                                                       (if (equal? _%e206942207087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl206941207084%_))
                       (let ((_%e206943207091%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl206941207084%_))))
                         (let ((_%hd206944207095%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206943207091%_)))
                               (_%tl206945207098%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206943207091%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd206944207095%_))
                               (let ((_%e206946207101%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd206944207095%_))))
                                 (let ((_%hd206947207105%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206946207101%_)))
                                       (_%tl206948207108%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206946207101%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd206947207105%_))
                                       (if (let ((__tmp208655
                                                  |gxc[1]#_g208656_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp208655
                                              _%hd206947207105%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206948207108%_))
                                               (let ((_%e206949207111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206948207108%_))))
                                                 (let ((_%hd206950207115%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206949207111%_)))
                                                       (_%tl206951207118%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206949207111%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl206951207118%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl206945207098%_))
                                                           (let ((_%e206952207121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl206945207098%_))))
                     (let ((_%hd206953207125%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206952207121%_)))
                           (_%tl206954207128%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206952207121%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd206953207125%_))
                           (let ((_%e206955207131%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd206953207125%_))))
                             (if (equal? _%e206955207131%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl206954207128%_))
                                     (let ((_%e206956207135%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl206954207128%_))))
                                       (let ((_%hd206957207139%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206956207135%_)))
                                             (_%tl206958207142%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206956207135%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd206957207139%_))
                                             (let ((_%e206959207145%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd206957207139%_))))
                                               (let ((_%hd206960207149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206959207145%_)))
                                                     (_%tl206961207152%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206959207145%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd206960207149%_))
                                                     (if (let ((__tmp208657
                                                                |gxc[1]#_g208658_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp208657
                                                            _%hd206960207149%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl206961207152%_))
                     (let ((_%e206962207155%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl206961207152%_))))
                       (let ((_%hd206963207159%_
                              (let ()
                                (declare (not safe))
                                (##car _%e206962207155%_)))
                             (_%tl206964207162%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e206962207155%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl206964207162%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206958207142%_))
                                 (let ((_%e206965207165%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206958207142%_))))
                                   (let ((_%hd206966207169%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206965207165%_)))
                                         (_%tl206967207172%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206965207165%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd206966207169%_))
                                         (let ((_%e206968207175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd206966207169%_))))
                                           (if (equal? _%e206968207175%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl206967207172%_))
                                                   (let ((_%e206969207179%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl206967207172%_))))
                                                     (let ((_%hd206970207183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e206969207179%_)))
                                                           (_%tl206971207186%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e206969207179%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd206970207183%_))
                                                           (let ((_%e206972207189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd206970207183%_))))
                     (let ((_%hd206973207193%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206972207189%_)))
                           (_%tl206974207196%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206972207189%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd206973207193%_))
                           (if (let ((__tmp208659 |gxc[1]#_g208660_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp208659
                                  _%hd206973207193%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl206974207196%_))
                                   (let ((_%e206975207199%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl206974207196%_))))
                                     (let ((_%hd206976207203%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e206975207199%_)))
                                           (_%tl206977207206%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e206975207199%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl206977207206%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206971207186%_))
                                               (let ((_%e206978207209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206971207186%_))))
                                                 (let ((_%hd206979207213%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206978207209%_)))
                                                       (_%tl206980207216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206978207209%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd206979207213%_))
                                                       (let ((_%e206981207219%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd206979207213%_))))
                 (if (equal? _%e206981207219%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl206980207216%_))
                         (let ((_%e206982207223%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl206980207216%_))))
                           (let ((_%hd206983207227%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e206982207223%_)))
                                 (_%tl206984207230%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e206982207223%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206983207227%_))
                                 (let ((_%e206985207233%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206983207227%_))))
                                   (let ((_%hd206986207237%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206985207233%_)))
                                         (_%tl206987207240%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206985207233%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd206986207237%_))
                                         (if (let ((__tmp208661
                                                    |gxc[1]#_g208662_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp208661
                                                _%hd206986207237%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206987207240%_))
                                                 (let ((_%e206988207243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206987207240%_))))
                                                   (let ((_%hd206989207247%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206988207243%_)))
                                                         (_%tl206990207250%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206988207243%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206990207250%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl206984207230%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl206922207020%_))
                         ((lambda (_%L207253%_
                                   _%L207255%_
                                   _%L207256%_
                                   _%L207257%_
                                   _%L207258%_
                                   _%L207259%_)
                            (let ((_%clause207330%_
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
                                                     (cons _%L207259%_ '()))
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
                                                 (cons _%L207257%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207253%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked207332%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L207255%_))))
                              (_%loop206874%_
                               _%rest206905%_
                               (let ((_%$e207334%_ _%unchecked207332%_))
                                 (if _%$e207334%_
                                     _%$e207334%_
                                     _%unchecked-proc206879%_))
                               (cons _%clause207330%_
                                     _%unchecked-clauses206880%_))))
                          _%hd206989207247%_
                          _%hd206976207203%_
                          _%hd206963207159%_
                          _%hd206950207115%_
                          _%hd206937207071%_
                          _%hd206918207007%_)
                         (_%g206909206996%_ _%g206910207000%_))
                     (_%g206909206996%_ _%g206910207000%_))
                 (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g206909206996%_
                                                  _%g206910207000%_))
                                             (_%g206909206996%_
                                              _%g206910207000%_))
                                         (_%g206909206996%_
                                          _%g206910207000%_))))
                                 (_%g206909206996%_ _%g206910207000%_))))
                         (_%g206909206996%_ _%g206910207000%_))
                     (_%g206909206996%_ _%g206910207000%_)))
               (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206909206996%_
                                                _%g206910207000%_))
                                           (_%g206909206996%_
                                            _%g206910207000%_))))
                                   (_%g206909206996%_ _%g206910207000%_))
                               (_%g206909206996%_ _%g206910207000%_))
                           (_%g206909206996%_ _%g206910207000%_))))
                   (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g206909206996%_
                                                    _%g206910207000%_))
                                               (_%g206909206996%_
                                                _%g206910207000%_)))
                                         (_%g206909206996%_
                                          _%g206910207000%_))))
                                 (_%g206909206996%_ _%g206910207000%_))
                             (_%g206909206996%_ _%g206910207000%_))))
                     (_%g206909206996%_ _%g206910207000%_))
                 (_%g206909206996%_ _%g206910207000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206909206996%_
                                                      _%g206910207000%_))))
                                             (_%g206909206996%_
                                              _%g206910207000%_))))
                                     (_%g206909206996%_ _%g206910207000%_))
                                 (_%g206909206996%_ _%g206910207000%_)))
                           (_%g206909206996%_ _%g206910207000%_))))
                   (_%g206909206996%_ _%g206910207000%_))
               (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206909206996%_
                                                _%g206910207000%_))
                                           (_%g206909206996%_
                                            _%g206910207000%_))
                                       (_%g206909206996%_ _%g206910207000%_))))
                               (_%g206909206996%_ _%g206910207000%_))))
                       (_%g206909206996%_ _%g206910207000%_))
                   (_%g206909206996%_ _%g206910207000%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206909206996%_
                                                      _%g206910207000%_))))
                                             (_%g206909206996%_
                                              _%g206910207000%_))
                                         (_%g206909206996%_
                                          _%g206910207000%_))))
                                 (_%g206909206996%_ _%g206910207000%_))
                             (_%g206909206996%_ _%g206910207000%_))
                         (_%g206909206996%_ _%g206910207000%_))))
                 (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g206909206996%_
                                                  _%g206910207000%_))
                                             (_%g206909206996%_
                                              _%g206910207000%_)))
                                       (_%g206909206996%_ _%g206910207000%_))))
                               (_%g206909206996%_ _%g206910207000%_))))
                       (_%g206909206996%_ _%g206910207000%_))))
               (_%g206909206996%_ _%g206910207000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206909206996%_
                                                _%g206910207000%_)))))
                                   (_%g206908207338%_ _%hd206907%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest206881206889%_))
                             (let ((_%hd206886207346%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest206881206889%_)))
                                   (_%tl206887207349%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest206881206889%_))))
                               (let* ((_%hd207352%_ _%hd206886207346%_)
                                      (_%rest207355%_ _%tl206887207349%_))
                                 (_%K206885207342%_
                                  _%rest207355%_
                                  _%hd207352%_)))
                             (_%else206883206901%_))))))
                (begin
                  (let ((_g208652_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g208651_)
                               (##vector-length _g208651_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g208652_ 2)))
                        (error "Context expects 2 values" _g208652_)))
                  (let ((_%unchecked-proc207358%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g208651_ 0)))
                        (_%unchecked-clauses207360%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g208651_ 1))))
                    (if _%unchecked-proc207358%_
                        (let* ((_%g207362207386%_
                                (lambda (_%g207363207382%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g207363207382%_))))
                               (_%g207361207473%_
                                (lambda (_%g207363207390%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g207363207390%_))
                                      (let ((_%e207366207393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g207363207390%_))))
                                        (let ((_%hd207367207397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207366207393%_)))
                                              (_%tl207368207400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207366207393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207368207400%_))
                                              (let ((_%e207369207403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl207368207400%_))))
                                                (let ((_%hd207370207407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207369207403%_)))
                                                      (_%tl207371207410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207369207403%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd207370207407%_))
                                                      (let ((_g208663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd207370207407%_ '0))))
                (begin
                  (let ((_g208664_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g208663_)
                               (##vector-length _g208663_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g208664_ 2)))
                        (error "Context expects 2 values" _g208664_)))
                  (let ((_%target207372207413%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g208663_ 0)))
                        (_%tl207374207416%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g208663_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207374207416%_))
                        (letrec ((_%loop207375207419%_
                                  (lambda (_%hd207373207423%_
                                           _%clause207379207426%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd207373207423%_))
                                        (let ((_%e207376207429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd207373207423%_))))
                                          (let ((_%lp-hd207377207433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207376207429%_)))
                                                (_%lp-tl207378207436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207376207429%_))))
                                            (_%loop207375207419%_
                                             _%lp-tl207378207436%_
                                             (cons _%lp-hd207377207433%_
                                                   _%clause207379207426%_))))
                                        (let ((_%clause207380207439%_
                                               (reverse _%clause207379207426%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207371207410%_))
                                              ((lambda (_%L207443%_
                                                        _%L207445%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L207445%_
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
                                             (let ((__tmp208665
                                                    (lambda (_%g207464207467%_
                                                             _%g207465207470%_)
                                                      (cons _%g207464207467%_
                                                            _%g207465207470%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp208665
                                                '()
                                                _%L207443%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause207380207439%_
                                               _%hd207367207397%_)
                                              (_%g207362207386%_
                                               _%g207363207390%_)))))))
                          (_%loop207375207419%_ _%target207372207413%_ '()))
                        (_%g207362207386%_ _%g207363207390%_)))))
              (_%g207362207386%_ _%g207363207390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207362207386%_
                                               _%g207363207390%_))))
                                      (_%g207362207386%_ _%g207363207390%_)))))
                          (_%g207361207473%_
                           (list _%unchecked-proc207358%_
                                 _%unchecked-clauses207360%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g206813206824%_))))
                                        (_%g206811207477%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L206672%_
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
                                          _%L206793%_
                                          _%L206795%_))
                                       (let ((__tmp208666
                                              (lambda (_%g207480207484%_
                                                       _%g207481207487%_
                                                       _%g207482207489%_)
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
                                (cons _%g207481207487%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g207480207484%_ '())))))
              _%g207482207489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp208666
                                          '()
                                          _%L206793%_
                                          _%L206795%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig206719206787%_
                                    _%arity206720206790%_))))))
                   (_%loop206713206745%_ _%target206710206739%_ '() '()))
                 (_%g206706206732%_ _%g206707206736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206706206732%_
                                                _%g206707206736%_)))))
                                   (_%g206705207492%_ _%signatures206703%_))
                                 (_%g206589206613%_ _%g206590206617%_)))
                           _%case-signature206607206666%_
                           _%hd206597206634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop206602206646%_
                                                   _%target206599206640%_
                                                   '()))
                                                (_%g206589206613%_
                                                 _%g206590206617%_)))))
                                      (_%g206589206613%_ _%g206590206617%_))))
                              (_%g206589206613%_ _%g206590206617%_))))
                      (_%g206589206613%_ _%g206590206617%_)))))
          (_%g206588207496%_ _%stx206586%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx207504%_)
        (let* ((_%__stx208486208487%_ _%$stx207504%_)
               (_%g207510207570%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208486208487%_)))))
          (let ((_%__kont208489208490%_
                 (lambda (_%L207792%_ _%L207794%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207794%_ '()))
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
                                                       (cons _%L207794%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207792%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont208491208492%_
                 (lambda (_%L207717%_ _%L207719%_ _%L207720%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207720%_ '()))
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
                                                       (cons _%L207720%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207719%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L207717%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont208493208494%_
                 (lambda (_%L207631%_ _%L207633%_ _%L207634%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207634%_ '()))
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
                                                       (cons _%L207634%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207633%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L207631%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208486208487%_))
                (let ((_%e207514207748%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208486208487%_))))
                  (let ((_%tl207516207755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207514207748%_)))
                        (_%hd207515207752%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207514207748%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207516207755%_))
                        (let ((_%e207517207758%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207516207755%_))))
                          (let ((_%tl207519207765%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207517207758%_)))
                                (_%hd207518207762%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207517207758%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd207518207762%_))
                                (let ((_%e207520207768%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207518207762%_))))
                                  (if (equal? _%e207520207768%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207519207765%_))
                                          (let ((_%e207521207772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl207519207765%_))))
                                            (let ((_%tl207523207779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207521207772%_)))
                                                  (_%hd207522207776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207521207772%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207523207779%_))
                                                  (let ((_%e207524207782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207523207779%_))))
                                                    (let ((_%tl207526207789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207524207782%_)))
                                                          (_%hd207525207786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207524207782%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207526207789%_))
                                                          (_%__kont208489208490%_
                                                           _%hd207525207786%_
                                                           _%hd207522207776%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207510207570%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207510207570%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207510207570%_)))
                                      (if (equal? _%e207520207768%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207519207765%_))
                                              (let ((_%e207537207687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl207519207765%_))))
                                                (let ((_%tl207539207694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207537207687%_)))
                                                      (_%hd207538207691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207537207687%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl207539207694%_))
                                                      (let ((_%e207540207697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl207539207694%_))))
                (let ((_%tl207542207704%_
                       (let () (declare (not safe)) (##cdr _%e207540207697%_)))
                      (_%hd207541207701%_
                       (let ()
                         (declare (not safe))
                         (##car _%e207540207697%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl207542207704%_))
                      (let ((_%e207543207707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl207542207704%_))))
                        (let ((_%tl207545207714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207543207707%_)))
                              (_%hd207544207711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207543207707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207545207714%_))
                              (_%__kont208491208492%_
                               _%hd207544207711%_
                               _%hd207541207701%_
                               _%hd207538207691%_)
                              (let ()
                                (declare (not safe))
                                (_%g207510207570%_)))))
                      (let () (declare (not safe)) (_%g207510207570%_)))))
              (let () (declare (not safe)) (_%g207510207570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207510207570%_)))
                                          (if (equal? _%e207520207768%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207519207765%_))
                                                  (let ((_%e207556207601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207519207765%_))))
                                                    (let ((_%tl207558207608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207556207601%_)))
                                                          (_%hd207557207605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207556207601%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl207558207608%_))
                                                          (let ((_%e207559207611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl207558207608%_))))
                    (let ((_%tl207561207618%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207559207611%_)))
                          (_%hd207560207615%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207559207611%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207561207618%_))
                          (let ((_%e207562207621%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207561207618%_))))
                            (let ((_%tl207564207628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207562207621%_)))
                                  (_%hd207563207625%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207562207621%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207564207628%_))
                                  (_%__kont208493208494%_
                                   _%hd207563207625%_
                                   _%hd207560207615%_
                                   _%hd207557207605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g207510207570%_)))))
                          (let () (declare (not safe)) (_%g207510207570%_)))))
                  (let () (declare (not safe)) (_%g207510207570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207510207570%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g207510207570%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g207510207570%_)))))
                        (let () (declare (not safe)) (_%g207510207570%_)))))
                (let () (declare (not safe)) (_%g207510207570%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx207816%_)
        (let* ((_%g207820207840%_
                (lambda (_%g207821207836%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207821207836%_))))
               (_%g207819207911%_
                (lambda (_%g207821207844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207821207844%_))
                      (let ((_%e207823207847%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207821207844%_))))
                        (let ((_%hd207824207851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207823207847%_)))
                              (_%tl207825207854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207823207847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207825207854%_))
                              (let ((_g208667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207825207854%_
                                        '0))))
                                (begin
                                  (let ((_g208668_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208667_)
                                               (##vector-length _g208667_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208668_ 2)))
                                        (error "Context expects 2 values"
                                               _g208668_)))
                                  (let ((_%target207826207857%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208667_ 0)))
                                        (_%tl207828207860%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g208667_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207828207860%_))
                                        (letrec ((_%loop207829207863%_
                                                  (lambda (_%hd207827207867%_
                                                           _%decl207833207870%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207827207867%_))
                                                        (let ((_%e207830207873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd207827207867%_))))
                  (let ((_%lp-hd207831207877%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207830207873%_)))
                        (_%lp-tl207832207880%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207830207873%_))))
                    (_%loop207829207863%_
                     _%lp-tl207832207880%_
                     (cons _%lp-hd207831207877%_ _%decl207833207870%_))))
                (let ((_%decl207834207883%_ (reverse _%decl207833207870%_)))
                  ((lambda (_%L207887%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp208669
                                  (lambda (_%g207902207905%_ _%g207903207908%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g207902207905%_)
                                          _%g207903207908%_))))
                             (declare (not safe))
                             (__foldr1 __tmp208669 '() _%L207887%_))))
                   _%decl207834207883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207829207863%_
                                           _%target207826207857%_
                                           '()))
                                        (_%g207820207840%_
                                         _%g207821207844%_)))))
                              (_%g207820207840%_ _%g207821207844%_))))
                      (_%g207820207840%_ _%g207821207844%_)))))
          (_%g207819207911%_ _%$stx207816%_))))))
